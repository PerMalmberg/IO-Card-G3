EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 14 34
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
L PerMalmberg:MCP23017 U1401
U 1 1 59C2CB37
P 3750 4150
F 0 "U1401" H 3750 4900 50  0000 C CNN
F 1 "MCP23017" H 3800 5200 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 3800 3200 50  0001 L CNN
F 3 "" H 4000 5150 50  0001 C CNN
	1    3750 4150
	1    0    0    -1  
$EndComp
Text GLabel 2250 1150 2    60   Input ~ 0
DI1
Text GLabel 1500 1100 0    60   Input ~ 0
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
Text GLabel 5550 1100 0    60   Input ~ 0
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
L power:GND #PWR01408
U 1 1 59C42579
P 3750 4050
F 0 "#PWR01408" H 3750 3800 50  0001 C CNN
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
Text GLabel 5550 1550 0    60   Input ~ 0
DO2
Text GLabel 5550 2000 0    60   Input ~ 0
DO3
Text GLabel 5550 2450 0    60   Input ~ 0
DO4
Text GLabel 5550 2900 0    60   Input ~ 0
DO5
$Comp
L power:GND #PWR01413
U 1 1 59C5AF84
P 4250 3850
F 0 "#PWR01413" H 4250 3600 50  0001 C CNN
F 1 "GND" V 4255 3722 50  0000 R CNN
F 2 "" H 4250 3850 50  0001 C CNN
F 3 "" H 4250 3850 50  0001 C CNN
	1    4250 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01412
U 1 1 59C5B1A8
P 4250 3750
F 0 "#PWR01412" H 4250 3500 50  0001 C CNN
F 1 "GND" V 4255 3622 50  0000 R CNN
F 2 "" H 4250 3750 50  0001 C CNN
F 3 "" H 4250 3750 50  0001 C CNN
	1    4250 3750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01411
U 1 1 59C5B287
P 4250 3650
F 0 "#PWR01411" H 4250 3400 50  0001 C CNN
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
Text GLabel 8750 4000 0    60   Input ~ 0
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
L power:+3.3V #PWR01407
U 1 1 5A53CE41
P 3750 2050
F 0 "#PWR01407" H 3750 1900 50  0001 C CNN
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
P 9800 3250
F 0 "BZ1401" H 9953 3279 50  0000 L CNN
F 1 "SDC1610M5-01" H 9953 3188 50  0000 L CNN
F 2 "PerMalmberg:SDC1610M5-01_Buzzer_16diam_5pitch" V 9775 3350 50  0001 C CNN
F 3 "~" V 9775 3350 50  0001 C CNN
	1    9800 3250
	1    0    0    -1  
$EndComp
Text GLabel 8750 3150 0    60   Input ~ 0
SIREN_CTRL
Text GLabel 1500 4700 0    60   Input ~ 0
DI8_2
Text GLabel 1500 4600 0    60   Input ~ 0
DI8_1
Text GLabel 2250 4650 2    60   Input ~ 0
DI8
Text GLabel 1500 4200 0    60   Input ~ 0
DI7_2
Text GLabel 1500 4100 0    60   Input ~ 0
DI7_1
Text GLabel 2250 4150 2    60   Input ~ 0
DI7
Text GLabel 1500 3700 0    60   Input ~ 0
DI6_2
Text GLabel 1500 3600 0    60   Input ~ 0
DI6_1
Text GLabel 2250 3650 2    60   Input ~ 0
DI6
Text GLabel 1500 3200 0    60   Input ~ 0
DI5_2
Text GLabel 1500 3100 0    60   Input ~ 0
DI5_1
Text GLabel 2250 3150 2    60   Input ~ 0
DI5
Text GLabel 1500 2700 0    60   Input ~ 0
DI4_2
Text GLabel 1500 2600 0    60   Input ~ 0
DI4_1
Text GLabel 2250 2650 2    60   Input ~ 0
DI4
Text GLabel 1500 2200 0    60   Input ~ 0
DI3_2
Text GLabel 1500 2100 0    60   Input ~ 0
DI3_1
Text GLabel 2250 2150 2    60   Input ~ 0
DI3
Text GLabel 1500 1700 0    60   Input ~ 0
DI2_2
Text GLabel 1500 1600 0    60   Input ~ 0
DI2_1
Text GLabel 2250 1650 2    60   Input ~ 0
DI2
$Sheet
S 1500 1050 750  350 
U 5B66E27E
F0 "DigitalInput1" 50
F1 "DigitalInput.sch" 50
F2 "~signal" O R 2250 1150 50 
F3 "Pwr" I L 1500 1300 50 
F4 "In1" I L 1500 1100 50 
F5 "In2" I L 1500 1200 50 
$EndSheet
Text GLabel 1500 1200 0    60   Input ~ 0
DI1_2
Text GLabel 4250 2250 2    50   Input ~ 0
I2C_Reset
Text GLabel 6650 1100 2    50   Input ~ 0
DO1_PWR
Text GLabel 6650 1550 2    50   Input ~ 0
DO2_PWR
Text GLabel 6650 2000 2    50   Input ~ 0
DO3_PWR
Text GLabel 6650 2450 2    50   Input ~ 0
DO4_PWR
Text GLabel 6650 2900 2    50   Input ~ 0
DO5_PWR
Text GLabel 8750 3600 0    60   Input ~ 0
SIREN_CTRL
Text GLabel 3250 5200 0    60   Input ~ 0
BELL_CTRL
Wire Wire Line
	4250 2750 4400 2750
