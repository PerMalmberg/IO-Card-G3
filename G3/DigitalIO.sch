EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 13 35
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PerMalmberg:MCP23017 U1301
U 1 1 59C2CB37
P 3600 4100
F 0 "U1301" H 3400 5250 50  0000 C CNN
F 1 "MCP23017" H 3650 5150 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 3650 3150 50  0001 L CNN
F 3 "" H 3850 5100 50  0001 C CNN
	1    3600 4100
	1    0    0    -1  
$EndComp
Text GLabel 2350 1150 2    60   Input ~ 0
DI1
Text GLabel 1400 1100 0    60   Input ~ 0
DI1_1
Text GLabel 3100 3100 0    60   Input ~ 0
DI1
Text GLabel 3100 3200 0    60   Input ~ 0
DI2
Text GLabel 3100 3300 0    60   Input ~ 0
DI3
Text GLabel 3100 3400 0    60   Input ~ 0
DI4
Text GLabel 3100 3500 0    60   Input ~ 0
DI5
Text GLabel 3100 3600 0    60   Input ~ 0
DI6
Text GLabel 3100 3700 0    60   Input ~ 0
DI7
Text GLabel 3100 3800 0    60   Input ~ 0
DI8
Text GLabel 5400 1050 0    60   Input ~ 0
DO1
$Comp
L Device:C C1301
U 1 1 59C4102A
P 3600 1050
F 0 "C1301" H 3715 1096 50  0000 L CNN
F 1 "100n" H 3715 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3638 900 50  0001 C CNN
F 3 "" H 3600 1050 50  0001 C CNN
	1    3600 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01302
U 1 1 59C42024
P 3600 1200
F 0 "#PWR01302" H 3600 950 50  0001 C CNN
F 1 "GND" H 3605 1027 50  0000 C CNN
F 2 "" H 3600 1200 50  0001 C CNN
F 3 "" H 3600 1200 50  0001 C CNN
	1    3600 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01304
U 1 1 59C42579
P 3600 4000
F 0 "#PWR01304" H 3600 3750 50  0001 C CNN
F 1 "GND" H 3605 3827 50  0000 C CNN
F 2 "" H 3600 4000 50  0001 C CNN
F 3 "" H 3600 4000 50  0001 C CNN
	1    3600 4000
	1    0    0    -1  
$EndComp
Text GLabel 3100 2200 0    60   Input ~ 0
DO1
Text GLabel 3100 2300 0    60   Input ~ 0
DO2
Text GLabel 3100 2400 0    60   Input ~ 0
DO3
Text GLabel 3100 2500 0    60   Input ~ 0
DO4
Text GLabel 3100 2600 0    60   Input ~ 0
DO5
Text GLabel 3100 2700 0    60   Input ~ 0
DO6
Text GLabel 3100 2800 0    60   Input ~ 0
DO7
Text GLabel 3100 2900 0    60   Input ~ 0
DO8
Text GLabel 5400 1500 0    60   Input ~ 0
DO2
Text GLabel 5400 1950 0    60   Input ~ 0
DO3
Text GLabel 5400 2400 0    60   Input ~ 0
DO4
Text GLabel 5400 2850 0    60   Input ~ 0
DO5
Text GLabel 5400 3300 0    60   Input ~ 0
DO6
Text GLabel 5400 3750 0    60   Input ~ 0
DO7
Text GLabel 5400 4200 0    60   Input ~ 0
DO8
$Comp
L power:GND #PWR01307
U 1 1 59C5AF84
P 4100 3800
F 0 "#PWR01307" H 4100 3550 50  0001 C CNN
F 1 "GND" V 4105 3672 50  0000 R CNN
F 2 "" H 4100 3800 50  0001 C CNN
F 3 "" H 4100 3800 50  0001 C CNN
	1    4100 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01306
