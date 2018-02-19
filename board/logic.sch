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
Sheet 3 3
Title "Timer based on Arduino Pro Mini "
Date "2016-09-15"
Rev "v0.2"
Comp "Dimitry Kloper"
Comment1 "kloper@users.sf.net"
Comment2 "https://github.com/kloper/uv-timer"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L POT RV1
U 1 1 5A759FEF
P 9775 900
F 0 "RV1" H 9775 820 50  0000 C CNN
F 1 "POT" H 9775 900 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_PV36W" H 9775 900 50  0001 C CNN
F 3 "" H 9775 900 50  0000 C CNN
	1    9775 900 
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5A759FF3
P 1700 6040
F 0 "R13" V 1780 6040 50  0000 C CNN
F 1 "3.6K" V 1700 6040 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1630 6040 50  0001 C CNN
F 3 "" H 1700 6040 50  0000 C CNN
	1    1700 6040
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5A759FF5
P 2675 6965
F 0 "C6" H 2700 7065 50  0000 L CNN
F 1 "104pF" H 2700 6865 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2713 6815 50  0001 C CNN
F 3 "" H 2675 6965 50  0000 C CNN
	1    2675 6965
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5A759FF6
P 1700 6965
F 0 "C5" H 1725 7065 50  0000 L CNN
F 1 "104pF" H 1725 6865 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1738 6815 50  0001 C CNN
F 3 "" H 1700 6965 50  0000 C CNN
	1    1700 6965
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5A759FF7
P 1425 6965
F 0 "C4" H 1450 7065 50  0000 L CNN
F 1 "104pF" H 1450 6865 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1463 6815 50  0001 C CNN
F 3 "" H 1425 6965 50  0000 C CNN
	1    1425 6965
	1    0    0    -1  
$EndComp
$Comp
L CONN_HD44780 P13
U 1 1 5A759FF8
P 10625 1475
F 0 "P13" H 10625 2325 50  0000 C CNN
F 1 "CONN_HD44780" V 10725 1475 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x16_Pitch2.54mm" H 10625 1475 50  0001 C CNN
F 3 "" H 10625 1475 50  0000 C CNN
	1    10625 1475
	1    0    0    -1  
$EndComp
$Comp
L CONN_SPI P7
U 1 1 5A75A004
P 8575 900
F 0 "P7" H 8575 1100 50  0000 C CNN
F 1 "CONN_SPI" H 8575 700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 8575 -300 50  0001 C CNN
F 3 "" H 8575 -300 50  0000 C CNN
	1    8575 900 
	1    0    0    -1  
$EndComp
Text Label 8000 1000 0    60   ~ 0
~RESET
Text Label 9225 1000 0    60   ~ 0
GND
Text Label 9225 900  0    60   ~ 0
MOSI
Text Label 8000 900  0    60   ~ 0
SCK
Text Label 8000 800  0    60   ~ 0
MISO
Text Label 10150 725  0    60   ~ 0
GND
Text Label 10150 825  0    60   ~ 0
+5V
Text Label 10150 1025 0    60   ~ 0
RS
Text Label 10150 1125 0    60   ~ 0
RW
Text Label 10150 1225 0    60   ~ 0
EN
Text Label 10150 1725 0    60   ~ 0
DB4
Text Label 10150 1825 0    60   ~ 0
DB5
Text Label 10150 1925 0    60   ~ 0
DB6
Text Label 10150 2025 0    60   ~ 0
DB7
$Comp
L R R16
U 1 1 5A75A007
P 10150 2425
F 0 "R16" V 10230 2425 50  0000 C CNN
F 1 "47" V 10150 2425 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10080 2425 50  0001 C CNN
F 3 "" H 10150 2425 50  0000 C CNN
	1    10150 2425
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5A75A008
P 9775 1150
F 0 "#PWR018" H 9775 900 50  0001 C CNN
F 1 "GND" H 9775 1000 50  0000 C CNN
F 2 "" H 9775 1150 50  0000 C CNN
F 3 "" H 9775 1150 50  0000 C CNN
	1    9775 1150
	1    0    0    -1  