Text GLabel 5550 3300 0    60   Input ~ 0
DO6
Text GLabel 6650 3300 2    50   Input ~ 0
DO6_PWR
Text GLabel 3250 2750 0    60   Input ~ 0
DO6
Text GLabel 3250 5100 0    50   Input ~ 0
SD_ENABLE
Text GLabel 3250 6000 0    50   Input ~ 0
SD_MODE
Text GLabel 6650 3700 2    50   Input ~ 0
DO7_PWR
Text GLabel 6650 4050 2    50   Input ~ 0
DO8_PWR
Text GLabel 5550 3700 0    60   Input ~ 0
DO7
Text GLabel 5550 4050 0    60   Input ~ 0
DO8
Text GLabel 3250 2850 0    60   Input ~ 0
DO7
Text GLabel 3250 2950 0    60   Input ~ 0
DO8
$Comp
L Device:C C1401
U 1 1 5B9F8E67
P 3500 7700
F 0 "C1401" H 3615 7746 50  0000 L CNN
F 1 "100n" H 3615 7655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3538 7550 50  0001 C CNN
F 3 "" H 3500 7700 50  0001 C CNN
	1    3500 7700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01404
U 1 1 5B9F8E6E
P 3500 7850
F 0 "#PWR01404" H 3500 7600 50  0001 C CNN
F 1 "GND" H 3505 7677 50  0000 C CNN
F 2 "" H 3500 7850 50  0001 C CNN
F 3 "" H 3500 7850 50  0001 C CNN
	1    3500 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01410
U 1 1 5B9F8E74
P 3750 6900
F 0 "#PWR01410" H 3750 6650 50  0001 C CNN
F 1 "GND" H 3755 6727 50  0000 C CNN
F 2 "" H 3750 6900 50  0001 C CNN
F 3 "" H 3750 6900 50  0001 C CNN
	1    3750 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01416
U 1 1 5B9F8E7F
P 4250 6700
F 0 "#PWR01416" H 4250 6450 50  0001 C CNN
F 1 "GND" V 4255 6572 50  0000 R CNN
F 2 "" H 4250 6700 50  0001 C CNN
F 3 "" H 4250 6700 50  0001 C CNN
	1    4250 6700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01415
U 1 1 5B9F8E85
P 4250 6600
F 0 "#PWR01415" H 4250 6350 50  0001 C CNN
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
Text Notes 4000 8050 1    60   ~ 0
Near MCP23017
Wire Notes Line
	3200 8150 4250 8150
Wire Notes Line
	4250 8150 4250 7250
Wire Notes Line
	4250 7250 3200 7250
Wire Notes Line
	3200 7250 3200 8150
$Comp
L power:+3.3V #PWR01409
U 1 1 5B9F8E9B
P 3750 4900
F 0 "#PWR01409" H 3750 4750 50  0001 C CNN
F 1 "+3.3V" V 3750 5150 50  0000 C CNN
F 2 "" H 3750 4900 50  0001 C CNN
F 3 "" H 3750 4900 50  0001 C CNN
	1    3750 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01403
