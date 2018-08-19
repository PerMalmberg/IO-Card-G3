EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 31
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
L PerMalmberg:ESP32_WROVER U301
U 1 1 5B61FB8F
P 4250 4300
F 0 "U301" H 4300 6500 50  0000 C CNN
F 1 "ESP32_WROVER" H 4500 6400 50  0000 C CNN
F 2 "PerMalmberg:ESP32_WROVER" H 4050 4200 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/891/esp32-wrover_datasheet_en-1223875.pdf" H 4050 4200 50  0001 C CNN
	1    4250 4300
	1    0    0    -1  
$EndComp
Text GLabel 7550 3000 2    60   Input ~ 0
DIGITAL_I2C_SCL
Text GLabel 7550 3100 2    60   Input ~ 0
DIGITAL_I2C_SDA
$Comp
L Device:R R310
U 1 1 5B73B18A
P 7450 2800
F 0 "R310" H 7520 2846 50  0000 L CNN
F 1 "10k" H 7520 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 2800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 7450 2800 50  0001 C CNN
	1    7450 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R308
U 1 1 5B73B205
P 7150 2800
F 0 "R308" H 7220 2846 50  0000 L CNN
F 1 "10k" H 7220 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7080 2800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 7150 2800 50  0001 C CNN
	1    7150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3000 7150 3000
Wire Wire Line
	5250 3100 7450 3100
Wire Wire Line
	7450 2950 7450 3100
Connection ~ 7450 3100
Wire Wire Line
	7450 3100 7550 3100
Wire Wire Line
	7150 2950 7150 3000
Connection ~ 7150 3000
Wire Wire Line
	7150 3000 5250 3000
$Comp
L power:+3.3V #PWR0313
U 1 1 5B73B348
P 7300 2650
F 0 "#PWR0313" H 7300 2500 50  0001 C CNN
F 1 "+3.3V" H 7315 2823 50  0000 C CNN
F 2 "" H 7300 2650 50  0001 C CNN
F 3 "" H 7300 2650 50  0001 C CNN
	1    7300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2650 7300 2650
Connection ~ 7300 2650
Wire Wire Line
	7300 2650 7450 2650
$Comp
L Logic_LevelTranslator:TXB0102DCU U302
U 1 1 5B73B5D9
P 8500 4750
F 0 "U302" H 8700 4250 50  0000 C CNN
F 1 "TXB0102DCU" H 8900 4150 50  0000 C CNN
F 2 "Package_SO:VSSOP-8_2.4x2.1mm_P0.5mm" H 8500 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0102.pdf" H 8500 4720 50  0001 C CNN
	1    8500 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0317
U 1 1 5B73B74B
P 8400 4150
F 0 "#PWR0317" H 8400 4000 50  0001 C CNN
F 1 "+3.3V" H 8415 4323 50  0000 C CNN
F 2 "" H 8400 4150 50  0001 C CNN
F 3 "" H 8400 4150 50  0001 C CNN
	1    8400 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0319
U 1 1 5B73B784
P 8600 4150
F 0 "#PWR0319" H 8600 4000 50  0001 C CNN
F 1 "+5V" H 8615 4323 50  0000 C CNN
F 2 "" H 8600 4150 50  0001 C CNN
F 3 "" H 8600 4150 50  0001 C CNN
	1    8600 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C306
U 1 1 5B73B7BC
P 8750 4200
F 0 "C306" V 8498 4200 50  0000 C CNN
F 1 "100n" V 8589 4200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8788 4050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/AVX/08055C104JAZ2A?qs=%2fha2pyFaduhAZO93RAy6IIlm7PKA7PN%2fjITVSPkVEftSFjliFvU6%2fw%3d%3d" H 8750 4200 50  0001 C CNN
	1    8750 4200
	0    1    1    0   
$EndComp
$Comp
L Device:C C305
U 1 1 5B73B81A
P 8250 4200
F 0 "C305" V 8502 4200 50  0000 C CNN
F 1 "100n" V 8411 4200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8288 4050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/AVX/08055C104JAZ2A?qs=%2fha2pyFaduhAZO93RAy6IIlm7PKA7PN%2fjITVSPkVEftSFjliFvU6%2fw%3d%3d" H 8250 4200 50  0001 C CNN
	1    8250 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 4250 8400 4200