U 1 1 59C5B1A8
P 4100 3700
F 0 "#PWR01306" H 4100 3450 50  0001 C CNN
F 1 "GND" V 4105 3572 50  0000 R CNN
F 2 "" H 4100 3700 50  0001 C CNN
F 3 "" H 4100 3700 50  0001 C CNN
	1    4100 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01305
U 1 1 59C5B287
P 4100 3600
F 0 "#PWR01305" H 4100 3350 50  0001 C CNN
F 1 "GND" V 4105 3472 50  0000 R CNN
F 2 "" H 4100 3600 50  0001 C CNN
F 3 "" H 4100 3600 50  0001 C CNN
	1    4100 3600
	0    -1   -1   0   
$EndComp
Text GLabel 4100 3300 2    60   Input ~ 0
DIGITAL_I2C_SCL
Text GLabel 4100 3400 2    60   Input ~ 0
DIGITAL_I2C_SDA
Text GLabel 4250 2700 2    60   Input ~ 0
DIA_Interrupt
NoConn ~ 4100 2600
Text Notes 4600 3950 2    60   ~ 0
Adress 0x20
$Comp
L Device:R R1302
U 1 1 59C5F580
P 4200 2550
F 0 "R1302" H 4270 2596 50  0000 L CNN
F 1 "10k" H 4270 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4130 2550 50  0001 C CNN
F 3 "" H 4200 2550 50  0001 C CNN
	1    4200 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01309
U 1 1 59C5F699
P 4200 2400
F 0 "#PWR01309" H 4200 2250 50  0001 C CNN
F 1 "+3.3V" H 4350 2450 50  0000 C CNN
F 2 "" H 4200 2400 50  0001 C CNN
F 3 "" H 4200 2400 50  0001 C CNN
	1    4200 2400
	1    0    0    -1  
$EndComp
Text Notes 4100 1400 1    60   ~ 0
Near MCP23017
$Comp
L power:+3.3V #PWR01308
U 1 1 59CA4C36
P 4200 1900
F 0 "#PWR01308" H 4200 1750 50  0001 C CNN
F 1 "+3.3V" V 4150 2100 50  0000 C CNN
F 2 "" H 4200 1900 50  0001 C CNN
F 3 "" H 4200 1900 50  0001 C CNN
	1    4200 1900
	1    0    0    -1  
$EndComp
Text GLabel 6500 6450 2    60   Input ~ 0
BELL_GND_BREAK
Text GLabel 5700 6450 0    60   Input ~ 0
BELL_CTRL
Wire Wire Line
	4100 2700 4200 2700
Connection ~ 4200 2700
Wire Notes Line
	3300 1500 4350 1500
Wire Notes Line
	4350 1500 4350 600 
Wire Notes Line
	4350 600  3300 600 
Wire Notes Line
	3300 600  3300 1500
$Comp
L power:+3.3V #PWR01303
U 1 1 5A53CE41
P 3600 2000
F 0 "#PWR01303" H 3600 1850 50  0001 C CNN
F 1 "+3.3V" V 3600 2250 50  0000 C CNN
F 2 "" H 3600 2000 50  0001 C CNN
F 3 "" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01301
U 1 1 5A53D1F2
P 3600 900
F 0 "#PWR01301" H 3600 750 50  0001 C CNN
F 1 "+3.3V" H 3600 1100 50  0000 C CNN
F 2 "" H 3600 900 50  0001 C CNN
F 3 "" H 3600 900 50  0001 C CNN
	1    3600 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2700 4250 2700
$Comp
L Device:Buzzer BZ1301
U 1 1 5B635F18
P 6600 4900
F 0 "BZ1301" H 6753 4929 50  0000 L CNN
F 1 "SDC1610M5-01" H 6753 4838 50  0000 L CNN
F 2 "PerMalmberg:SDC1610M5-01_Buzzer_16diam_5pitch" V 6575 5000 50  0001 C CNN
F 3 "~" V 6575 5000 50  0001 C CNN
	1    6600 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01310