U 1 1 5B9F8EA1
P 3500 7550
F 0 "#PWR01403" H 3500 7400 50  0001 C CNN
F 1 "+3.3V" H 3500 7750 50  0000 C CNN
F 2 "" H 3500 7550 50  0001 C CNN
F 3 "" H 3500 7550 50  0001 C CNN
	1    3500 7550
	1    0    0    -1  
$EndComp
Text GLabel 4250 5100 2    50   Input ~ 0
I2C_Reset
$Comp
L power:+3.3V #PWR01414
U 1 1 5BA100B7
P 4250 6500
F 0 "#PWR01414" H 4250 6350 50  0001 C CNN
F 1 "+3.3V" V 4265 6628 50  0000 L CNN
F 2 "" H 4250 6500 50  0001 C CNN
F 3 "" H 4250 6500 50  0001 C CNN
	1    4250 6500
	0    1    1    0   
$EndComp
NoConn ~ 4250 5600
$Comp
L PerMalmberg:MCP23017 U1402
U 1 1 5B9F8E58
P 3750 7000
F 0 "U1402" H 3750 7750 50  0000 C CNN
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
L power:GND #PWR01402
U 1 1 5B9C35AC
P 2950 6400
F 0 "#PWR01402" H 2950 6150 50  0001 C CNN
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
$Comp
L power:GND #PWR01417
U 1 1 5BA29A5F
P 9700 3350
F 0 "#PWR01417" H 9700 3100 50  0001 C CNN
F 1 "GND" H 9705 3177 50  0000 C CNN
F 2 "" H 9700 3350 50  0001 C CNN
F 3 "" H 9700 3350 50  0001 C CNN
	1    9700 3350
	1    0    0    -1  