Connection ~ 8400 4200
Wire Wire Line
	8400 4200 8400 4150
Wire Wire Line
	8600 4150 8600 4200
Connection ~ 8600 4200
Wire Wire Line
	8600 4200 8600 4250
Wire Wire Line
	5250 4000 7400 4000
Wire Wire Line
	7400 4000 7400 4650
Wire Wire Line
	7400 4650 8100 4650
Wire Wire Line
	5250 4100 7350 4100
Wire Wire Line
	7350 4100 7350 4850
Wire Wire Line
	7350 4850 8100 4850
Wire Wire Line
	5250 4200 7300 4200
Wire Wire Line
	7300 4200 7300 5050
Wire Wire Line
	7300 5050 8100 5050
$Comp
L Device:R R309
U 1 1 5B73C224
P 7300 5200
F 0 "R309" H 7370 5246 50  0000 L CNN
F 1 "10k" H 7370 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7230 5200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 7300 5200 50  0001 C CNN
	1    7300 5200
	1    0    0    -1  
$EndComp
Connection ~ 7300 5050
$Comp
L power:GND #PWR0314
U 1 1 5B73C2A7
P 7300 5350
F 0 "#PWR0314" H 7300 5100 50  0001 C CNN
F 1 "GND" H 7305 5177 50  0000 C CNN
F 2 "" H 7300 5350 50  0001 C CNN
F 3 "" H 7300 5350 50  0001 C CNN
	1    7300 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0315
U 1 1 5B73C2C7
P 8100 4200
F 0 "#PWR0315" H 8100 3950 50  0001 C CNN
F 1 "GND" V 8105 4072 50  0000 R CNN
F 2 "" H 8100 4200 50  0001 C CNN
F 3 "" H 8100 4200 50  0001 C CNN
	1    8100 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0320
U 1 1 5B73C2E7
P 8900 4200
F 0 "#PWR0320" H 8900 3950 50  0001 C CNN
F 1 "GND" V 8905 4072 50  0000 R CNN
F 2 "" H 8900 4200 50  0001 C CNN
F 3 "" H 8900 4200 50  0001 C CNN
	1    8900 4200
	0    -1   -1   0   
$EndComp
Text GLabel 8900 4650 2    60   Input ~ 0
Wiegand_D0
Text GLabel 8900 4850 2    60   Input ~ 0
Wiegand_D1
$Comp
L power:GND #PWR0318
U 1 1 5B73CB5F
P 8500 5250
F 0 "#PWR0318" H 8500 5000 50  0001 C CNN
F 1 "GND" H 8505 5077 50  0000 C CNN
F 2 "" H 8500 5250 50  0001 C CNN
F 3 "" H 8500 5250 50  0001 C CNN
	1    8500 5250
	1    0    0    -1  
$EndComp
Text GLabel 7550 3200 2    60   Input ~ 0
ANALOG_I2C_SCL
Text GLabel 7550 3300 2    60   Input ~ 0
ANALOG_I2C_SDA
Text GLabel 5500 2700 2    60   Input ~ 0
ANALOG_RDY_2
Text GLabel 5500 2800 2    60   Input ~ 0
ANALOG_RDY_1
Wire Wire Line
	7550 3200 6550 3200
Wire Wire Line
	5250 3300 6850 3300
$Comp
L Device:R R307
U 1 1 5B741A0F
P 6850 2800
F 0 "R307" H 6920 2846 50  0000 L CNN
F 1 "10k" H 6920 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6780 2800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 6850 2800 50  0001 C CNN
	1    6850 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R306
U 1 1 5B741A15
P 6550 2800
F 0 "R306" H 6620 2846 50  0000 L CNN
F 1 "10k" H 6620 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6480 2800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 6550 2800 50  0001 C CNN
	1    6550 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0312
U 1 1 5B741A1B
P 6700 2650
F 0 "#PWR0312" H 6700 2500 50  0001 C CNN
F 1 "+3.3V" H 6715 2823 50  0000 C CNN
F 2 "" H 6700 2650 50  0001 C CNN
F 3 "" H 6700 2650 50  0001 C CNN
	1    6700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2650 6700 2650