U 1 1 5B63AFA2
P 6500 4800
F 0 "#PWR01310" H 6500 4650 50  0001 C CNN
F 1 "+5V" H 6515 4973 50  0000 C CNN
F 2 "" H 6500 4800 50  0001 C CNN
F 3 "" H 6500 4800 50  0001 C CNN
	1    6500 4800
	1    0    0    -1  
$EndComp
Text GLabel 5700 5000 0    60   Input ~ 0
SIREN_CTRL
Text GLabel 1400 4350 0    60   Input ~ 0
DI8_2
Text GLabel 1400 4250 0    60   Input ~ 0
DI8_1
Text GLabel 2350 4300 2    60   Input ~ 0
DI8
Text GLabel 1400 3900 0    60   Input ~ 0
DI7_2
Text GLabel 1400 3800 0    60   Input ~ 0
DI7_1
Text GLabel 2350 3850 2    60   Input ~ 0
DI7
Text GLabel 1400 3450 0    60   Input ~ 0
DI6_2
Text GLabel 1400 3350 0    60   Input ~ 0
DI6_1
Text GLabel 2350 3400 2    60   Input ~ 0
DI6
Text GLabel 1400 3000 0    60   Input ~ 0
DI5_2
Text GLabel 1400 2900 0    60   Input ~ 0
DI5_1
Text GLabel 2350 2950 2    60   Input ~ 0
DI5
Text GLabel 1400 2550 0    60   Input ~ 0
DI4_2
Text GLabel 1400 2450 0    60   Input ~ 0
DI4_1
Text GLabel 2350 2500 2    60   Input ~ 0
DI4
Text GLabel 1400 2100 0    60   Input ~ 0
DI3_2
Text GLabel 1400 2000 0    60   Input ~ 0
DI3_1
Text GLabel 2350 2050 2    60   Input ~ 0
DI3
Text GLabel 1400 1650 0    60   Input ~ 0
DI2_2
Text GLabel 1400 1550 0    60   Input ~ 0
DI2_1
Text GLabel 2350 1600 2    60   Input ~ 0
DI2
$Sheet
S 1500 1050 750  250 
U 5B66E27E
F0 "DigitalInput1" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 1100 50 
F3 "In2" B L 1500 1200 50 
F4 "~signal" O R 2250 1150 50 
$EndSheet
Text GLabel 1400 1200 0    60   Input ~ 0
DI1_2
$Sheet
S 1500 1500 750  250 
U 5B66FC5D
F0 "DigitalInput2" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 1550 50 
F3 "In2" B L 1500 1650 50 
F4 "~signal" O R 2250 1600 50 
$EndSheet
Wire Wire Line
	1500 1100 1400 1100
Wire Wire Line
	2350 1150 2250 1150
Wire Wire Line
	1400 1200 1500 1200
Wire Wire Line
	1400 1550 1500 1550
Wire Wire Line
	1400 1650 1500 1650
Wire Wire Line
	2350 1600 2250 1600
$Sheet
S 1500 1950 750  250 
U 5B685B64
F0 "sheet5B685B5F" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 2000 50 
F3 "In2" B L 1500 2100 50 
F4 "~signal" O R 2250 2050 50 
$EndSheet
$Sheet
S 1500 2400 750  250 
U 5B687263
F0 "sheet5B68725E" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 2450 50 
F3 "In2" B L 1500 2550 50 
F4 "~signal" O R 2250 2500 50 
$EndSheet
$Sheet
S 1500 2850 750  250 
U 5B688B1A
F0 "sheet5B688B15" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 2900 50 
F3 "In2" B L 1500 3000 50 
F4 "~signal" O R 2250 2950 50 
$EndSheet
$Sheet
S 1500 3300 750  250 
U 5B68A219
F0 "sheet5B68A214" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 3350 50 
F3 "In2" B L 1500 3450 50 
F4 "~signal" O R 2250 3400 50 
$EndSheet
$Sheet
S 1500 3750 750  250 
U 5B68BAA8
F0 "sheet5B68BAA3" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 3800 50 
F3 "In2" B L 1500 3900 50 
F4 "~signal" O R 2250 3850 50 
$EndSheet
$Sheet
S 1500 4200 750  250 
U 5B68D1A7
F0 "sheet5B68D1A2" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 4250 50 
F3 "In2" B L 1500 4350 50 
F4 "~signal" O R 2250 4300 50 
$EndSheet
Wire Wire Line
	1400 2000 1500 2000