$EndComp
$Sheet
S 5550 1000 1100 200 
U 5BA2AE80
F0 "Output1" 50
F1 "SelectableVoltageOutput.sch" 50
F2 "CTRL" I L 5550 1100 50 
F3 "Output" I R 6650 1100 50 
$EndSheet
$Sheet
S 5550 1450 1100 200 
U 5BA2C5A2
F0 "Output2" 50
F1 "SelectableVoltageOutput.sch" 50
F2 "CTRL" I L 5550 1550 50 
F3 "Output" I R 6650 1550 50 
$EndSheet
$Sheet
S 5550 1900 1100 200 
U 5BA2CB1A
F0 "Output3" 50
F1 "SelectableVoltageOutput.sch" 50
F2 "CTRL" I L 5550 2000 50 
F3 "Output" I R 6650 2000 50 
$EndSheet
$Sheet
S 5550 2350 1100 200 
U 5BA2D092
F0 "Output4" 50
F1 "SelectableVoltageOutput.sch" 50
F2 "CTRL" I L 5550 2450 50 
F3 "Output" I R 6650 2450 50 
$EndSheet
$Sheet
S 5550 2800 1100 200 
U 5BA2D691
F0 "Output5" 50
F1 "SelectableVoltageOutput.sch" 50
F2 "CTRL" I L 5550 2900 50 
F3 "Output" I R 6650 2900 50 
$EndSheet
$Sheet
S 5550 3200 1100 200 
U 5BA2DC09
F0 "Output6" 50
F1 "SelectableVoltageOutput.sch" 50
F2 "CTRL" I L 5550 3300 50 
F3 "Output" I R 6650 3300 50 
$EndSheet
$Sheet
S 5550 3600 1100 200 
U 5BA2E181
F0 "Output7" 50
F1 "SelectableVoltageOutput.sch" 50
F2 "CTRL" I L 5550 3700 50 
F3 "Output" I R 6650 3700 50 
$EndSheet
$Sheet
S 5550 3950 1100 200 
U 5BA2E71A
F0 "Output8" 50
F1 "SelectableVoltageOutput.sch" 50
F2 "CTRL" I L 5550 4050 50 
F3 "Output" I R 6650 4050 50 
$EndSheet
$Sheet
S 8750 3050 950  200 
U 5BA2F275
F0 "Internal siren" 50
F1 "5VDigitalOutput.sch" 50
F2 "CTRL" I L 8750 3150 50 
F3 "Output" I R 9700 3150 50 
$EndSheet
$Sheet
S 8750 3900 1100 200 
U 5BA3564E
F0 "Bell control" 50
F1 "SelectableVoltageOutput.sch" 50
F2 "CTRL" I L 8750 4000 50 
F3 "Output" I R 9850 4000 50 
$EndSheet
Text GLabel 9850 4000 2    50   Input ~ 0
BELL_PWR
Text GLabel 9700 3600 2    50   Input ~ 0
SIREN_PWR
$Sheet
S 8750 3500 950  200 
U 5BA35DC6
F0 "External siren" 50
F1 "12VDigitalOutput.sch" 50
F2 "CTRL" I L 8750 3600 50 
F3 "Output" I R 9700 3600 50 
$EndSheet
Text GLabel 1500 1300 0    50   Input ~ 0
DI1_PWR
Text GLabel 1500 1800 0    50   Input ~ 0
DI2_PWR
Text GLabel 1500 2300 0    50   Input ~ 0
DI3_PWR
Text GLabel 1500 2800 0    50   Input ~ 0
DI4_PWR
Text GLabel 1500 3300 0    50   Input ~ 0
DI5_PWR
Text GLabel 1500 3800 0    50   Input ~ 0
DI6_PWR
Text GLabel 1500 4300 0    50   Input ~ 0
DI7_PWR
Text GLabel 1500 4800 0    50   Input ~ 0
DI8_PWR
$Sheet
S 1500 1550 750  350 
U 5BA53A47
F0 "DigitalInput2" 50
F1 "DigitalInput.sch" 50
F2 "~signal" O R 2250 1650 50 
F3 "Pwr" I L 1500 1800 50 
F4 "In1" I L 1500 1600 50 
F5 "In2" I L 1500 1700 50 
$EndSheet
$Sheet
S 1500 2050 750  350 
U 5BA53BAF
F0 "DigitalInput3" 50
F1 "DigitalInput.sch" 50
F2 "~signal" O R 2250 2150 50 
F3 "Pwr" I L 1500 2300 50 
F4 "In1" I L 1500 2100 50 
F5 "In2" I L 1500 2200 50 
$EndSheet
$Sheet
S 1500 2550 750  350 
U 5BA53CC3
F0 "DigitalInput4" 50
F1 "DigitalInput.sch" 50
F2 "~signal" O R 2250 2650 50 
F3 "Pwr" I L 1500 2800 50 
F4 "In1" I L 1500 2600 50 
F5 "In2" I L 1500 2700 50 
$EndSheet
$Sheet
S 1500 3050 750  350 
U 5BA53E16
F0 "DigitalInput5" 50
F1 "DigitalInput.sch" 50
F2 "~signal" O R 2250 3150 50 
F3 "Pwr" I L 1500 3300 50 
F4 "In1" I L 1500 3100 50 
F5 "In2" I L 1500 3200 50 
$EndSheet
$Sheet
S 1500 3550 750  350 
U 5BA53F23
F0 "DigitalInput6" 50
F1 "DigitalInput.sch" 50
F2 "~signal" O R 2250 3650 50 
F3 "Pwr" I L 1500 3800 50 
F4 "In1" I L 1500 3600 50 
F5 "In2" I L 1500 3700 50 
$EndSheet
$Sheet
S 1500 4050 750  350 
U 5BA54030
F0 "DigitalInput7" 50
F1 "DigitalInput.sch" 50
F2 "~signal" O R 2250 4150 50 
F3 "Pwr" I L 1500 4300 50 
F4 "In1" I L 1500 4100 50 
F5 "In2" I L 1500 4200 50 
$EndSheet
$Sheet
S 1500 4550 750  350 
U 5BA5413D
F0 "DigitalInput8" 50
F1 "DigitalInput.sch" 50
F2 "~signal" O R 2250 4650 50 
F3 "Pwr" I L 1500 4800 50 
F4 "In1" I L 1500 4600 50 
F5 "In2" I L 1500 4700 50 
$EndSheet
$Comp
L Device:LED D?
U 1 1 5BA5B3F8
P 1450 5150
AR Path="/5B62EDB8/5B780EE8/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53A47/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53BAF/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53CC3/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53E16/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53F23/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA54030/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA5413D/5BA5B3F8" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA5B3F8" Ref="D1401"  Part="1" 
F 0 "D1401" H 1442 4895 50  0000 C CNN
F 1 "Armed" H 1442 4986 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 1450 5150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 1450 5150 50  0001 C CNN
	1    1450 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BA5B3FF
