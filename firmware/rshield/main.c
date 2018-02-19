/** -*- C -*-
 * @file
 *
 * @brief Main file for UV-Timer
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
#include <avr/sleep.h>

#include "config.h"
#include "hd44780.h"
#include "print.h"
#include "timer.h"
#include "battery.h"

int main(int argc, char *argv[])
{
   uint8_t reset_value = 0;
   
   reset_value = eeprom_read_byte(&g_rshield_config.hd44780_initfunc);
   
   hd44780_reset(reset_value);
   
   hd44780_ir_write(HD44780_CMD_DISPLAY         |
        	    HD44780_CMD_DISPLAY_ON      |
        	    HD44780_CMD_DISPLAY_CURS_ON |
        	    HD44780_CMD_DISPLAY_CURS_BLINK );
   hd44780_wait_busy();
   
   hd44780_ir_write(HD44780_CMD_EMS |
        	    HD44780_CMD_EMS_INCR);
   hd44780_wait_busy();

   geiger_counter_init();

   set_sleep_mode(SLEEP_MODE_IDLE);
   sleep_enable();
   
   sei();

   hd44780_print_reset();
   hd44780_printf("Radiation Shield\nkloper@github");
   
   volatile uint32_t counter, start_msec, end_msec;
   geiger_counter_get(&counter, &start_msec);
   end_msec = start_msec;
   
   while(end_msec - start_msec < 1500) {
      geiger_counter_get(&counter, &end_msec);
      sleep_cpu();
   }
   
   uint32_t last_minute[60] = {0};
   uint32_t last_update = 0;
   int index, prev_index, next_index;
   
   while(1) {
      volatile uint32_t msec;
      
      geiger_counter_get(&counter, &msec);

      index = (msec / 1000) % 60;
      prev_index = (index + 60 - 1) % 60;
      next_index = (index + 1) % 60;
      
      last_minute[index]  = counter;

      if (msec - last_update >= 500) {
         uint32_t delta_s = last_minute[index] - last_minute[prev_index];
         uint32_t delta_m = last_minute[index] - last_minute[next_index];
         float  sieverts = delta_m / 123.147;
         hd44780_printf("\fCP M:%lu S:%lu\n%.3fuSv/h",
                        delta_m, delta_s, sieverts);
         last_update = msec;

         battery_sample_status_start();
         sleep_cpu();         
         float voltage = 0;
         int on_charge = battery_sample_wait(&voltage);
         
         hd44780_printf(" %c%.1fV", on_charge ? 'C': 'B', voltage);         
      } else {      
         sleep_cpu();
      }
   }
   return 0;
}

