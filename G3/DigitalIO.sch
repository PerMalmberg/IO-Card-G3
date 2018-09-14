EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 14 36
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
L PerMalmberg:MCP23017 U1402
U 1 1 59C2CB37
P 3750 4150
F 0 "U1402" H 3750 4900 50  0000 C CNN
F 1 "MCP23017" H 3800 5200 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 3800 3200 50  0001 L CNN
F 3 "" H 4000 5150 50  0001 C CNN
	1    3750 4150
	1    0    0    -1  
$EndComp
Text GLabel 2350 1150 2    60   Input ~ 0
DI1
Text GLabel 1400 1100 0    60   Input ~ 0
DI1_1
Text GLabel 3250 3150 0    60   Input ~ 0
DI1
Text GLabel 3250 3250 0    60   Input ~ 0
DI2
Text GLabel 3250 3350 0    60   Input ~ 0
DI3
Text GLabel 3250 3450 0    60   Input ~ 0
DI4
Text GLabel 3250 3550 0    60   Input ~ 0
DI5
Text GLabel 3250 3650 0    60   Input ~ 0
DI6
Text GLabel 3250 3750 0    60   Input ~ 0
DI7
Text GLabel 3250 3850 0    60   Input ~ 0
DI8
Text GLabel 5400 1050 0    60   Input ~ 0
DO1
$Comp
L Device:C C1402
U 1 1 59C4102A
P 3600 1050
F 0 "C1402" H 3715 1096 50  0000 L CNN
F 1 "100n" H 3715 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3638 900 50  0001 C CNN
F 3 "" H 3600 1050 50  0001 C CNN
	1    3600 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01406
U 1 1 59C42024
P 3600 1200
F 0 "#PWR01406" H 3600 950 50  0001 C CNN
F 1 "GND" H 3605 1027 50  0000 C CNN
F 2 "" H 3600 1200 50  0001 C CNN
F 3 "" H 3600 1200 50  0001 C CNN
	1    3600 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01410
U 1 1 59C42579
P 3750 4050
F 0 "#PWR01410" H 3750 3800 50  0001 C CNN
F 1 "GND" H 3755 3877 50  0000 C CNN
F 2 "" H 3750 4050 50  0001 C CNN
F 3 "" H 3750 4050 50  0001 C CNN
	1    3750 4050
	1    0    0    -1  
$EndComp
Text GLabel 3250 2250 0    60   Input ~ 0
DO1
Text GLabel 3250 2350 0    60   Input ~ 0
DO2
Text GLabel 3250 2450 0    60   Input ~ 0
DO3
Text GLabel 3250 2550 0    60   Input ~ 0
DO4
Text GLabel 3250 2650 0    60   Input ~ 0
DO5
Text GLabel 5400 1500 0    60   Input ~ 0
DO2
Text GLabel 5400 1950 0    60   Input ~ 0
DO3
Text GLabel 5400 2400 0    60   Input ~ 0
DO4
Text GLabel 5400 2850 0    60   Input ~ 0
DO5
$Comp
L power:GND #PWR01416
U 1 1 59C5AF84
P 4250 3850
F 0 "#PWR01416" H 4250 3600 50  0001 C CNN
F 1 "GND" V 4255 3722 50  0000 R CNN
F 2 "" H 4250 3850 50  0001 C CNN
F 3 "" H 4250 3850 50  0001 C CNN
	1    4250 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01415
U 1 1 59C5B1A8
P 4250 3750
F 0 "#PWR01415" H 4250 3500 50  0001 C CNN
F 1 "GND" V 4255 3622 50  0000 R CNN
F 2 "" H 4250 3750 50  0001 C CNN
F 3 "" H 4250 3750 50  0001 C CNN
	1    4250 3750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01414
U 1 1 59C5B287
P 4250 3650
F 0 "#PWR01414" H 4250 3400 50  0001 C CNN
F 1 "GND" V 4255 3522 50  0000 R CNN
F 2 "" H 4250 3650 50  0001 C CNN
F 3 "" H 4250 3650 50  0001 C CNN
	1    4250 3650
	0    -1   -1   0   