$EndComp
Text Label 9600 675  0    60   ~ 0
+5V
$Comp
L R R12
U 1 1 5A75A009
P 1425 6040
F 0 "R12" V 1505 6040 50  0000 C CNN
F 1 "3.6K" V 1425 6040 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1355 6040 50  0001 C CNN
F 3 "" H 1425 6040 50  0000 C CNN
	1    1425 6040
	1    0    0    -1  
$EndComp
Text Label 1450 5740 0    60   ~ 0
+5V
Text Label 1125 6440 0    60   ~ 0
ROTA
Text Label 1120 6640 0    60   ~ 0
ROTB
$Comp
L GND #PWR019
U 1 1 5A75A00A
P 1425 7240
F 0 "#PWR019" H 1425 6990 50  0001 C CNN
F 1 "GND" H 1425 7090 50  0000 C CNN
F 2 "" H 1425 7240 50  0000 C CNN
F 3 "" H 1425 7240 50  0000 C CNN
	1    1425 7240
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5A75A00B
P 1700 7240
F 0 "#PWR020" H 1700 6990 50  0001 C CNN
F 1 "GND" H 1700 7090 50  0000 C CNN
F 2 "" H 1700 7240 50  0000 C CNN
F 3 "" H 1700 7240 50  0000 C CNN
	1    1700 7240
	1    0    0    -1  
$EndComp
Text Label 2400 6440 0    60   ~ 0
ROTP
$Comp
L GND #PWR021
U 1 1 5A75A00C
P 2675 7215
F 0 "#PWR021" H 2675 6965 50  0001 C CNN
F 1 "GND" H 2675 7065 50  0000 C CNN
F 2 "" H 2675 7215 50  0000 C CNN
F 3 "" H 2675 7215 50  0000 C CNN
	1    2675 7215
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5A75A00D
P 2675 6040
F 0 "R14" V 2755 6040 50  0000 C CNN
F 1 "3.6K" V 2675 6040 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2605 6040 50  0001 C CNN
F 3 "" H 2675 6040 50  0000 C CNN
	1    2675 6040
	1    0    0    -1  
$EndComp
Text Label 9225 800  0    60   ~ 0
+5V
Text Label 10150 2675 0    60   ~ 0
+5V
$Comp
L CONN_01X01 P9
U 1 1 5A75A00F
P 9600 3075
F 0 "P9" H 9600 3175 50  0000 C CNN
F 1 "TP_GND" V 9700 3075 50  0000 C CNN
F 2 "Connect:1pin" H 9600 3075 50  0001 C CNN
F 3 "" H 9600 3075 50  0000 C CNN
	1    9600 3075
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P11
U 1 1 5A75A012
P 10430 3045
F 0 "P11" H 10430 3145 50  0000 C CNN
F 1 "TP_DB7" V 10530 3045 50  0000 C CNN
F 2 "Connect:1pin" H 10430 3045 50  0001 C CNN
F 3 "" H 10430 3045 50  0000 C CNN
	1    10430 3045
	1    0    0    -1  
$EndComp
Text Label 9225 3075 0    60   ~ 0
GND
Text Label 10030 3045 0    60   ~ 0
DB7
$Comp
L CONN_01X01 P10
U 1 1 5A75A014
P 9600 3450
F 0 "P10" H 9600 3550 50  0000 C CNN
F 1 "TP_ROTA" V 9700 3450 50  0000 C CNN
F 2 "Connect:1pin" H 9600 3450 50  0001 C CNN
F 3 "" H 9600 3450 50  0000 C CNN
	1    9600 3450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P12
U 1 1 5A75A015
P 10450 3450
F 0 "P12" H 10450 3550 50  0000 C CNN
F 1 "TP_ROTB" V 10550 3450 50  0000 C CNN
F 2 "Connect:1pin" H 10450 3450 50  0001 C CNN
F 3 "" H 10450 3450 50  0000 C CNN
	1    10450 3450
	1    0    0    -1  