Connection ~ 6700 2650
Wire Wire Line
	6700 2650 6850 2650
Wire Wire Line
	6850 2950 6850 3300
Connection ~ 6850 3300
Wire Wire Line
	6850 3300 7550 3300
Wire Wire Line
	6550 2950 6550 3200
Connection ~ 6550 3200
Wire Wire Line
	6550 3200 5250 3200
Wire Wire Line
	5250 2800 5500 2800
Wire Wire Line
	5500 2700 5250 2700
Text GLabel 5500 2600 2    60   Input ~ 0
DIA_Interrupt
Wire Wire Line
	5500 2600 5250 2600
$Comp
L power:GND #PWR0309
U 1 1 5B745E94
P 3650 1900
F 0 "#PWR0309" H 3650 1650 50  0001 C CNN
F 1 "GND" V 3655 1772 50  0000 R CNN
F 2 "" H 3650 1900 50  0001 C CNN
F 3 "" H 3650 1900 50  0001 C CNN
	1    3650 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 2200 3500 2100
Wire Wire Line
	3500 2100 3600 2100
Wire Wire Line
	3650 2100 3700 2100
Wire Wire Line
	3800 2100 3800 2200
Connection ~ 3650 2100
Wire Wire Line
	3700 2100 3700 2200
Connection ~ 3700 2100
Wire Wire Line
	3700 2100 3800 2100
Wire Wire Line
	3600 2200 3600 2100
Connection ~ 3600 2100
Wire Wire Line
	3600 2100 3650 2100
$Comp
L Device:C C303
U 1 1 5B749EFC
P 3250 1300
F 0 "C303" H 3365 1346 50  0000 L CNN
F 1 "22u" H 3365 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3288 1150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Murata-Electronics/GRM219R61C226ME15L?qs=sGAEpiMZZMs0AnBnWHyRQFv7x1xn%252bYFdlpx3rHjqsYGFGOccM8ifgQ%3d%3d" H 3250 1300 50  0001 C CNN
	1    3250 1300
	1    0    0    -1  
$EndComp
Connection ~ 3650 1900
Wire Wire Line
	3650 1900 3650 2100
$Comp
L power:+3.3V #PWR0310
U 1 1 5B74BC3F
P 4100 1150
F 0 "#PWR0310" H 4100 1000 50  0001 C CNN
F 1 "+3.3V" H 4115 1323 50  0000 C CNN
F 2 "" H 4100 1150 50  0001 C CNN
F 3 "" H 4100 1150 50  0001 C CNN
	1    4100 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2200 4100 1150
Connection ~ 4100 1150
Wire Wire Line
	3250 1450 3650 1450
Wire Wire Line
	3650 1450 3650 1900
Connection ~ 2100 2650
$Comp
L power:GND #PWR0304
U 1 1 5B753F4C
P 2100 2950
F 0 "#PWR0304" H 2100 2700 50  0001 C CNN
F 1 "GND" H 2105 2777 50  0000 C CNN
F 2 "" H 2100 2950 50  0001 C CNN
F 3 "" H 2100 2950 50  0001 C CNN
	1    2100 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0303
U 1 1 5B753F98
P 2100 2350
F 0 "#PWR0303" H 2100 2200 50  0001 C CNN
F 1 "+3.3V" H 2115 2523 50  0000 C CNN
F 2 "" H 2100 2350 50  0001 C CNN
F 3 "" H 2100 2350 50  0001 C CNN
	1    2100 2350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW302
U 1 1 5B75402F
P 1750 2650
F 0 "SW302" H 1750 2935 50  0000 C CNN
F 1 "Reset" H 1750 2844 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_KXT3" H 1750 2850 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/CK/KXT331LHS?qs=sGAEpiMZZMsgGjVA3toVBICuw%2fFQq%2fBnDsOBIRFitAg%3d" H 1750 2850 50  0001 C CNN
	1    1750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2900 1950 2900
Wire Wire Line
	2100 2650 1950 2650
Wire Wire Line
	1950 2900 1950 2650
$Comp
L power:GND #PWR0302
U 1 1 5B75A1F9
P 1550 2650
F 0 "#PWR0302" H 1550 2400 50  0001 C CNN
F 1 "GND" V 1555 2522 50  0000 R CNN
F 2 "" H 1550 2650 50  0001 C CNN
F 3 "" H 1550 2650 50  0001 C CNN
	1    1550 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C302
