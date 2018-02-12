EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:rshield-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1005 860  1460 940 
U 5A75314C
F0 "power" 60
F1 "power.sch" 60
F2 "ON_CHARGE" O R 2465 1580 60 
F3 "+5V" O R 2465 1345 60 
$EndSheet
$Sheet
S 3065 950  1485 925 
U 5A759DD9
F0 "logic" 60
F1 "logic.sch" 60
F2 "ON_CHARGE" I L 3065 1585 60 
F3 "+5V" I L 3065 1350 60 
$EndSheet
Wire Wire Line
	2465 1350 2465 1345
Wire Wire Line
	2465 1580 3065 1580
Wire Wire Line
	3065 1580 3065 1585
$Comp
L SPST SW2
U 1 1 5A78D773
P 2760 700
F 0 "SW2" H 2760 800 50  0000 C CNN
F 1 "SPST" H 2760 600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 2760 700 50  0001 C CNN
F 3 "" H 2760 700 50  0000 C CNN
	1    2760 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2260 700  2260 805 
Wire Wire Line
	2260 805  2535 805 
Wire Wire Line
	2535 805  2535 1350
Wire Wire Line
	2535 1350 2465 1350
Wire Wire Line
	3260 700  3260 805 
Wire Wire Line
	3260 805  2980 805 
Wire Wire Line
	2980 805  2980 1350
Wire Wire Line
	2980 1350 3065 1350
$EndSCHEMATC