$EndComp
Text Label 9125 3450 0    60   ~ 0
ROTA
Text Label 9900 3450 0    60   ~ 0
ROTB
Text Label 10200 2225 0    60   ~ 0
GND
Text Notes 8950 2650 0    60   ~ 0
Optional resistor. \nCan be shorted if the \ndisplay does not need \ncurrent limit for \nbackground light.
NoConn ~ 10425 1325
NoConn ~ 10425 1425
NoConn ~ 10425 1525
NoConn ~ 10425 1625
$Comp
L GND #PWR022
U 1 1 5A761710
P 1620 4310
F 0 "#PWR022" H 1620 4060 50  0001 C CNN
F 1 "GND" H 1620 4160 50  0000 C CNN
F 2 "" H 1620 4310 50  0000 C CNN
F 3 "" H 1620 4310 50  0000 C CNN
	1    1620 4310
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 5A7620DC
P 4720 2530
F 0 "Y1" H 4720 2680 50  0000 C CNN
F 1 "8MHz Crystal" V 4490 2555 50  0000 C CNN
F 2 "Crystals:Resonator-2pin_w10.0mm_h5.0mm" H 4720 2530 50  0001 C CNN
F 3 "" H 4720 2530 50  0000 C CNN
	1    4720 2530
	0    -1   -1   0   
$EndComp
$Comp
L R R20
U 1 1 5A762A1F
P 4300 2535
F 0 "R20" V 4380 2535 50  0000 C CNN
F 1 "1M" V 4300 2535 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4230 2535 50  0001 C CNN
F 3 "" H 4300 2535 50  0000 C CNN
	1    4300 2535
	-1   0    0    1   
$EndComp
$Comp
L C C9
U 1 1 5A762C25
P 5305 2150
F 0 "C9" H 5330 2250 50  0000 L CNN
F 1 "22pF" H 5330 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5343 2000 50  0001 C CNN
F 3 "" H 5305 2150 50  0000 C CNN
	1    5305 2150
	-1   0    0    1   
$EndComp
$Comp
L C C8
U 1 1 5A762CF0
P 5045 2150
F 0 "C8" H 5070 2250 50  0000 L CNN
F 1 "22pF" H 5070 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5083 2000 50  0001 C CNN
F 3 "" H 5045 2150 50  0000 C CNN
	1    5045 2150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR023
U 1 1 5A76418D
P 5170 1935
F 0 "#PWR023" H 5170 1685 50  0001 C CNN
F 1 "GND" H 5170 1785 50  0000 C CNN
F 2 "" H 5170 1935 50  0000 C CNN
F 3 "" H 5170 1935 50  0000 C CNN
	1    5170 1935
	-1   0    0    1   
$EndComp
Text Label 8325 1655 2    60   ~ 0
ROTP
Text Label 8325 1555 2    60   ~ 0
ROTB
Text Label 8325 1455 2    60   ~ 0
ROTA
NoConn ~ 8825 1555
Text Label 8825 1455 0    60   ~ 0
+5V
Text Label 8825 1655 0    60   ~ 0
GND
$Comp
L CONN_02X03 P8
U 1 1 5A75FED4
P 8575 1555
F 0 "P8" H 8575 1755 50  0000 C CNN
F 1 "CONN_ROT" H 8575 1355 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 8575 355 50  0001 C CNN
F 3 "" H 8575 355 50  0000 C CNN
	1    8575 1555
	1    0    0    -1  
$EndComp
Text Label 3680 3330 0    60   ~ 0
~RESET
$Comp
L R R19
U 1 1 5A767F7A
P 1170 950
F 0 "R19" V 1250 950 50  0000 C CNN
F 1 "10K" V 1170 950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1100 950 50  0001 C CNN
F 3 "" H 1170 950 50  0000 C CNN
	1    1170 950 
	1    0    0    -1  