U 1 1 5B75A3CA
P 2100 2800
F 0 "C302" H 1985 2754 50  0000 R CNN
F 1 "100n" H 1985 2845 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2138 2650 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/AVX/08055C104JAZ2A?qs=%2fha2pyFaduhAZO93RAy6IIlm7PKA7PN%2fjITVSPkVEftSFjliFvU6%2fw%3d%3d" H 2100 2800 50  0001 C CNN
	1    2100 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:C C301
U 1 1 5B75A589
P 1700 2900
F 0 "C301" V 1850 2900 50  0000 C CNN
F 1 "100n" V 1950 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1738 2750 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/AVX/08055C104JAZ2A?qs=%2fha2pyFaduhAZO93RAy6IIlm7PKA7PN%2fjITVSPkVEftSFjliFvU6%2fw%3d%3d" H 1700 2900 50  0001 C CNN
	1    1700 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R301
U 1 1 5B75C6A6
P 2100 2500
F 0 "R301" H 2170 2546 50  0000 L CNN
F 1 "10k" H 2170 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2030 2500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 2100 2500 50  0001 C CNN
	1    2100 2500
	1    0    0    -1  
$EndComp
Connection ~ 1950 2650
Wire Wire Line
	1550 2900 1550 2650
Connection ~ 1550 2650
$Comp
L Device:C C304
U 1 1 5B75DA33
P 3650 1300
F 0 "C304" H 3535 1254 50  0000 R CNN
F 1 "100n" H 3535 1345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3688 1150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/AVX/08055C104JAZ2A?qs=%2fha2pyFaduhAZO93RAy6IIlm7PKA7PN%2fjITVSPkVEftSFjliFvU6%2fw%3d%3d" H 3650 1300 50  0001 C CNN
	1    3650 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 1150 3650 1150
Connection ~ 3650 1450
Connection ~ 3650 1150
Wire Wire Line
	3650 1150 4100 1150
$Comp
L power:GND #PWR0301
U 1 1 5B75DF86
P 1100 3400
F 0 "#PWR0301" H 1100 3150 50  0001 C CNN
F 1 "GND" V 1105 3272 50  0000 R CNN
F 2 "" H 1100 3400 50  0001 C CNN
F 3 "" H 1100 3400 50  0001 C CNN
	1    1100 3400
	0    1    1    0   
$EndComp
Text GLabel 5250 3900 2    60   Input ~ 0
BELL_CTRL
Text GLabel 5250 3800 2    60   Input ~ 0
SIREN_CTRL
Text Notes 6000 6300 0    50   ~ 0
Check placement of pins so othey\nare easy to wire with flat cable
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J301
U 1 1 5B6A5C70
P 5650 5700
F 0 "J301" H 5700 6217 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 5700 6126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 5650 5700 50  0001 C CNN
F 3 "~" H 5650 5700 50  0001 C CNN
	1    5650 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0311
U 1 1 5B6ACD51
P 5450 5500
F 0 "#PWR0311" H 5450 5250 50  0001 C CNN
F 1 "GND" H 5455 5327 50  0000 C CNN
F 2 "" H 5450 5500 50  0001 C CNN
F 3 "" H 5450 5500 50  0001 C CNN
	1    5450 5500
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0305
U 1 1 5B6BD02F
P 2900 5450
F 0 "#PWR0305" H 2900 5300 50  0001 C CNN
F 1 "+3.3V" H 2915 5623 50  0000 C CNN
F 2 "" H 2900 5450 50  0001 C CNN
F 3 "" H 2900 5450 50  0001 C CNN
	1    2900 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R302
U 1 1 5B6BD035
P 2900 5300
F 0 "R302" H 2970 5346 50  0000 L CNN
F 1 "10k" H 2970 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2830 5300 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 2900 5300 50  0001 C CNN
	1    2900 5300
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0306
U 1 1 5B6C640E
P 3050 5950
F 0 "#PWR0306" H 3050 5800 50  0001 C CNN
F 1 "+3.3V" H 3065 6123 50  0000 C CNN
F 2 "" H 3050 5950 50  0001 C CNN
F 3 "" H 3050 5950 50  0001 C CNN
	1    3050 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R303