$EndComp
Text GLabel 4250 3350 2    60   Input ~ 0
I2C_SCL
Text GLabel 4250 3450 2    60   Input ~ 0
I2C_SDA
Text GLabel 4400 2750 2    60   Input ~ 0
DIA_Interrupt
NoConn ~ 4250 2650
Text Notes 4750 4000 2    60   ~ 0
Adress 0x20
Text Notes 4100 1400 1    60   ~ 0
Near MCP23017
Text GLabel 9850 4650 2    60   Input ~ 0
BELL_GND_BREAK
Text GLabel 8750 4600 0    60   Input ~ 0
BELL_CTRL
Wire Notes Line
	3300 1500 4350 1500
Wire Notes Line
	4350 1500 4350 600 
Wire Notes Line
	4350 600  3300 600 
Wire Notes Line
	3300 600  3300 1500
$Comp
L power:+3.3V #PWR01409
U 1 1 5A53CE41
P 3750 2050
F 0 "#PWR01409" H 3750 1900 50  0001 C CNN
F 1 "+3.3V" V 3750 2300 50  0000 C CNN
F 2 "" H 3750 2050 50  0001 C CNN
F 3 "" H 3750 2050 50  0001 C CNN
	1    3750 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01405
U 1 1 5A53D1F2
P 3600 900
F 0 "#PWR01405" H 3600 750 50  0001 C CNN
F 1 "+3.3V" H 3600 1100 50  0000 C CNN
F 2 "" H 3600 900 50  0001 C CNN
F 3 "" H 3600 900 50  0001 C CNN
	1    3600 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1401
U 1 1 5B635F18
P 9950 3100
F 0 "BZ1401" H 10103 3129 50  0000 L CNN
F 1 "SDC1610M5-01" H 10103 3038 50  0000 L CNN
F 2 "PerMalmberg:SDC1610M5-01_Buzzer_16diam_5pitch" V 9925 3200 50  0001 C CNN
F 3 "~" V 9925 3200 50  0001 C CNN
	1    9950 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01417
U 1 1 5B63AFA2
P 9850 3000
F 0 "#PWR01417" H 9850 2850 50  0001 C CNN
F 1 "+5V" H 9865 3173 50  0000 C CNN
F 2 "" H 9850 3000 50  0001 C CNN
F 3 "" H 9850 3000 50  0001 C CNN
	1    9850 3000
	1    0    0    -1  
$EndComp
Text GLabel 8750 3150 0    60   Input ~ 0
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
F0 "DigitalInput3" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 2000 50 
F3 "In2" B L 1500 2100 50 
F4 "~signal" O R 2250 2050 50 
$EndSheet
$Sheet
S 1500 2400 750  250 
U 5B687263
F0 "DigitalInput4" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 2450 50 
F3 "In2" B L 1500 2550 50 
F4 "~signal" O R 2250 2500 50 
$EndSheet
$Sheet
S 1500 2850 750  250 
U 5B688B1A
F0 "DigitalInput5" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 2900 50 
F3 "In2" B L 1500 3000 50 
F4 "~signal" O R 2250 2950 50 
$EndSheet
$Sheet
S 1500 3300 750  250 
U 5B68A219
F0 "DigitalInput6" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 3350 50 
F3 "In2" B L 1500 3450 50 
F4 "~signal" O R 2250 3400 50 
$EndSheet
$Sheet
S 1500 3750 750  250 
U 5B68BAA8
F0 "DigitalInput7" 50
F1 "DigitalInput.sch" 50
F2 "In1" B L 1500 3800 50 
F3 "In2" B L 1500 3900 50 
F4 "~signal" O R 2250 3850 50 
$EndSheet
$Sheet
S 1500 4200 750  250 
U 5B68D1A7
F0 "DigitalInput8" 50
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
F2 "CTRL" I L 5550 1050 50 
F3 "~Out" I R 6650 1100 50 
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
Text GLabel 4250 2250 2    50   Input ~ 0
I2C_Reset
Text GLabel 6900 1100 2    50   Input ~ 0
DO1_GND_BREAK
Text GLabel 6900 1550 2    50   Input ~ 0
DO2_GND_BREAK
Text GLabel 6900 2000 2    50   Input ~ 0
DO3_GND_BREAK
Text GLabel 6900 2450 2    50   Input ~ 0
DO4_GND_BREAK
Text GLabel 6900 2900 2    50   Input ~ 0
DO5_GND_BREAK
Wire Wire Line
	6650 1100 6900 1100