P 1750 5150
AR Path="/5B62EDB8/5B780EE8/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53A47/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53BAF/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53CC3/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53E16/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53F23/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA54030/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA5413D/5BA5B3FF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA5B3FF" Ref="R1401"  Part="1" 
F 0 "R1401" V 1543 5150 50  0000 C CNN
F 1 "165" V 1634 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1680 5150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 1750 5150 50  0001 C CNN
	1    1750 5150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5BA5B6E6
P 1300 5150
F 0 "#PWR0101" H 1300 4900 50  0001 C CNN
F 1 "GND" V 1305 5022 50  0000 R CNN
F 2 "" H 1300 5150 50  0001 C CNN
F 3 "" H 1300 5150 50  0001 C CNN
	1    1300 5150
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5BA5B774
P 1450 5500
AR Path="/5B62EDB8/5B780EE8/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53A47/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53BAF/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53CC3/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53E16/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53F23/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA54030/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA5413D/5BA5B774" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA5B774" Ref="D1402"  Part="1" 
F 0 "D1402" H 1442 5245 50  0000 C CNN
F 1 "Wifi" H 1442 5336 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 1450 5500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 1450 5500 50  0001 C CNN
	1    1450 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BA5B77B
P 1750 5500
AR Path="/5B62EDB8/5B780EE8/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53A47/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53BAF/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53CC3/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53E16/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53F23/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA54030/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA5413D/5BA5B77B" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA5B77B" Ref="R1403"  Part="1" 
F 0 "R1403" V 1543 5500 50  0000 C CNN
F 1 "165" V 1634 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1680 5500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 1750 5500 50  0001 C CNN
	1    1750 5500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BA5B782
P 1300 5500
F 0 "#PWR0102" H 1300 5250 50  0001 C CNN
F 1 "GND" V 1305 5372 50  0000 R CNN
F 2 "" H 1300 5500 50  0001 C CNN
F 3 "" H 1300 5500 50  0001 C CNN
	1    1300 5500
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5BA5B879
P 1450 5850
AR Path="/5B62EDB8/5B780EE8/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53A47/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53BAF/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53CC3/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53E16/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53F23/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA54030/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA5413D/5BA5B879" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA5B879" Ref="D1403"  Part="1" 
F 0 "D1403" H 1442 5595 50  0000 C CNN
F 1 "MQTT" H 1442 5686 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 1450 5850 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 1450 5850 50  0001 C CNN
	1    1450 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BA5B880
P 1750 5850
AR Path="/5B62EDB8/5B780EE8/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53A47/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53BAF/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53CC3/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53E16/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53F23/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA54030/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA5413D/5BA5B880" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA5B880" Ref="R1404"  Part="1" 
F 0 "R1404" V 1543 5850 50  0000 C CNN
F 1 "165" V 1634 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1680 5850 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 1750 5850 50  0001 C CNN
	1    1750 5850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5BA5B887
P 1300 5850
F 0 "#PWR0103" H 1300 5600 50  0001 C CNN
F 1 "GND" V 1305 5722 50  0000 R CNN
F 2 "" H 1300 5850 50  0001 C CNN
F 3 "" H 1300 5850 50  0001 C CNN
	1    1300 5850
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5BA5BA0A
P 1450 6250
AR Path="/5B62EDB8/5B780EE8/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53A47/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53BAF/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53CC3/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53E16/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53F23/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA54030/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA5413D/5BA5BA0A" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA5BA0A" Ref="D1404"  Part="1" 
F 0 "D1404" H 1442 5995 50  0000 C CNN
F 1 "Red" H 1442 6086 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 1450 6250 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 1450 6250 50  0001 C CNN
	1    1450 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BA5BA11
