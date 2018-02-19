/** -*- C -*-
 * @file
 *
 * @brief Battery management API
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

#include <avr/io.h>
#include <avr/eeprom.h>
#include <avr/interrupt.h>

#include "config.h"
#include "battery.h"

void battery_sample_status_start()
{
   DDRB &= ~(1<<PB0);
   
   ADMUX = (1<<REFS1)|(1<<REFS0)|(1<<MUX2)|(1<<MUX1)|(1<<MUX0);
   ADCSRA = (1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0);
   ADCSRA = (1<<ADEN)|(1<<ADSC);
}

int battery_sample_wait(float *voltage)
{
   while((ADCSRA & (1<<ADSC)) != 0);

   uint8_t vlow = ADCL;
   uint8_t vhigh = ADCH;

   *voltage = ((float)((vhigh << 8)|vlow)) / 0b10000000000 * 5.4;
   return PINB & (1<<PB0);
}