Wire Wire Line
	1400 2100 1500 2100
Wire Wire Line
	2250 2050 2350 2050
Wire Wire Line
	1400 2450 1500 2450
Wire Wire Line
	1400 2550 1500 2550
Wire Wire Line
	2350 2500 2250 2500
Wire Wire Line
	1400 2900 1500 2900
Wire Wire Line
	1400 3000 1500 3000
Wire Wire Line
	2250 2950 2350 2950
Wire Wire Line
	1400 3350 1500 3350
Wire Wire Line
	1500 3450 1400 3450
Wire Wire Line
	1500 3800 1400 3800
Wire Wire Line
	1400 3900 1500 3900
Wire Wire Line
	1400 4250 1500 4250
Wire Wire Line
	1500 4350 1400 4350
Wire Wire Line
	2250 3400 2350 3400
Wire Wire Line
	2250 3850 2350 3850
Wire Wire Line
	2350 4300 2250 4300
$Sheet
S 5550 1000 1100 200 
U 5B6C04D0
F0 "DigitalOutput1" 50
F1 "DigitalOutput.sch" 50
F2 "output_control" I L 5550 1050 50 
F3 "gnd_break" O R 6650 1050 50 
$EndSheet
$Sheet
S 5550 1450 1100 200 
U 5B6C94C6
F0 "sheet5B6C94C2" 50
F1 "DigitalOutput.sch" 50
F2 "output_control" I L 5550 1500 50 
F3 "gnd_break" O R 6650 1500 50 
$EndSheet
$Sheet
S 5550 1900 1100 200 
U 5B6CA292
F0 "sheet5B6CA28E" 50
F1 "DigitalOutput.sch" 50
F2 "output_control" I L 5550 1950 50 
F3 "gnd_break" O R 6650 1950 50 
$EndSheet
$Sheet
S 5550 2350 1100 200 
U 5B6CB22A
F0 "sheet5B6CB226" 50
F1 "DigitalOutput.sch" 50
F2 "output_control" I L 5550 2400 50 
F3 "gnd_break" O R 6650 2400 50 
$EndSheet
$Sheet
S 5550 2800 1100 200 
U 5B6CC0CE
F0 "sheet5B6CC0CA" 50
F1 "DigitalOutput.sch" 50
F2 "output_control" I L 5550 2850 50 
F3 "gnd_break" O R 6650 2850 50 
$EndSheet
$Sheet
S 5550 3250 1100 200 
U 5B6CCE9A
F0 "sheet5B6CCE96" 50
F1 "DigitalOutput.sch" 50
F2 "output_control" I L 5550 3300 50 
F3 "gnd_break" O R 6650 3300 50 
$EndSheet
$Sheet
S 5550 3700 1100 200 
U 5B6CDC66
F0 "sheet5B6CDC62" 50
F1 "DigitalOutput.sch" 50
F2 "output_control" I L 5550 3750 50 
F3 "gnd_break" O R 6650 3750 50 
$EndSheet
$Sheet
S 5550 4150 1100 200 
U 5B6CEB95
F0 "sheet5B6CEB91" 50
F1 "DigitalOutput.sch" 50
F2 "output_control" I L 5550 4200 50 
F3 "gnd_break" O R 6650 4200 50 
$EndSheet
Wire Wire Line
	5400 1050 5550 1050
Wire Wire Line
	5400 1500 5550 1500
Wire Wire Line
	5400 1950 5550 1950