$EndComp
Text Label 1170 800  2    60   ~ 0
+5V
Text Label 940  1160 2    60   ~ 0
~RESET
Text Label 3890 2180 2    60   ~ 0
MOSI
Text Label 3890 2280 2    60   ~ 0
MISO
Text Label 3890 2380 2    60   ~ 0
SCK
Text Label 3985 3680 2    60   ~ 0
RS
Text Label 3980 3580 2    60   ~ 0
RW
Text Label 3985 3480 2    60   ~ 0
EN
Text Label 3900 2730 2    60   ~ 0
DB7
Text Label 3900 2830 2    60   ~ 0
DB6
Text Label 3900 2930 2    60   ~ 0
DB5
Text Label 3900 3030 2    60   ~ 0
DB4
Text Label 3990 3980 2    60   ~ 0
GCOUNT
Text Label 3990 4080 2    60   ~ 0
ROTB
Text Label 3995 4180 2    60   ~ 0
ROTP
Text Label 3885 1980 0    60   ~ 0
ROTA
$Comp
L CONN_01X02 P5
U 1 1 5A771591
P 7330 880
F 0 "P5" H 7330 1030 50  0000 C CNN
F 1 "CONN_GEIGER" H 7340 710 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7330 880 50  0001 C CNN
F 3 "" H 7330 880 50  0000 C CNN
	1    7330 880 
	1    0    0    1   
$EndComp
$Comp
L GND #PWR024
U 1 1 5A771B02
P 6870 1015
F 0 "#PWR024" H 6870 765 50  0001 C CNN
F 1 "GND" H 6870 865 50  0000 C CNN
F 2 "" H 6870 1015 50  0000 C CNN
F 3 "" H 6870 1015 50  0000 C CNN
	1    6870 1015
	1    0    0    -1  
$EndComp
Text Label 6980 830  2    60   ~ 0
GCOUNT
Text Label 3880 1880 0    60   ~ 0
ON_CHARGE
$Comp
L C C7
U 1 1 5A77449D
P 915 2035
F 0 "C7" H 940 2135 50  0000 L CNN
F 1 "100nF" H 940 1935 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 953 1885 50  0001 C CNN
F 3 "" H 915 2035 50  0000 C CNN
	1    915  2035
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5A774561
P 915 2225
F 0 "#PWR025" H 915 1975 50  0001 C CNN
F 1 "GND" H 915 2075 50  0000 C CNN
F 2 "" H 915 2225 50  0000 C CNN
F 3 "" H 915 2225 50  0000 C CNN
	1    915  2225
	1    0    0    -1  
$EndComp
Text Label 750  1820 0    60   ~ 0
+5V
$Comp
L ATMEGA328P-A IC1
U 1 1 5A7753E3
P 2680 2980
F 0 "IC1" H 1930 4230 50  0000 L BNN
F 1 "ATMEGA328P-A" H 3080 1580 50  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 2680 2980 50  0001 C CIN
F 3 "" H 2680 2980 50  0000 C CNN
	1    2680 2980
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 5A779C48
P 910 3085
F 0 "R17" V 990 3085 50  0000 C CNN
F 1 "180K" V 910 3085 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 840 3085 50  0001 C CNN
F 3 "" H 910 3085 50  0000 C CNN
	1    910  3085
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 5A779D33
P 910 3490
F 0 "R18" V 990 3490 50  0000 C CNN
F 1 "47K" V 910 3490 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 840 3490 50  0001 C CNN
F 3 "" H 910 3490 50  0000 C CNN
	1    910  3490
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5A779DCB
P 910 3705
F 0 "#PWR026" H 910 3455 50  0001 C CNN
F 1 "GND" H 910 3555 50  0000 C CNN
F 2 "" H 910 3705 50  0000 C CNN
F 3 "" H 910 3705 50  0000 C CNN
	1    910  3705
	1    0    0    -1  
