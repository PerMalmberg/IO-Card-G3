EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 34
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
L Device:D_Zener D204
U 1 1 59BF8261
P 5950 2600
F 0 "D204" V 5904 2679 50  0000 L CNN
F 1 "3.3V" V 5995 2679 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 5950 2600 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/Vishay-Semiconductors/BZT52C3V3-E3-18/?qs=sGAEpiMZZMtQ8nqTKtFS%2fGqv07jO8JlbGw6qFNdMF40%3d" H 5950 2600 50  0001 C CNN
	1    5950 2600
	0    1    1    0   
$EndComp
$Comp
L Device:C C203
U 1 1 59BF8336
P 6450 2600
F 0 "C203" H 6565 2646 50  0000 L CNN
F 1 "100n" H 6565 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6488 2450 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 6450 2600 50  0001 C CNN
	1    6450 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C205
U 1 1 59BF840B
P 6950 2600
F 0 "C205" H 7068 2646 50  0000 L CNN
F 1 "100u" H 7068 2555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 6988 2450 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=ULD1C101MED1TDvirtualkey64700000virtualkey647-ULD1C101MED1TD" H 6950 2600 50  0001 C CNN
	1    6950 2600
	1    0    0    -1  
$EndComp
Text Notes 7200 2100 0    60   ~ 0
Max 5A / 16.5 W
$Comp
L Device:D_Zener D205
U 1 1 59BF8CE6
P 5950 3300
F 0 "D205" V 5904 3379 50  0000 L CNN
F 1 "5.1V" V 5995 3379 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 5950 3300 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=1N4733AW-TPvirtualkey54720000virtualkey833-1N4733AW-TP" H 5950 3300 50  0001 C CNN
	1    5950 3300
	0    1    1    0   
$EndComp
$Comp
L Device:C C204
U 1 1 59BF8CED
P 6450 3300
F 0 "C204" H 6565 3346 50  0000 L CNN
F 1 "100n" H 6565 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6488 3150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 6450 3300 50  0001 C CNN
	1    6450 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C206
U 1 1 59BF8CF4
P 6950 3300
F 0 "C206" H 7068 3346 50  0000 L CNN
F 1 "100u" H 7068 3255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 6988 3150 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=ULD1C101MED1TDvirtualkey64700000virtualkey647-ULD1C101MED1TD" H 6950 3300 50  0001 C CNN
	1    6950 3300
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1084-3.3 U201
U 1 1 59BF91FB
P 4800 2450
F 0 "U201" H 4800 2692 50  0000 C CNN
F 1 "LM1084-3.3" H 4800 2601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 4800 2700 50  0001 C CIN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=LM1084ISX-3.3%2fNOPBvirtualkey59500000virtualkey926-LM1084ISX33NOPB" H 4800 2450 50  0001 C CNN
	1    4800 2450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1084-5.0 U202
U 1 1 59BF92DC
P 4800 3150
F 0 "U202" H 4800 3392 50  0000 C CNN
F 1 "LM1084-5.0" H 4800 3301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 4800 3400 50  0001 C CIN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=LM1084ISX-5.0%2fNOPBvirtualkey59500000virtualkey926-LM1084ISX50NOPB" H 4800 3150 50  0001 C CNN
	1    4800 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C202
U 1 1 59BF942D
P 4200 3300
F 0 "C202" H 4315 3346 50  0000 L CNN
F 1 "100n" H 4315 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4238 3150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 4200 3300 50  0001 C CNN
	1    4200 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C201
U 1 1 59BF949B
P 4200 2600
F 0 "C201" H 4315 2646 50  0000 L CNN
F 1 "100n" H 4315 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4238 2450 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 4200 2600 50  0001 C CNN
	1    4200 2600
	1    0    0    -1  
$EndComp
Text Notes 7150 3050 0    60   ~ 0
Max 5A / 25W
$Comp
L Device:D D202
U 1 1 59BF993D
P 3900 2450
F 0 "D202" H 3950 2350 50  0000 C CNN
F 1 "RBR3MM30ATR" H 4000 2600 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 3900 2450 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/ROHM-Semiconductor/RBR3MM30ATR/?qs=sGAEpiMZZMtQ8nqTKtFS%2fI%2fhdhCnE2X2fXNJX4qgoABnAExEb9ZEtQ%3d%3d" H 3900 2450 50  0001 C CNN
	1    3900 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:D D203