Wire Wire Line
	6650 1550 6900 1550
Wire Wire Line
	6650 2000 6900 2000
Wire Wire Line
	6650 2450 6900 2450
Wire Wire Line
	6650 2900 6900 2900
Text GLabel 8750 3600 0    60   Input ~ 0
SIREN_CTRL
Text GLabel 9850 3650 2    50   Input ~ 0
SIREN_GND_BREAK
$Sheet
S 9000 1500 800  900 
U 5B780EE8
F0 "StatusIndication" 50
F1 "StatusIndication.sch" 50
F2 "Green1" I L 9000 1600 50 
F3 "Green2" I L 9000 1700 50 
F4 "Green3" I L 9000 1800 50 
F5 "Green4" I L 9000 1900 50 
F6 "Green5" I L 9000 2000 50 
F7 "Red1" I R 9800 1600 50 
F8 "Red2" I R 9800 1700 50 
F9 "Red3" I R 9800 1800 50 
F10 "Red4" I R 9800 1900 50 
F11 "Red5" I R 9800 2000 50 
F12 "Red6" I R 9800 2100 50 
F13 "Red7" I R 9800 2200 50 
F14 "Red8" I R 9800 2300 50 
F15 "Green6" I L 9000 2100 50 
F16 "Green7" I L 9000 2200 50 
F17 "Green8" I L 9000 2300 50 
$EndSheet
Text GLabel 9950 1600 2    60   Input ~ 0
DI1
Text GLabel 9950 2300 2    60   Input ~ 0
DI8
Text GLabel 9950 2200 2    60   Input ~ 0
DI7
Text GLabel 9950 2100 2    60   Input ~ 0
DI6
Text GLabel 9950 2000 2    60   Input ~ 0
DI5
Text GLabel 9950 1900 2    60   Input ~ 0
DI4
Text GLabel 9950 1800 2    60   Input ~ 0
DI3
Text GLabel 9950 1700 2    60   Input ~ 0
DI2
Wire Wire Line
	9800 1600 9950 1600
Wire Wire Line
	9950 1700 9800 1700
Wire Wire Line
	9800 1800 9950 1800
Wire Wire Line
	9950 1900 9800 1900
Wire Wire Line
	9800 2000 9950 2000
Wire Wire Line
	9950 2100 9800 2100
Wire Wire Line
	9800 2200 9950 2200
Wire Wire Line
	9950 2300 9800 2300
Text GLabel 8850 1600 0    50   Input ~ 0
DO1_GND_BREAK
Text GLabel 8850 1700 0    50   Input ~ 0
DO2_GND_BREAK
Text GLabel 8850 1800 0    50   Input ~ 0
DO3_GND_BREAK
Text GLabel 8850 1900 0    50   Input ~ 0
DO4_GND_BREAK
Text GLabel 8850 2000 0    50   Input ~ 0
DO5_GND_BREAK
Wire Wire Line
	8850 1600 9000 1600
Wire Wire Line
	8850 1700 9000 1700
Wire Wire Line
	9000 1800 8850 1800
Wire Wire Line
	8850 1900 9000 1900
Wire Wire Line
	9000 2000 8850 2000
$Comp
L Device:LED D?
U 1 1 5B8AAF3E
P 10000 4150
AR Path="/5B62EDB8/5B780EE8/5B8AAF3E" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B8AAF3E" Ref="D1401"  Part="1" 
F 0 "D1401" H 9992 3895 50  0000 C CNN
F 1 "Red" H 9992 3986 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 10000 4150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 10000 4150 50  0001 C CNN
	1    10000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4150 10150 4150
