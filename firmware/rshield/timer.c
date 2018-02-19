/** -*- C -*-
 * @file
 *
 * @brief Timer counter
 *
 * Copyright (c) 2014-2018 Dimitry Kloper <kloper@users.sf.net>. 
 * All rights reserved.
 *
 * @page License
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 * 
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the
 *    distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 * The views and conclusions contained in the software and documentation
 * are those of the authors and should not be interpreted as representing
 * official policies, either expressed or implied, of the Pato Project.
 */

#include <string.h>
#include <stdint.h>

#include <avr/eeprom.h>
#include <avr/interrupt.h>

#include "config.h"
#include "timer.h"

static uint32_t g_geiger_counter = 0;
static uint32_t g_msec_counter = 0;

ISR(TIMER2_COMPA_vect)
{
   g_msec_counter += 2;
   
   if( g_msec_counter % 1000 == 0 ) {
      volatile uint16_t geiger_counter;
      
      TCCR1B = 0;
      geiger_counter = (TCNT1H << 8) | TCNT1L;
      TCNT1H = 0;
      TCNT1L = 0;
      TCCR1B = 6; /* Clock source from T1 */
      
      g_geiger_counter += geiger_counter;

#if defined(DEBUG_TIMER_GPIO)
      PINB |= 1<<PB1;
#endif      
   }
}

void geiger_counter_init(void)
{
   DDRD &= ~(1<<PD5);
   PORTD &= ~(1<<PD5);

#if defined(DEBUG_TIMER_GPIO)
   DDRB |= (1<<PB1);
   PORTB &= ~(1<<PB1);
#endif
   
   TCCR1B = 0;   
   TCCR1A = 0;
   TCNT1H = 0;
   TCNT1L = 0;
   TIMSK1 = 0;
   TCCR1B = 6; /* Clock source from T1 */

   TCCR2B = 0;   
   TCCR2A = 1<<WGM21; /* CTC mode. Count down from OCR2A */
   TCNT2 = 0;
   OCR2A = 249;
   TIMSK2 |= 1<<OCIE2A;
   TCCR2B = 4; /* Clock source from Clk_io/64 */   
}

void geiger_counter_get(volatile uint32_t *counter, volatile uint32_t *msec)
{
   TCCR2B = 0;
   *counter = g_geiger_counter;
   *msec = g_msec_counter;
   TCCR2B = 4; /* Clock source from Clk_io/64 */  
}