U 1 1 59BF9A8A
P 3900 3150
F 0 "D203" H 3950 3000 50  0000 C CNN
F 1 "RBR3MM30ATR" H 4050 3300 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 3900 3150 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/ROHM-Semiconductor/RBR3MM30ATR/?qs=sGAEpiMZZMtQ8nqTKtFS%2fI%2fhdhCnE2X2fXNJX4qgoABnAExEb9ZEtQ%3d%3d" H 3900 3150 50  0001 C CNN
	1    3900 3150
	-1   0    0    1   
$EndComp
Text Notes 2850 2100 0    60   ~ 0
3.5A / 41.5W
$Comp
L power:+3.3V #PWR0211
U 1 1 59BFA80B
P 6950 2450
F 0 "#PWR0211" H 6950 2300 50  0001 C CNN
F 1 "+3.3V" H 6965 2623 50  0000 C CNN
F 2 "" H 6950 2450 50  0001 C CNN
F 3 "" H 6950 2450 50  0001 C CNN
	1    6950 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0212
U 1 1 59BFA8BE
P 6950 3150
F 0 "#PWR0212" H 6950 3000 50  0001 C CNN
F 1 "+5V" H 6965 3323 50  0000 C CNN
F 2 "" H 6950 3150 50  0001 C CNN
F 3 "" H 6950 3150 50  0001 C CNN
	1    6950 3150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0201
U 1 1 59BFCA10
P 4200 2450
F 0 "#FLG0201" H 4200 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 4200 2624 50  0000 C CNN
F 2 "" H 4200 2450 50  0001 C CNN
F 3 "" H 4200 2450 50  0001 C CNN
	1    4200 2450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0202
U 1 1 59BFCA4B
P 4200 3150
F 0 "#FLG0202" H 4200 3225 50  0001 C CNN
F 1 "PWR_FLAG" H 4200 3324 50  0000 C CNN
F 2 "" H 4200 3150 50  0001 C CNN
F 3 "" H 4200 3150 50  0001 C CNN
	1    4200 3150
	1    0    0    -1  
$EndComp
Text Label 6650 2450 0    60   ~ 0
3.3V
Text Label 6650 3150 0    60   ~ 0
5.0V
Text Label 6200 2750 0    60   ~ 0
GND
$Comp
L Device:EMI_Filter_LCL FL201
U 1 1 59C1AAEC
P 3050 2550
F 0 "FL201" H 3050 2867 50  0000 C CNN
F 1 "EMI_Filter_LCL" H 3050 2776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" V 3050 2550 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=DSS1NB31H104Q91Avirtualkey64800000virtualkey81-DSS1NB31H104Q91A" V 3050 2550 50  0001 C CNN
	1    3050 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0203
U 1 1 59C1AD14
P 3050 2650
F 0 "#PWR0203" H 3050 2400 50  0001 C CNN
F 1 "GND" H 3055 2477 50  0000 C CNN
F 2 "" H 3050 2650 50  0001 C CNN
F 3 "" H 3050 2650 50  0001 C CNN
	1    3050 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 59C1AE88
P 2000 2450
AR Path="/59C1AE88" Ref="#PWR?"  Part="1" 
AR Path="/59BF7E73/59C1AE88" Ref="#PWR?"  Part="1" 
AR Path="/5B29E68B/59C1AE88" Ref="#PWR?"  Part="1" 
AR Path="/5B38A121/59C1AE88" Ref="#PWR?"  Part="1" 
AR Path="/5B61ECB9/59C1AE88" Ref="#PWR0201"  Part="1" 
F 0 "#PWR0201" H 2000 2300 50  0001 C CNN
F 1 "+12V" H 2015 2623 50  0000 C CNN
F 2 "" H 2000 2450 50  0001 C CNN
F 3 "" H 2000 2450 50  0001 C CNN
	1    2000 2450
	1    0    0    -1  