U 1 1 5B6C6414
P 3050 5800
F 0 "R303" H 3120 5846 50  0000 L CNN
F 1 "10k" H 3120 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2980 5800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 3050 5800 50  0001 C CNN
	1    3050 5800
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0307
U 1 1 5B6CF7CA
P 3200 5450
F 0 "#PWR0307" H 3200 5300 50  0001 C CNN
F 1 "+3.3V" H 3215 5623 50  0000 C CNN
F 2 "" H 3200 5450 50  0001 C CNN
F 3 "" H 3200 5450 50  0001 C CNN
	1    3200 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R304
U 1 1 5B6CF7D0
P 3200 5300
F 0 "R304" H 3270 5346 50  0000 L CNN
F 1 "10k" H 3270 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3130 5300 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 3200 5300 50  0001 C CNN
	1    3200 5300
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0308
U 1 1 5B6D1CB6
P 3300 5950
F 0 "#PWR0308" H 3300 5800 50  0001 C CNN
F 1 "+3.3V" H 3315 6123 50  0000 C CNN
F 2 "" H 3300 5950 50  0001 C CNN
F 3 "" H 3300 5950 50  0001 C CNN
	1    3300 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R305
U 1 1 5B6D1CBC
P 3300 5800
F 0 "R305" H 3370 5846 50  0000 L CNN
F 1 "10k" H 3370 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3230 5800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 3300 5800 50  0001 C CNN
	1    3300 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 5650 3300 4050
Wire Wire Line
	3300 4050 3200 4050
Wire Wire Line
	3200 4050 3200 3950
Wire Wire Line
	3200 3950 3250 3950
Wire Wire Line
	3200 5150 3200 4100
Wire Wire Line
	3200 4100 3100 4100
Wire Wire Line
	3100 4100 3100 3850
Wire Wire Line
	3100 3850 3250 3850
Wire Wire Line
	3050 5650 3050 3750
Wire Wire Line
	3050 3750 3250 3750
Wire Wire Line
	2900 3650 3250 3650
Text Notes 2400 6250 0    50   ~ 0
Optional, solder if not present on the JTAG debugger.
Wire Notes Line
	2350 6300 4550 6300
Wire Notes Line
	4550 6300 4550 5150
Wire Notes Line
	4550 5150 2350 5150
Wire Notes Line
	2350 5150 2350 6300
Text Label 2650 2650 0    50   ~ 0
CH_Enable
Text Label 6100 5600 0    50   ~ 0
MTMS
Text Label 6100 5700 0    50   ~ 0
MTDI
Text Label 6100 5900 0    50   ~ 0
MTCK
Text Label 6100 5800 0    50   ~ 0
MTDO
Text Label 2950 2900 0    50   ~ 0
TDX0
Text Label 2950 3000 0    50   ~ 0
RDX0
Text Label 5950 5500 0    50   ~ 0
Boot_option
Text Label 5200 5700 2    50   ~ 0
TDX0
Text Label 5200 5800 2    50   ~ 0
RDX0
Wire Wire Line
	3250 2900 2950 2900
Wire Wire Line
	3250 3000 2950 3000
Text Label 5200 5600 2    50   ~ 0
CH_Enable
Text Label 2700 3400 0    50   ~ 0
Boot_option
Wire Wire Line
	2100 2650 3250 2650
Wire Wire Line
	5450 5600 5200 5600
Wire Wire Line
	5200 5700 5450 5700
Wire Wire Line
	5200 5800 5450 5800
NoConn ~ 5450 5900
Wire Wire Line
	6200 5900 5950 5900
Wire Wire Line
	5950 5800 6200 5800
Wire Wire Line
	6200 5700 5950 5700
Wire Wire Line
	5950 5600 6200 5600
Wire Wire Line
	2900 5150 2900 3650
Text Label 2900 4450 1    50   ~ 0
MTMS
Text Label 3050 4450 1    50   ~ 0
MTDI
Text Label 3200 4450 1    50   ~ 0
MTCK
Text Label 3300 4450 1    50   ~ 0
MTDO
$Comp
L Device:R R313
U 1 1 5B732AFF
P 8500 1700
F 0 "R313" H 8570 1746 50  0000 L CNN
F 1 "10k" H 8570 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8430 1700 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 8500 1700 50  0001 C CNN
	1    8500 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R312