$Comp
L Device:R R?
U 1 1 5B8AAF47
P 10400 4150
AR Path="/5B62EDB8/5B780EE8/5B8AAF47" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8AAF47" Ref="R1403"  Part="1" 
F 0 "R1403" V 10193 4150 50  0000 C CNN
F 1 "165" V 10284 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10330 4150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 10400 4150 50  0001 C CNN
	1    10400 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR01418
U 1 1 5B8B47B5
P 10550 4150
F 0 "#PWR01418" H 10550 4000 50  0001 C CNN
F 1 "+3.3V" V 10565 4278 50  0000 L CNN
F 2 "" H 10550 4150 50  0001 C CNN
F 3 "" H 10550 4150 50  0001 C CNN
	1    10550 4150
	0    1    1    0   
$EndComp
Text GLabel 8750 4100 0    50   Input ~ 0
StatusLED
$Sheet
S 5550 1450 1100 200 
U 5B8D6A51
F0 "DigitalOutput2" 50
F1 "DigitalOutput.sch" 50
F2 "CTRL" I L 5550 1500 50 
F3 "~Out" I R 6650 1550 50 
$EndSheet
$Sheet
S 5550 1900 1100 200 
U 5B8D8275
F0 "DigitalOutput3" 50
F1 "DigitalOutput.sch" 50
F2 "CTRL" I L 5550 1950 50 
F3 "~Out" I R 6650 2000 50 
$EndSheet
$Sheet
S 5550 2350 1100 200 
U 5B8D9A4C
F0 "DigitalOutput4" 50
F1 "DigitalOutput.sch" 50
F2 "CTRL" I L 5550 2400 50 
F3 "~Out" I R 6650 2450 50 
$EndSheet
$Sheet
S 5550 2800 1100 200 
U 5B8DB29A
F0 "DigitalOutput5" 50
F1 "DigitalOutput.sch" 50
F2 "CTRL" I L 5550 2850 50 
F3 "~Out" I R 6650 2900 50 
$EndSheet
$Sheet
S 8750 3100 1100 200 
U 5B8EE9B3
F0 "InternalSirenOutput" 50
F1 "DigitalOutput.sch" 50
F2 "CTRL" I L 8750 3150 50 
F3 "~Out" I R 9850 3200 50 
$EndSheet
$Sheet
S 8750 3550 1100 200 
U 5B8F19D7
F0 "ExternalSirenOutput" 50
F1 "DigitalOutput.sch" 50
F2 "CTRL" I L 8750 3600 50 
F3 "~Out" I R 9850 3650 50 
$EndSheet
$Sheet
S 8750 4050 1100 200 
U 5B8F31AE
F0 "StatusLEDOutput" 50
F1 "DigitalOutput.sch" 50
F2 "CTRL" I L 8750 4100 50 
F3 "~Out" I R 9850 4150 50 
$EndSheet
$Sheet
S 8750 4550 1100 200 
U 5B8F4985
F0 "BellOutput" 50
F1 "DigitalOutput.sch" 50
F2 "CTRL" I L 8750 4600 50 
F3 "~Out" I R 9850 4650 50 
$EndSheet
Text GLabel 3250 5300 0    60   Input ~ 0
BELL_CTRL
Text GLabel 3250 5200 0    60   Input ~ 0
SIREN_CTRL
Wire Wire Line
	4250 2750 4400 2750
Text GLabel 5400 3250 0    60   Input ~ 0
DO6
Wire Wire Line
	5400 3250 5550 3250
Text GLabel 6900 3300 2    50   Input ~ 0
DO6_GND_BREAK
Wire Wire Line
	6650 3300 6900 3300
$Sheet
S 5550 3200 1100 200 
U 5BA037E0
F0 "sheet5BA037D8" 50
F1 "DigitalOutput.sch" 50
F2 "CTRL" I L 5550 3250 50 
F3 "~Out" I R 6650 3300 50 
$EndSheet
Text GLabel 3250 2750 0    60   Input ~ 0
DO6
Text GLabel 8850 2100 0    50   Input ~ 0
DO6_GND_BREAK
Wire Wire Line
	8850 2100 9000 2100