$EndComp
Text Label 2700 2450 1    60   ~ 0
12V_Source
$Comp
L Connector_Generic:Conn_01x02 J202
U 1 1 59C6A7C3
P 5300 2250
F 0 "J202" V 5400 2200 50  0000 C CNN
F 1 "GS2" V 5300 2400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 5374 2250 50  0001 C CNN
F 3 "" H 5300 2250 50  0001 C CNN
	1    5300 2250
	0    1    -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J203
U 1 1 59C6AA5F
P 5300 2950
F 0 "J203" V 5400 2900 50  0000 C CNN
F 1 "GS2" V 5250 3100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 5374 2950 50  0001 C CNN
F 3 "" H 5300 2950 50  0001 C CNN
	1    5300 2950
	0    1    -1   0   
$EndComp
Connection ~ 5950 2450
Connection ~ 6450 2450
Connection ~ 6450 2750
Connection ~ 6950 2450
Connection ~ 6450 3450
Connection ~ 6950 3150
Connection ~ 3600 2450
Connection ~ 4200 2450
Connection ~ 4200 3150
Wire Wire Line
	3350 2450 3600 2450
Wire Wire Line
	3600 3150 3750 3150
Connection ~ 6450 3150
Connection ~ 5950 3150
Connection ~ 5950 3450
Wire Wire Line
	4050 2450 4200 2450
Wire Wire Line
	4050 3150 4200 3150
Wire Wire Line
	5950 2450 6450 2450
Wire Wire Line
	6450 2450 6950 2450
Wire Wire Line
	6450 2750 6950 2750
Wire Wire Line
	6450 3450 6950 3450
Wire Wire Line
	3600 2450 3750 2450
Wire Wire Line
	3600 2450 3600 3150
Wire Wire Line
	4200 2450 4500 2450
Wire Wire Line
	4200 3150 4500 3150
Wire Wire Line
	6450 3150 6950 3150
Wire Wire Line
	5950 3150 6450 3150
Wire Wire Line
	5950 3450 6450 3450
Wire Wire Line
	5200 2450 5100 2450
Wire Wire Line
	5800 2450 5950 2450
Wire Wire Line
	5100 3150 5200 3150
Wire Wire Line
	5800 3150 5950 3150
Text Label 5150 2450 3    50   ~ 0
3.3V_PWR
Text Label 5150 3150 3    50   ~ 0
5V_PWR
$Comp
L power:+3.3V #PWR0207
U 1 1 5B2CB13E
P 5850 1300
F 0 "#PWR0207" H 5850 1150 50  0001 C CNN
F 1 "+3.3V" H 5865 1473 50  0000 C CNN
F 2 "" H 5850 1300 50  0001 C CNN
F 3 "" H 5850 1300 50  0001 C CNN
	1    5850 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0210
U 1 1 5B2CB167
P 6250 1300
F 0 "#PWR0210" H 6250 1150 50  0001 C CNN
F 1 "+5V" H 6265 1473 50  0000 C CNN
F 2 "" H 6250 1300 50  0001 C CNN
F 3 "" H 6250 1300 50  0001 C CNN
	1    6250 1300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0205
U 1 1 5B2CB241
P 5850 1300
F 0 "#FLG0205" H 5850 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 1473 50  0000 C CNN
F 2 "" H 5850 1300 50  0001 C CNN
F 3 "~" H 5850 1300 50  0001 C CNN
	1    5850 1300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0206
U 1 1 5B2CB28F
P 6250 1300
F 0 "#FLG0206" H 6250 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 6250 1473 50  0000 C CNN
F 2 "" H 6250 1300 50  0001 C CNN
F 3 "~" H 6250 1300 50  0001 C CNN
	1    6250 1300
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5B2CC821
P 5350 1300
AR Path="/5B2CC821" Ref="#PWR?"  Part="1" 
AR Path="/59BF7E73/5B2CC821" Ref="#PWR?"  Part="1" 
AR Path="/5B29E68B/5B2CC821" Ref="#PWR?"  Part="1" 
AR Path="/5B38A121/5B2CC821" Ref="#PWR?"  Part="1" 
AR Path="/5B61ECB9/5B2CC821" Ref="#PWR0206"  Part="1" 
F 0 "#PWR0206" H 5350 1150 50  0001 C CNN
F 1 "+12V" H 5365 1473 50  0000 C CNN
F 2 "" H 5350 1300 50  0001 C CNN
F 3 "" H 5350 1300 50  0001 C CNN
	1    5350 1300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0204