Wire Wire Line
	5400 2400 5550 2400
Wire Wire Line
	5400 2850 5550 2850
Wire Wire Line
	5400 3300 5550 3300
Wire Wire Line
	5400 3750 5550 3750
Wire Wire Line
	5400 4200 5550 4200
$Comp
L Device:R R1301
U 1 1 5B6DFD32
P 4200 2050
F 0 "R1301" H 4270 2096 50  0000 L CNN
F 1 "10k" H 4270 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4130 2050 50  0001 C CNN
F 3 "" H 4200 2050 50  0001 C CNN
	1    4200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2200 4200 2200
Wire Wire Line
	4450 2200 4200 2200
Connection ~ 4200 2200
Text GLabel 4450 2200 2    50   Input ~ 0
I2C_Reset
Text GLabel 6900 1050 2    50   Input ~ 0
DO1_GND_BREAK
Text GLabel 6900 1500 2    50   Input ~ 0
DO2_GND_BREAK
Text GLabel 6900 1950 2    50   Input ~ 0
DO3_GND_BREAK
Text GLabel 6900 2400 2    50   Input ~ 0
DO4_GND_BREAK
Text GLabel 6900 2850 2    50   Input ~ 0
DO5_GND_BREAK
Text GLabel 6900 3300 2    50   Input ~ 0
DO6_GND_BREAK
Text GLabel 6900 3750 2    50   Input ~ 0
DO7_GND_BREAK
Text GLabel 6900 4200 2    50   Input ~ 0
DO8_GND_BREAK
Wire Wire Line
	6650 1050 6900 1050
Wire Wire Line
	6650 1500 6900 1500
Wire Wire Line
	6650 1950 6900 1950
Wire Wire Line
	6650 2400 6900 2400
Wire Wire Line
	6650 2850 6900 2850
Wire Wire Line
	6650 3300 6900 3300
Wire Wire Line
	6650 3750 6900 3750
Wire Wire Line
	6900 4200 6650 4200
Text GLabel 5700 5450 0    60   Input ~ 0
SIREN_CTRL
Text GLabel 6500 5450 2    50   Input ~ 0
SIREN_GND_BREAK
$Sheet
S 9800 1900 800  900 
U 5B780EE8
F0 "StatusIndication" 50
F1 "StatusIndication.sch" 50
F2 "Green1" I L 9800 2000 50 
F3 "Green2" I L 9800 2100 50 
F4 "Green3" I L 9800 2200 50 
F5 "Green4" I L 9800 2300 50 
F6 "Green5" I L 9800 2400 50 
F7 "Green6" I L 9800 2500 50 
F8 "Green7" I L 9800 2600 50 
F9 "Green8" I L 9800 2700 50 
F10 "Red1" I R 10600 2000 50 
F11 "Red2" I R 10600 2100 50 
F12 "Red3" I R 10600 2200 50 
F13 "Red4" I R 10600 2300 50 
F14 "Red5" I R 10600 2400 50 
F15 "Red6" I R 10600 2500 50 
F16 "Red7" I R 10600 2600 50 
F17 "Red8" I R 10600 2700 50 
$EndSheet
Text GLabel 10750 2000 2    60   Input ~ 0
DI1
Text GLabel 10750 2700 2    60   Input ~ 0
DI8
Text GLabel 10750 2600 2    60   Input ~ 0
DI7
Text GLabel 10750 2500 2    60   Input ~ 0
DI6
Text GLabel 10750 2400 2    60   Input ~ 0
DI5
Text GLabel 10750 2300 2    60   Input ~ 0
DI4
Text GLabel 10750 2200 2    60   Input ~ 0
DI3
Text GLabel 10750 2100 2    60   Input ~ 0
DI2
Wire Wire Line
	10600 2000 10750 2000
Wire Wire Line
	10750 2100 10600 2100
Wire Wire Line
	10600 2200 10750 2200
Wire Wire Line
	10750 2300 10600 2300