Text GLabel 3250 5100 0    50   Input ~ 0
SD_ENABLE
Text GLabel 3250 6000 0    50   Input ~ 0
SD_MODE
Text GLabel 8850 2200 0    50   Input ~ 0
DO7_GND_BREAK
Text GLabel 8850 2300 0    50   Input ~ 0
DO8_GND_BREAK
Wire Wire Line
	8850 2200 9000 2200
Wire Wire Line
	8850 2300 9000 2300
Text GLabel 6900 3700 2    50   Input ~ 0
DO7_GND_BREAK
Text GLabel 6900 4050 2    50   Input ~ 0
DO8_GND_BREAK
Text GLabel 5400 3650 0    60   Input ~ 0
DO7
Wire Wire Line
	5400 3650 5550 3650
Wire Wire Line
	6650 3700 6900 3700
$Sheet
S 5550 3600 1100 200 
U 5B9EF457
F0 "sheet5B9EF450" 50
F1 "DigitalOutput.sch" 50
F2 "CTRL" I L 5550 3650 50 
F3 "~Out" I R 6650 3700 50 
$EndSheet
Text GLabel 5400 4000 0    60   Input ~ 0
DO8
Wire Wire Line
	5400 4000 5550 4000
Wire Wire Line
	6650 4050 6900 4050
$Sheet
S 5550 3950 1100 200 
U 5B9F3247
F0 "sheet5B9F3240" 50
F1 "DigitalOutput.sch" 50
F2 "CTRL" I L 5550 4000 50 
F3 "~Out" I R 6650 4050 50 
$EndSheet
Text GLabel 3250 2850 0    60   Input ~ 0
DO7
Text GLabel 3250 2950 0    60   Input ~ 0
DO8
$Comp
L Device:C C1401
U 1 1 5B9F8E67
P 1700 5450
F 0 "C1401" H 1815 5496 50  0000 L CNN
F 1 "100n" H 1815 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1738 5300 50  0001 C CNN
F 3 "" H 1700 5450 50  0001 C CNN
	1    1700 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01402
U 1 1 5B9F8E6E
P 1700 5600
F 0 "#PWR01402" H 1700 5350 50  0001 C CNN
F 1 "GND" H 1705 5427 50  0000 C CNN
F 2 "" H 1700 5600 50  0001 C CNN
F 3 "" H 1700 5600 50  0001 C CNN
	1    1700 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01408
U 1 1 5B9F8E74
P 3750 6900
F 0 "#PWR01408" H 3750 6650 50  0001 C CNN
F 1 "GND" H 3755 6727 50  0000 C CNN
F 2 "" H 3750 6900 50  0001 C CNN
F 3 "" H 3750 6900 50  0001 C CNN
	1    3750 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01413
U 1 1 5B9F8E7F
P 4250 6700
F 0 "#PWR01413" H 4250 6450 50  0001 C CNN
F 1 "GND" V 4255 6572 50  0000 R CNN
F 2 "" H 4250 6700 50  0001 C CNN
F 3 "" H 4250 6700 50  0001 C CNN
	1    4250 6700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01412
U 1 1 5B9F8E85
P 4250 6600
F 0 "#PWR01412" H 4250 6350 50  0001 C CNN
F 1 "GND" V 4255 6472 50  0000 R CNN
F 2 "" H 4250 6600 50  0001 C CNN
F 3 "" H 4250 6600 50  0001 C CNN
	1    4250 6600
	0    -1   -1   0   
$EndComp
Text GLabel 4250 6200 2    60   Input ~ 0
I2C_SCL
Text GLabel 4250 6300 2    60   Input ~ 0
I2C_SDA
NoConn ~ 4250 5500
Text Notes 4750 6850 2    60   ~ 0
Adress 0x21
Text Notes 2200 5800 1    60   ~ 0
Near MCP23017
Wire Notes Line
	1400 5900 2450 5900
Wire Notes Line
	2450 5900 2450 5000
Wire Notes Line
	2450 5000 1400 5000
Wire Notes Line
	1400 5000 1400 5900
$Comp
L power:+3.3V #PWR01407
U 1 1 5B9F8E9B
P 3750 4900
F 0 "#PWR01407" H 3750 4750 50  0001 C CNN
F 1 "+3.3V" V 3750 5150 50  0000 C CNN
F 2 "" H 3750 4900 50  0001 C CNN
F 3 "" H 3750 4900 50  0001 C CNN
	1    3750 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01401