U 1 1 5B2CC93A
P 5350 1300
F 0 "#FLG0204" H 5350 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 5350 1473 50  0000 C CNN
F 2 "" H 5350 1300 50  0001 C CNN
F 3 "~" H 5350 1300 50  0001 C CNN
	1    5350 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 2750 4200 2750
$Comp
L power:GND #PWR0208
U 1 1 5B2CEEA4
P 5950 2750
F 0 "#PWR0208" H 5950 2500 50  0001 C CNN
F 1 "GND" H 5955 2577 50  0000 C CNN
F 2 "" H 5950 2750 50  0001 C CNN
F 3 "" H 5950 2750 50  0001 C CNN
	1    5950 2750
	1    0    0    -1  
$EndComp
Connection ~ 5950 2750
Wire Wire Line
	5950 2750 6450 2750
$Comp
L power:GND #PWR0209
U 1 1 5B2CF3CA
P 5950 3450
F 0 "#PWR0209" H 5950 3200 50  0001 C CNN
F 1 "GND" H 5955 3277 50  0000 C CNN
F 2 "" H 5950 3450 50  0001 C CNN
F 3 "" H 5950 3450 50  0001 C CNN
	1    5950 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3450 4200 3450
$Comp
L power:GND #PWR0205
U 1 1 5B2D08F8
P 4950 1300
F 0 "#PWR0205" H 4950 1050 50  0001 C CNN
F 1 "GND" H 4955 1127 50  0000 C CNN
F 2 "" H 4950 1300 50  0001 C CNN
F 3 "" H 4950 1300 50  0001 C CNN
	1    4950 1300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0203
U 1 1 5B2D097B
P 4950 1300
F 0 "#FLG0203" H 4950 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 4950 1473 50  0000 C CNN
F 2 "" H 4950 1300 50  0001 C CNN
F 3 "~" H 4950 1300 50  0001 C CNN
	1    4950 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 2450 2200 2450
Wire Wire Line
	2750 2450 2500 2450
$Comp
L Device:Fuse F201
U 1 1 5B395A79
P 2350 2450
F 0 "F201" V 2153 2450 50  0000 C CNN
F 1 "xA" V 2244 2450 50  0000 C CNN
F 2 "Fuse:Fuseholder_TR5_Littlefuse_No560_No460" V 2280 2450 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Littelfuse/56000001019?qs=sGAEpiMZZMtRmoYvq3OwzKEcK5xXAR8uiSqvDZfRA1w%3d" H 2350 2450 50  0001 C CNN
	1    2350 2450
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F202
U 1 1 5B395AE2
P 5650 2450
F 0 "F202" V 5453 2450 50  0000 C CNN
F 1 "xA" V 5544 2450 50  0000 C CNN
F 2 "Fuse:Fuseholder_TR5_Littlefuse_No560_No460" V 5580 2450 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Littelfuse/56000001019?qs=sGAEpiMZZMtRmoYvq3OwzKEcK5xXAR8uiSqvDZfRA1w%3d" H 5650 2450 50  0001 C CNN
	1    5650 2450
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F203
U 1 1 5B395E69
P 5650 3150
F 0 "F203" V 5453 3150 50  0000 C CNN
F 1 "xA" V 5544 3150 50  0000 C CNN
F 2 "Fuse:Fuseholder_TR5_Littlefuse_No560_No460" V 5580 3150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Littelfuse/56000001019?qs=sGAEpiMZZMtRmoYvq3OwzKEcK5xXAR8uiSqvDZfRA1w%3d" H 5650 3150 50  0001 C CNN
	1    5650 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2750 5950 2750
Connection ~ 4800 2750
Wire Wire Line
	4800 3450 5950 3450
Connection ~ 4800 3450
Wire Wire Line
	5500 2450 5300 2450
Wire Wire Line
	5500 3150 5300 3150