Wire Wire Line
	10600 2400 10750 2400
Wire Wire Line
	10750 2500 10600 2500
Wire Wire Line
	10600 2600 10750 2600
Wire Wire Line
	10750 2700 10600 2700
Text GLabel 9650 2000 0    50   Input ~ 0
DO1_GND_BREAK
Text GLabel 9650 2100 0    50   Input ~ 0
DO2_GND_BREAK
Text GLabel 9650 2200 0    50   Input ~ 0
DO3_GND_BREAK
Text GLabel 9650 2300 0    50   Input ~ 0
DO4_GND_BREAK
Text GLabel 9650 2400 0    50   Input ~ 0
DO5_GND_BREAK
Text GLabel 9650 2500 0    50   Input ~ 0
DO6_GND_BREAK
Text GLabel 9650 2600 0    50   Input ~ 0
DO7_GND_BREAK
Text GLabel 9650 2700 0    50   Input ~ 0
DO8_GND_BREAK
Wire Wire Line
	9650 2000 9800 2000
Wire Wire Line
	9650 2100 9800 2100
Wire Wire Line
	9800 2200 9650 2200
Wire Wire Line
	9650 2300 9800 2300
Wire Wire Line
	9800 2400 9650 2400
Wire Wire Line
	9650 2500 9800 2500
Wire Wire Line
	9800 2600 9650 2600
Wire Wire Line
	9650 2700 9800 2700
$Comp
L Device:LED D?
U 1 1 5B8AAF3E
P 6650 5950
AR Path="/5B62EDB8/5B780EE8/5B8AAF3E" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B8AAF3E" Ref="D1301"  Part="1" 
F 0 "D1301" H 6642 5695 50  0000 C CNN
F 1 "Red" H 6642 5786 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 6650 5950 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 6650 5950 50  0001 C CNN
	1    6650 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5950 6800 5950
$Comp
L Device:R R?
U 1 1 5B8AAF47
P 7050 5950
AR Path="/5B62EDB8/5B780EE8/5B8AAF47" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8AAF47" Ref="R1303"  Part="1" 
F 0 "R1303" V 6843 5950 50  0000 C CNN
F 1 "165" V 6934 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6980 5950 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 7050 5950 50  0001 C CNN
	1    7050 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR01311
U 1 1 5B8B47B5
P 7200 5950
F 0 "#PWR01311" H 7200 5800 50  0001 C CNN
F 1 "+3.3V" V 7215 6078 50  0000 L CNN
F 2 "" H 7200 5950 50  0001 C CNN
F 3 "" H 7200 5950 50  0001 C CNN
	1    7200 5950
	0    1    1    0   
$EndComp
Text GLabel 5700 5950 0    50   Input ~ 0
StatusLED
$Sheet
S 5700 4900 800  200 
U 5B8B425B
F0 "SimpleOutput" 50
F1 "SimpleOutput.sch" 50
F2 "CTRL" I L 5700 5000 50 
F3 "~Out" I R 6500 5000 50 
$EndSheet
$Sheet
S 5700 5350 800  200 
U 5B8BDF9E
F0 "sheet5B8BDF9A" 50
F1 "SimpleOutput.sch" 50
F2 "CTRL" I L 5700 5450 50 
F3 "~Out" I R 6500 5450 50 
$EndSheet
$Sheet
S 5700 5850 800  200 
U 5B8CC011
F0 "sheet5B8CC00D" 50
F1 "SimpleOutput.sch" 50
F2 "CTRL" I L 5700 5950 50 
F3 "~Out" I R 6500 5950 50 
$EndSheet
$Sheet
S 5700 6350 800  200 
U 5B8CD7E8
F0 "sheet5B8CD7E4" 50
F1 "SimpleOutput.sch" 50
F2 "CTRL" I L 5700 6450 50 
F3 "~Out" I R 6500 6450 50 
$EndSheet
$EndSCHEMATC