U 1 1 5B9F8EA1
P 1700 5300
F 0 "#PWR01401" H 1700 5150 50  0001 C CNN
F 1 "+3.3V" H 1700 5500 50  0000 C CNN
F 2 "" H 1700 5300 50  0001 C CNN
F 3 "" H 1700 5300 50  0001 C CNN
	1    1700 5300
	1    0    0    -1  
$EndComp
Text GLabel 4250 5100 2    50   Input ~ 0
I2C_Reset
$Comp
L power:+3.3V #PWR01411
U 1 1 5BA100B7
P 4250 6500
F 0 "#PWR01411" H 4250 6350 50  0001 C CNN
F 1 "+3.3V" V 4265 6628 50  0000 L CNN
F 2 "" H 4250 6500 50  0001 C CNN
F 3 "" H 4250 6500 50  0001 C CNN
	1    4250 6500
	0    1    1    0   
$EndComp
NoConn ~ 4250 5600
$Comp
L PerMalmberg:MCP23017 U1401
U 1 1 5B9F8E58
P 3750 7000
F 0 "U1401" H 3750 7750 50  0000 C CNN
F 1 "MCP23017" H 3800 8050 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 3800 6050 50  0001 L CNN
F 3 "" H 4000 8000 50  0001 C CNN
	1    3750 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6100 3250 6200
Connection ~ 3250 6200
Wire Wire Line
	3250 6200 3250 6300
Connection ~ 3250 6300
Wire Wire Line
	3250 6300 3250 6400
Connection ~ 3250 6400
Wire Wire Line
	3250 6400 3250 6500
Connection ~ 3250 6500
Wire Wire Line
	3250 6500 3250 6600
Connection ~ 3250 6600
Wire Wire Line
	3250 6600 3250 6700
$Comp
L power:GND #PWR01404
U 1 1 5B9C35AC
P 2950 6400
F 0 "#PWR01404" H 2950 6150 50  0001 C CNN
F 1 "GND" H 2955 6227 50  0000 C CNN
F 2 "" H 2950 6400 50  0001 C CNN
F 3 "" H 2950 6400 50  0001 C CNN
	1    2950 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R1402
U 1 1 5B9C5229
P 3100 6400
AR Path="/5B62EDB8/5B9C5229" Ref="R1402"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5B9C5229" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5B9C5229" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5B9C5229" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5B9C5229" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5B9C5229" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5B9C5229" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5B9C5229" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5B9C5229" Ref="R?"  Part="1" 
F 0 "R1402" H 3300 6350 50  0000 C CNN
F 1 "10k" H 3250 6450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3030 6400 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 3100 6400 50  0001 C CNN
	1    3100 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 5400 3250 5500
Connection ~ 3250 5500
Wire Wire Line
	3250 5500 3250 5600
Connection ~ 3250 5600
Wire Wire Line
	3250 5600 3250 5700
Connection ~ 3250 5700
Wire Wire Line
	3250 5700 3250 5800
$Comp
L Device:R R1401
U 1 1 5B9C974D
P 3100 5600
AR Path="/5B62EDB8/5B9C974D" Ref="R1401"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5B9C974D" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5B9C974D" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5B9C974D" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5B9C974D" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5B9C974D" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5B9C974D" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5B9C974D" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5B9C974D" Ref="R?"  Part="1" 
F 0 "R1401" H 3300 5550 50  0000 C CNN
F 1 "10k" H 3250 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3030 5600 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 3100 5600 50  0001 C CNN
	1    3100 5600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01403
U 1 1 5B9CAEBB
P 2950 5600
F 0 "#PWR01403" H 2950 5350 50  0001 C CNN
F 1 "GND" H 2955 5427 50  0000 C CNN
F 2 "" H 2950 5600 50  0001 C CNN
F 3 "" H 2950 5600 50  0001 C CNN
	1    2950 5600
	0    1    1    0   
$EndComp
$EndSCHEMATC