$EndComp
Text Label 775  2905 0    60   ~ 0
+5V
Text HLabel 10530 5740 2    60   Input ~ 0
ON_CHARGE
Text Label 10075 5915 2    60   ~ 0
+5V
Text HLabel 10525 5915 2    60   Input ~ 0
+5V
$Comp
L Earth #PWR027
U 1 1 5A788AA8
P 10540 6165
F 0 "#PWR027" H 10540 5915 50  0001 C CNN
F 1 "Earth" H 10540 6015 50  0001 C CNN
F 2 "" H 10540 6165 50  0000 C CNN
F 3 "" H 10540 6165 50  0000 C CNN
	1    10540 6165
	1    0    0    -1  
$EndComp
Text Label 10250 6085 2    60   ~ 0
GND
$Comp
L SPST SW1
U 1 1 5A793B0E
P 1990 1150
F 0 "SW1" H 1990 1250 50  0000 C CNN
F 1 "SPST" H 1990 1050 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQQ2" H 1990 1150 50  0001 C CNN
F 3 "" H 1990 1150 50  0000 C CNN
	1    1990 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5A768C14
P 2490 1260
F 0 "#PWR028" H 2490 1010 50  0001 C CNN
F 1 "GND" H 2490 1110 50  0000 C CNN
F 2 "" H 2490 1260 50  0000 C CNN
F 3 "" H 2490 1260 50  0000 C CNN
	1    2490 1260
	1    0    0    -1  
$EndComp
Wire Wire Line
	8825 1000 9225 1000
Wire Wire Line
	8825 800  9225 800 
Wire Wire Line
	8325 1000 8000 1000
Wire Wire Line
	8825 900  9225 900 
Wire Wire Line
	8325 900  8000 900 
Wire Wire Line
	8325 800  8000 800 
Wire Wire Line
	10425 825  10150 825 
Wire Wire Line
	10425 1025 10150 1025
Wire Wire Line
	10425 1125 10150 1125
Wire Wire Line
	10425 1225 10150 1225
Wire Wire Line
	10425 1725 10150 1725
Wire Wire Line
	10425 1825 10150 1825
Wire Wire Line
	10425 1925 10150 1925
Wire Wire Line
	10425 2025 10150 2025
Wire Wire Line
	10425 725  10150 725 
Wire Wire Line
	10150 2675 10150 2575
Wire Wire Line
	9775 750  9775 675 
Wire Wire Line
	9775 675  9600 675 
Wire Wire Line
	9925 900  10000 900 
Wire Wire Line
	10000 900  10000 925 
Wire Wire Line
	10000 925  10425 925 
Wire Wire Line
	9775 1150 9775 1050
Wire Wire Line
	1425 5890 1425 5740
Wire Wire Line
	1425 5740 2675 5740
Wire Wire Line
	1700 5740 1700 5890
Wire Wire Line
	1425 6190 1425 6815
Connection ~ 1425 6640
Wire Wire Line
	1700 7240 1700 7115
Wire Wire Line
	1425 7240 1425 7115
Wire Wire Line
	2675 6190 2675 6815
Connection ~ 2675 6440
Wire Wire Line
	2675 7115 2675 7215
Wire Wire Line
	2675 5740 2675 5890
Connection ~ 1700 5740
Wire Wire Line
	2675 6440 2400 6440
Wire Wire Line
	9400 3075 9225 3075
Wire Wire Line
	10230 3045 10030 3045
Wire Wire Line
	9400 3450 9125 3450
Wire Wire Line
	10250 3450 9900 3450
Wire Wire Line
	10425 2225 10200 2225
Wire Notes Line
	8900 2150 8900 2700
Wire Notes Line
	8900 2700 10000 2700
Wire Notes Line
	10000 2700 10000 2150
Wire Notes Line
	10000 2150 8900 2150
Wire Wire Line
	4720 2680 4720 2685
Connection ~ 4300 2685
Wire Wire Line
	5045 2380 4095 2380
Wire Wire Line
	4300 2380 4300 2385
Connection ~ 4300 2380
Wire Wire Line
	4095 2685 5305 2685