U 1 1 5B732B45
P 8150 1700
F 0 "R312" H 8220 1746 50  0000 L CNN
F 1 "10k" H 8220 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8080 1700 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 8150 1700 50  0001 C CNN
	1    8150 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R311
U 1 1 5B732B8F
P 7800 1700
F 0 "R311" H 7870 1746 50  0000 L CNN
F 1 "10k" H 7870 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 1700 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay-Draloric/CRCW080510K0FKEAHP?qs=%2fha2pyFadui6t5gBae62oU%2fZ%2fWugcOCNLdGlz%252bXqxsCBNl3qt1JobIx3jP49DsQC" H 7800 1700 50  0001 C CNN
	1    7800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1450 8500 1450
Wire Wire Line
	8500 1450 8500 1550
Wire Wire Line
	9100 1350 8150 1350
Wire Wire Line
	8150 1350 8150 1550
Wire Wire Line
	9100 1250 7800 1250
Wire Wire Line
	7800 1250 7800 1550
$Comp
L power:+3.3V #PWR0321
U 1 1 5B73AAEB
P 9750 1350
F 0 "#PWR0321" H 9750 1200 50  0001 C CNN
F 1 "+3.3V" H 9765 1523 50  0000 C CNN
F 2 "" H 9750 1350 50  0001 C CNN
F 3 "" H 9750 1350 50  0001 C CNN
	1    9750 1350
	0    1    1    0   
$EndComp
Text Label 8850 1250 0    50   ~ 0
ADDR_0
Text Label 8850 1350 0    50   ~ 0
ADDR_1
Text Label 8850 1450 0    50   ~ 0
ADDR_2
Wire Wire Line
	7800 1950 7800 1850
Wire Wire Line
	8150 1850 8150 1950
Wire Wire Line
	8500 1950 8500 1850
Text Label 5400 3700 0    50   ~ 0
ADDR_0
Text Label 5400 3600 0    50   ~ 0
ADDR_1
Text Label 5400 3500 0    50   ~ 0
ADDR_2
Wire Wire Line
	5400 3400 5250 3400
Wire Wire Line
	5250 3500 5400 3500
Wire Wire Line
	5400 3600 5250 3600
Wire Wire Line
	5250 3700 5400 3700
$Comp
L power:GND #PWR0316
U 1 1 5B75512D
P 8350 1950
F 0 "#PWR0316" H 8350 1700 50  0001 C CNN
F 1 "GND" H 8355 1777 50  0000 C CNN
F 2 "" H 8350 1950 50  0001 C CNN
F 3 "" H 8350 1950 50  0001 C CNN
	1    8350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1950 8150 1950
Connection ~ 8150 1950
Wire Wire Line
	8150 1950 8350 1950
Connection ~ 8350 1950
Wire Wire Line
	8350 1950 8500 1950
NoConn ~ 5250 2500
Text GLabel 5400 3400 2    50   Input ~ 0
I2C_Reset
$Comp
L Switch:SW_Push SW301
U 1 1 5B79DE4D
P 1300 3400
F 0 "SW301" H 1300 3685 50  0000 C CNN
F 1 "Boot option" H 1300 3594 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_KXT3" H 1300 3600 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/CK/KXT331LHS?qs=sGAEpiMZZMsgGjVA3toVBICuw%2fFQq%2fBnDsOBIRFitAg%3d" H 1300 3600 50  0001 C CNN
	1    1300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3400 1500 3400
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J?
U 1 1 5B7B0A2D
P 9300 1350
F 0 "J?" H 9350 1667 50  0000 C CNN
F 1 "Conn_02x03_Counter_Clockwise" H 9350 1576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 9300 1350 50  0001 C CNN
F 3 "~" H 9300 1350 50  0001 C CNN
	1    9300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1250 9600 1350
Connection ~ 9600 1350
Wire Wire Line
	9600 1350 9600 1450
Wire Wire Line
	9600 1350 9750 1350
$EndSCHEMATC