P 1750 6250
AR Path="/5B62EDB8/5B780EE8/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53A47/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53BAF/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53CC3/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53E16/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53F23/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA54030/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA5413D/5BA5BA11" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA5BA11" Ref="R1405"  Part="1" 
F 0 "R1405" V 1543 6250 50  0000 C CNN
F 1 "165" V 1634 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1680 6250 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 1750 6250 50  0001 C CNN
	1    1750 6250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5BA5BA18
P 1300 6250
F 0 "#PWR0104" H 1300 6000 50  0001 C CNN
F 1 "GND" V 1305 6122 50  0000 R CNN
F 2 "" H 1300 6250 50  0001 C CNN
F 3 "" H 1300 6250 50  0001 C CNN
	1    1300 6250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5BA5BDA3
P 1450 6650
AR Path="/5B62EDB8/5B780EE8/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53A47/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53BAF/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53CC3/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53E16/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53F23/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA54030/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA5413D/5BA5BDA3" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA5BDA3" Ref="D1405"  Part="1" 
F 0 "D1405" H 1442 6395 50  0000 C CNN
F 1 "Red" H 1442 6486 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 1450 6650 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 1450 6650 50  0001 C CNN
	1    1450 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BA5BDAA
P 1750 6650
AR Path="/5B62EDB8/5B780EE8/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53A47/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53BAF/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53CC3/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53E16/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53F23/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA54030/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA5413D/5BA5BDAA" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA5BDAA" Ref="R1406"  Part="1" 
F 0 "R1406" V 1543 6650 50  0000 C CNN
F 1 "165" V 1634 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1680 6650 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 1750 6650 50  0001 C CNN
	1    1750 6650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5BA5BDB1
P 1300 6650
F 0 "#PWR0105" H 1300 6400 50  0001 C CNN
F 1 "GND" V 1305 6522 50  0000 R CNN
F 2 "" H 1300 6650 50  0001 C CNN
F 3 "" H 1300 6650 50  0001 C CNN
	1    1300 6650
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5BA5D5BE
P 1450 7050
AR Path="/5B62EDB8/5B780EE8/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53A47/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53BAF/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53CC3/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53E16/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA53F23/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA54030/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA5413D/5BA5D5BE" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA5D5BE" Ref="D1406"  Part="1" 
F 0 "D1406" H 1442 6795 50  0000 C CNN
F 1 "Red" H 1442 6886 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 1450 7050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 1450 7050 50  0001 C CNN
	1    1450 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BA5D5C5
P 1750 7050
AR Path="/5B62EDB8/5B780EE8/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53A47/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53BAF/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53CC3/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53E16/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA53F23/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA54030/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA5413D/5BA5D5C5" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA5D5C5" Ref="R1407"  Part="1" 
F 0 "R1407" V 1543 7050 50  0000 C CNN
F 1 "165" V 1634 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1680 7050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 1750 7050 50  0001 C CNN
	1    1750 7050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5BA5D5CC
P 1300 7050
F 0 "#PWR0106" H 1300 6800 50  0001 C CNN
F 1 "GND" V 1305 6922 50  0000 R CNN
F 2 "" H 1300 7050 50  0001 C CNN
F 3 "" H 1300 7050 50  0001 C CNN
	1    1300 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 5150 2600 5150
Wire Wire Line
	2600 5150 2600 5300
Wire Wire Line
	2600 5300 3250 5300
Wire Wire Line
	1900 5500 2050 5500
Wire Wire Line
	2050 5500 2050 5400
Wire Wire Line
	2050 5400 3250 5400
Wire Wire Line
	1900 5850 2100 5850
Wire Wire Line
	2100 5850 2100 5500
Wire Wire Line
	2100 5500 3250 5500
Wire Wire Line
	1900 6250 2150 6250
Wire Wire Line
	2150 6250 2150 5600
Wire Wire Line
	2150 5600 3250 5600
Wire Wire Line
	1900 6650 2200 6650
Wire Wire Line
	2200 6650 2200 5700
Wire Wire Line
	2200 5700 3250 5700
Wire Wire Line
	1900 7050 2250 7050
Wire Wire Line
	2250 7050 2250 5800
Wire Wire Line
	2250 5800 3250 5800
$EndSCHEMATC