Wire Wire Line
	5045 2300 5045 2380
Connection ~ 4720 2380
Wire Wire Line
	5305 2685 5305 2300
Connection ~ 4720 2685
Wire Wire Line
	5305 2000 5045 2000
Wire Wire Line
	5170 1935 5170 2000
Connection ~ 5170 2000
Wire Wire Line
	1125 6440 1700 6440
Wire Wire Line
	1120 6640 1425 6640
Wire Wire Line
	1700 6190 1700 6815
Connection ~ 1700 6440
Wire Wire Line
	1170 1100 1170 1160
Wire Wire Line
	940  1160 1380 1160
Wire Wire Line
	1490 1150 1380 1150
Wire Wire Line
	1380 1150 1380 1160
Connection ~ 1170 1160
Wire Wire Line
	3680 2180 3890 2180
Wire Wire Line
	3680 2280 3890 2280
Wire Wire Line
	3680 2380 3890 2380
Wire Wire Line
	3680 2730 3900 2730
Wire Wire Line
	3680 2830 3900 2830
Wire Wire Line
	3680 2930 3900 2930
Wire Wire Line
	3680 4180 3995 4180
Wire Wire Line
	3680 4080 3990 4080
Wire Wire Line
	3680 3980 3990 3980
Wire Wire Line
	3680 3030 3900 3030
Wire Wire Line
	3680 1980 3885 1980
Wire Wire Line
	7130 830  6980 830 
Wire Wire Line
	7130 930  6870 930 
Wire Wire Line
	6870 930  6870 1015
Wire Wire Line
	3680 1880 3880 1880
Wire Wire Line
	915  2185 915  2225
Wire Wire Line
	750  1820 1465 1820
Wire Wire Line
	1780 3980 1620 3980
Wire Wire Line
	1620 3980 1620 4310
Wire Wire Line
	1780 4080 1620 4080
Connection ~ 1620 4080
Wire Wire Line
	1780 4180 1620 4180
Connection ~ 1620 4180
Wire Wire Line
	3680 2480 4095 2480
Wire Wire Line
	4095 2480 4095 2380
Wire Wire Line
	3680 2580 4095 2580
Wire Wire Line
	4095 2580 4095 2685
Wire Wire Line
	910  3705 910  3640
Wire Wire Line
	910  3340 910  3235
Wire Wire Line
	910  2935 910  2905
Wire Wire Line
	910  2905 775  2905
Wire Wire Line
	1780 3330 1160 3330
Wire Wire Line
	1160 3330 1160 3290
Wire Wire Line
	1160 3290 910  3290
Connection ~ 910  3290
Wire Wire Line
	3680 3680 3985 3680
Wire Wire Line
	3680 3580 3980 3580
Wire Wire Line
	3680 3480 3985 3480
Wire Wire Line
	10530 5740 10070 5740
Wire Wire Line
	10075 5915 10525 5915
Wire Wire Line
	10540 6165 10540 6090
Wire Wire Line
	10540 6090 10250 6090
Wire Wire Line
	10250 6090 10250 6085
Wire Wire Line
	10150 2125 10150 2275
Wire Wire Line
	10425 2125 10150 2125
Wire Wire Line
	2490 1150 2490 1260
Text Label 10070 5740 2    60   ~ 0
ON_CHARGE
NoConn ~ 3680 3780
NoConn ~ 3680 3880
NoConn ~ 3680 3130
NoConn ~ 3680 3230
NoConn ~ 3680 2080
NoConn ~ 1780 2480
NoConn ~ 1780 3230
Wire Wire Line
	1780 1980 1465 1980
Connection ~ 1465 1980
Wire Wire Line
	915  1885 915  1820
Connection ~ 915  1820
Wire Wire Line
	1780 1880 1465 1880
Wire Wire Line
	1465 1880 1465 1875
Connection ~ 1465 1875
Wire Wire Line
	1780 2180 1465 2180
Wire Wire Line
	1465 2180 1465 1820
$EndSCHEMATC