Text Label 4250 2450 0    50   ~ 0
12V_In1
Text Label 4200 3150 0    50   ~ 0
12V_In2
$Comp
L Device:R R201
U 1 1 5B62EE54
P 3600 2200
F 0 "R201" H 3670 2246 50  0000 L CNN
F 1 "6.04k" H 3670 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3530 2200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-6041ELF?qs=sGAEpiMZZMtlubZbdhIBIL%252bKkaYz7rs3a1YqtW4%252bf6k%3d" H 3600 2200 50  0001 C CNN
	1    3600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2450 3600 2350
$Comp
L Device:LED D201
U 1 1 5B6300FB
P 3750 1850
F 0 "D201" H 3742 1595 50  0000 C CNN
F 1 "Red" H 3742 1686 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 3750 1850 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lite-On/LTL2R3KGD-EM?qs=sGAEpiMZZMtmwHDZQCdlqY3QuPVQdrfivxVgVo2hFbg%3d" H 3750 1850 50  0001 C CNN
	1    3750 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 2050 3600 1850
$Comp
L power:GND #PWR0204
U 1 1 5B631405
P 3900 1850
F 0 "#PWR0204" H 3900 1600 50  0001 C CNN
F 1 "GND" H 3905 1677 50  0000 C CNN
F 2 "" H 3900 1850 50  0001 C CNN
F 3 "" H 3900 1850 50  0001 C CNN
	1    3900 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D206
U 1 1 5B631962
P 8500 2450
F 0 "D206" H 8492 2195 50  0000 C CNN
F 1 "Red" H 8492 2286 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8500 2450 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lite-On/LTL2R3KGD-EM?qs=sGAEpiMZZMtmwHDZQCdlqY3QuPVQdrfivxVgVo2hFbg%3d" H 8500 2450 50  0001 C CNN
	1    8500 2450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0213
U 1 1 5B631968
P 8650 2450
F 0 "#PWR0213" H 8650 2200 50  0001 C CNN
F 1 "GND" H 8655 2277 50  0000 C CNN
F 2 "" H 8650 2450 50  0001 C CNN
F 3 "" H 8650 2450 50  0001 C CNN
	1    8650 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D207
U 1 1 5B632E4D
P 8550 3150
F 0 "D207" H 8542 2895 50  0000 C CNN
F 1 "Red" H 8542 2986 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8550 3150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lite-On/LTL2R3KGD-EM?qs=sGAEpiMZZMtmwHDZQCdlqY3QuPVQdrfivxVgVo2hFbg%3d" H 8550 3150 50  0001 C CNN
	1    8550 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0214
U 1 1 5B632E54
P 8700 3150
F 0 "#PWR0214" H 8700 2900 50  0001 C CNN
F 1 "GND" H 8705 2977 50  0000 C CNN
F 2 "" H 8700 3150 50  0001 C CNN
F 3 "" H 8700 3150 50  0001 C CNN
	1    8700 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R203
U 1 1 5B634CA1
P 8250 3150
F 0 "R203" V 8043 3150 50  0000 C CNN
F 1 "2.55k" V 8134 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8180 3150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-2551ELF?qs=sGAEpiMZZMtlubZbdhIBILNunjV7M8c63QqAAwLULUY%3d" H 8250 3150 50  0001 C CNN
	1    8250 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R202
U 1 1 5B6361A3
P 8200 2450
F 0 "R202" V 7993 2450 50  0000 C CNN
F 1 "1.65k" V 8084 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8130 2450 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay/CRCW08051K65FKEA?qs=sGAEpiMZZMtlubZbdhIBIFvv2%252blmU1cYk%2fKBbkOVYDU%3d" H 8200 2450 50  0001 C CNN
	1    8200 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 3700 3600 3700
Wire Wire Line
	3600 3700 3600 3150
Connection ~ 3600 3150
Text GLabel 7950 3700 2    50   Input ~ 0
12V_PWR
Wire Wire Line
	6950 3150 8100 3150
Wire Wire Line
	6950 2450 8050 2450
Text Label 5400 3150 3    50   ~ 0
5V_PWR_after_switch
Text Label 5450 2450 1    50   ~ 0
3.3V_PWR_after_switch
Text GLabel 2000 2450 0    50   Input ~ 0
POWER_SUPPLY_12V
$EndSCHEMATC
