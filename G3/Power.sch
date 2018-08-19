EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 31
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
P 5200 2650
F 0 "D204" V 5154 2729 50  0000 L CNN
F 1 "3.3V" V 5245 2729 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 5200 2650 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/Vishay-Semiconductors/BZT52C3V3-E3-18/?qs=sGAEpiMZZMtQ8nqTKtFS%2fGqv07jO8JlbGw6qFNdMF40%3d" H 5200 2650 50  0001 C CNN
	1    5200 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C203
U 1 1 59BF8336
P 5700 2650
F 0 "C203" H 5815 2696 50  0000 L CNN
F 1 "100n" H 5815 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5738 2500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/77-VJ0805Y104JXARBC" H 5700 2650 50  0001 C CNN
	1    5700 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C205
U 1 1 59BF840B
P 6200 2650
F 0 "C205" H 6318 2696 50  0000 L CNN
F 1 "100u" H 6318 2605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 6238 2500 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=ULD1C101MED1TDvirtualkey64700000virtualkey647-ULD1C101MED1TD" H 6200 2650 50  0001 C CNN
	1    6200 2650
	1    0    0    -1  
$EndComp
Text Notes 6450 2200 0    60   ~ 0
Max 5A / 16.5 W
$Comp
L Device:D_Zener D205
U 1 1 59BF8CE6
P 5200 3350
F 0 "D205" V 5154 3429 50  0000 L CNN
F 1 "5.1V" V 5245 3429 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 5200 3350 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=1N4733AW-TPvirtualkey54720000virtualkey833-1N4733AW-TP" H 5200 3350 50  0001 C CNN
	1    5200 3350
	0    1    1    0   
$EndComp
$Comp
L Device:C C204
U 1 1 59BF8CED
P 5700 3350
F 0 "C204" H 5815 3396 50  0000 L CNN
F 1 "100n" H 5815 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5738 3200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/77-VJ0805Y104JXARBC" H 5700 3350 50  0001 C CNN
	1    5700 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C206
U 1 1 59BF8CF4
P 6200 3350
F 0 "C206" H 6318 3396 50  0000 L CNN
F 1 "100u" H 6318 3305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 6238 3200 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=ULD1C101MED1TDvirtualkey64700000virtualkey647-ULD1C101MED1TD" H 6200 3350 50  0001 C CNN
	1    6200 3350
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1084-3.3 U201
U 1 1 59BF91FB
P 4050 2500
F 0 "U201" H 4050 2742 50  0000 C CNN
F 1 "LM1084-3.3" H 4050 2651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 4050 2750 50  0001 C CIN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=LM1084ISX-3.3%2fNOPBvirtualkey59500000virtualkey926-LM1084ISX33NOPB" H 4050 2500 50  0001 C CNN
	1    4050 2500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1084-5.0 U202
U 1 1 59BF92DC
P 4050 3200
F 0 "U202" H 4050 3442 50  0000 C CNN
F 1 "LM1084-5.0" H 4050 3351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 4050 3450 50  0001 C CIN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=LM1084ISX-5.0%2fNOPBvirtualkey59500000virtualkey926-LM1084ISX50NOPB" H 4050 3200 50  0001 C CNN
	1    4050 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C202
U 1 1 59BF942D
P 3450 3350
F 0 "C202" H 3565 3396 50  0000 L CNN
F 1 "100n" H 3565 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3488 3200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/77-VJ0805Y104JXARBC" H 3450 3350 50  0001 C CNN
	1    3450 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C201
U 1 1 59BF949B
P 3450 2650
F 0 "C201" H 3565 2696 50  0000 L CNN
F 1 "100n" H 3565 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3488 2500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/77-VJ0805Y104JXARBC" H 3450 2650 50  0001 C CNN
	1    3450 2650
	1    0    0    -1  
$EndComp
Text Notes 6400 3100 0    60   ~ 0
Max 5A / 25W
$Comp
L Device:D D202
U 1 1 59BF993D
P 3150 2500
F 0 "D202" H 3200 2400 50  0000 C CNN
F 1 "RBR3MM30ATR" H 3250 2650 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 3150 2500 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/ROHM-Semiconductor/RBR3MM30ATR/?qs=sGAEpiMZZMtQ8nqTKtFS%2fI%2fhdhCnE2X2fXNJX4qgoABnAExEb9ZEtQ%3d%3d" H 3150 2500 50  0001 C CNN
	1    3150 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:D D203
U 1 1 59BF9A8A
P 3150 3200
F 0 "D203" H 3200 3050 50  0000 C CNN
F 1 "RBR3MM30ATR" H 3300 3350 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 3150 3200 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/ROHM-Semiconductor/RBR3MM30ATR/?qs=sGAEpiMZZMtQ8nqTKtFS%2fI%2fhdhCnE2X2fXNJX4qgoABnAExEb9ZEtQ%3d%3d" H 3150 3200 50  0001 C CNN
	1    3150 3200
	-1   0    0    1   
$EndComp
Text Notes 2100 2150 0    60   ~ 0
3.5A / 41.5W
$Comp
L power:+3.3V #PWR0211
U 1 1 59BFA80B
P 6200 2500
F 0 "#PWR0211" H 6200 2350 50  0001 C CNN
F 1 "+3.3V" H 6215 2673 50  0000 C CNN
F 2 "" H 6200 2500 50  0001 C CNN
F 3 "" H 6200 2500 50  0001 C CNN
	1    6200 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0212
U 1 1 59BFA8BE
P 6200 3200
F 0 "#PWR0212" H 6200 3050 50  0001 C CNN
F 1 "+5V" H 6215 3373 50  0000 C CNN
F 2 "" H 6200 3200 50  0001 C CNN
F 3 "" H 6200 3200 50  0001 C CNN
	1    6200 3200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0201
U 1 1 59BFCA10
P 3450 2500
F 0 "#FLG0201" H 3450 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 3450 2674 50  0000 C CNN
F 2 "" H 3450 2500 50  0001 C CNN
F 3 "" H 3450 2500 50  0001 C CNN
	1    3450 2500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0202
U 1 1 59BFCA4B
P 3450 3200
F 0 "#FLG0202" H 3450 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 3450 3374 50  0000 C CNN
F 2 "" H 3450 3200 50  0001 C CNN
F 3 "" H 3450 3200 50  0001 C CNN
	1    3450 3200
	1    0    0    -1  
$EndComp
Text Label 5900 2500 0    60   ~ 0
3.3V
Text Label 5900 3200 0    60   ~ 0
5.0V
Text Label 5450 2800 0    60   ~ 0
GND
$Comp
L Device:EMI_Filter_LCL FL201
U 1 1 59C1AAEC
P 2300 2600
F 0 "FL201" H 2300 2917 50  0000 C CNN
F 1 "EMI_Filter_LCL" H 2300 2826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" V 2300 2600 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=DSS1NB31H104Q91Avirtualkey64800000virtualkey81-DSS1NB31H104Q91A" V 2300 2600 50  0001 C CNN
	1    2300 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0203
U 1 1 59C1AD14
P 2300 2700
F 0 "#PWR0203" H 2300 2450 50  0001 C CNN
F 1 "GND" H 2305 2527 50  0000 C CNN
F 2 "" H 2300 2700 50  0001 C CNN
F 3 "" H 2300 2700 50  0001 C CNN
	1    2300 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 59C1AE88
P 1250 2500
AR Path="/59C1AE88" Ref="#PWR?"  Part="1" 
AR Path="/59BF7E73/59C1AE88" Ref="#PWR?"  Part="1" 
AR Path="/5B29E68B/59C1AE88" Ref="#PWR?"  Part="1" 
AR Path="/5B38A121/59C1AE88" Ref="#PWR?"  Part="1" 
AR Path="/5B61ECB9/59C1AE88" Ref="#PWR0201"  Part="1" 
F 0 "#PWR0201" H 1250 2350 50  0001 C CNN
F 1 "+12V" H 1265 2673 50  0000 C CNN
F 2 "" H 1250 2500 50  0001 C CNN
F 3 "" H 1250 2500 50  0001 C CNN
	1    1250 2500
	1    0    0    -1  
$EndComp
Text Label 1950 2500 1    60   ~ 0
12V_Source
$Comp
L Connector_Generic:Conn_01x02 J201
U 1 1 59C6A7C3
P 4550 2300
F 0 "J201" V 4650 2250 50  0000 C CNN
F 1 "GS2" V 4550 2450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical_SMD_Pin1Left" V 4624 2300 50  0001 C CNN
F 3 "" H 4550 2300 50  0001 C CNN
	1    4550 2300
	0    1    -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J202
U 1 1 59C6AA5F
P 4550 3000
F 0 "J202" V 4650 2950 50  0000 C CNN
F 1 "GS2" V 4500 3150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical_SMD_Pin1Left" V 4624 3000 50  0001 C CNN
F 3 "" H 4550 3000 50  0001 C CNN
	1    4550 3000
	0    1    -1   0   
$EndComp
Connection ~ 5200 2500
Connection ~ 5700 2500
Connection ~ 5700 2800
Connection ~ 6200 2500
Connection ~ 5700 3500
Connection ~ 6200 3200
Connection ~ 2850 2500
Connection ~ 3450 2500
Connection ~ 3450 3200
Wire Wire Line
	2600 2500 2850 2500
Wire Wire Line
	2850 3200 3000 3200
Connection ~ 5700 3200
Connection ~ 5200 3200
Connection ~ 5200 3500
Wire Wire Line
	3300 2500 3450 2500
Wire Wire Line
	3300 3200 3450 3200
Wire Wire Line
	5200 2500 5700 2500
Wire Wire Line
	5700 2500 6200 2500
Wire Wire Line
	5700 2800 6200 2800
Wire Wire Line
	5700 3500 6200 3500
Wire Wire Line
	2850 2500 3000 2500
Wire Wire Line
	2850 2500 2850 3200
Wire Wire Line
	3450 2500 3750 2500
Wire Wire Line
	3450 3200 3750 3200
Wire Wire Line
	5700 3200 6200 3200
Wire Wire Line
	5200 3200 5700 3200
Wire Wire Line
	5200 3500 5700 3500
Wire Wire Line
	4450 2500 4350 2500
Wire Wire Line
	5050 2500 5200 2500
Wire Wire Line
	4350 3200 4450 3200
Wire Wire Line
	5050 3200 5200 3200
Text Label 4400 2500 3    50   ~ 0
3.3V_PWR
Text Label 4400 3200 3    50   ~ 0
5V_PWR
$Comp
L power:+3.3V #PWR0207
U 1 1 5B2CB13E
P 5100 1350
F 0 "#PWR0207" H 5100 1200 50  0001 C CNN
F 1 "+3.3V" H 5115 1523 50  0000 C CNN
F 2 "" H 5100 1350 50  0001 C CNN
F 3 "" H 5100 1350 50  0001 C CNN
	1    5100 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0210
U 1 1 5B2CB167
P 5500 1350
F 0 "#PWR0210" H 5500 1200 50  0001 C CNN
F 1 "+5V" H 5515 1523 50  0000 C CNN
F 2 "" H 5500 1350 50  0001 C CNN
F 3 "" H 5500 1350 50  0001 C CNN
	1    5500 1350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0205
U 1 1 5B2CB241
P 5100 1350
F 0 "#FLG0205" H 5100 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 5100 1523 50  0000 C CNN
F 2 "" H 5100 1350 50  0001 C CNN
F 3 "~" H 5100 1350 50  0001 C CNN
	1    5100 1350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0206
U 1 1 5B2CB28F
P 5500 1350
F 0 "#FLG0206" H 5500 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 1523 50  0000 C CNN
F 2 "" H 5500 1350 50  0001 C CNN
F 3 "~" H 5500 1350 50  0001 C CNN
	1    5500 1350
	-1   0    0    1   
$EndComp
Text Label 2850 3150 1    50   ~ 0
12V_filtered
$Comp
L power:+12V #PWR?
U 1 1 5B2CC821
P 4600 1350
AR Path="/5B2CC821" Ref="#PWR?"  Part="1" 
AR Path="/59BF7E73/5B2CC821" Ref="#PWR?"  Part="1" 
AR Path="/5B29E68B/5B2CC821" Ref="#PWR?"  Part="1" 
AR Path="/5B38A121/5B2CC821" Ref="#PWR?"  Part="1" 
AR Path="/5B61ECB9/5B2CC821" Ref="#PWR0206"  Part="1" 
F 0 "#PWR0206" H 4600 1200 50  0001 C CNN
F 1 "+12V" H 4615 1523 50  0000 C CNN
F 2 "" H 4600 1350 50  0001 C CNN
F 3 "" H 4600 1350 50  0001 C CNN
	1    4600 1350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0204
U 1 1 5B2CC93A
P 4600 1350
F 0 "#FLG0204" H 4600 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 4600 1523 50  0000 C CNN
F 2 "" H 4600 1350 50  0001 C CNN
F 3 "~" H 4600 1350 50  0001 C CNN
	1    4600 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 2800 3450 2800
$Comp
L power:GND #PWR0208
U 1 1 5B2CEEA4
P 5200 2800
F 0 "#PWR0208" H 5200 2550 50  0001 C CNN
F 1 "GND" H 5205 2627 50  0000 C CNN
F 2 "" H 5200 2800 50  0001 C CNN
F 3 "" H 5200 2800 50  0001 C CNN
	1    5200 2800
	1    0    0    -1  
$EndComp
Connection ~ 5200 2800
Wire Wire Line
	5200 2800 5700 2800
$Comp
L power:GND #PWR0209
U 1 1 5B2CF3CA
P 5200 3500
F 0 "#PWR0209" H 5200 3250 50  0001 C CNN
F 1 "GND" H 5205 3327 50  0000 C CNN
F 2 "" H 5200 3500 50  0001 C CNN
F 3 "" H 5200 3500 50  0001 C CNN
	1    5200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3500 3450 3500
$Comp
L power:GND #PWR0205
U 1 1 5B2D08F8
P 4200 1350
F 0 "#PWR0205" H 4200 1100 50  0001 C CNN
F 1 "GND" H 4205 1177 50  0000 C CNN
F 2 "" H 4200 1350 50  0001 C CNN
F 3 "" H 4200 1350 50  0001 C CNN
	1    4200 1350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0203
U 1 1 5B2D097B
P 4200 1350
F 0 "#FLG0203" H 4200 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 4200 1523 50  0000 C CNN
F 2 "" H 4200 1350 50  0001 C CNN
F 3 "~" H 4200 1350 50  0001 C CNN
	1    4200 1350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0202
U 1 1 5B3933C3
P 1250 2650
F 0 "#PWR0202" H 1250 2400 50  0001 C CNN
F 1 "GND" H 1255 2477 50  0000 C CNN
F 2 "" H 1250 2650 50  0001 C CNN
F 3 "" H 1250 2650 50  0001 C CNN
	1    1250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2500 1450 2500
Wire Wire Line
	2000 2500 1750 2500
$Comp
L Device:Fuse F201
U 1 1 5B395A79
P 1600 2500
F 0 "F201" V 1403 2500 50  0000 C CNN
F 1 "3.5A" V 1494 2500 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 1530 2500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Schurter/00318201?qs=sGAEpiMZZMtRmoYvq3OwzLrTj1%252b%252bxBWBiZ2DdJg9oKI%3d" H 1600 2500 50  0001 C CNN
	1    1600 2500
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F202
U 1 1 5B395AE2
P 4900 2500
F 0 "F202" V 4703 2500 50  0000 C CNN
F 1 "5A" V 4794 2500 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 4830 2500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Schurter/00318201?qs=sGAEpiMZZMtRmoYvq3OwzLrTj1%252b%252bxBWBiZ2DdJg9oKI%3d" H 4900 2500 50  0001 C CNN
	1    4900 2500
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F203
U 1 1 5B395E69
P 4900 3200
F 0 "F203" V 4703 3200 50  0000 C CNN
F 1 "5A" V 4794 3200 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 4830 3200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Schurter/00318201?qs=sGAEpiMZZMtRmoYvq3OwzLrTj1%252b%252bxBWBiZ2DdJg9oKI%3d" H 4900 3200 50  0001 C CNN
	1    4900 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2800 5200 2800
Connection ~ 4050 2800
Wire Wire Line
	4050 3500 5200 3500
Connection ~ 4050 3500
Wire Wire Line
	4750 2500 4550 2500
Wire Wire Line
	4750 3200 4550 3200
Wire Wire Line
	1250 2500 1050 2500
Connection ~ 1250 2500
Text Label 3500 2500 0    50   ~ 0
12V_In1
Text Label 3450 3200 0    50   ~ 0
12V_In2
$Comp
L Device:R R201
U 1 1 5B62EE54
P 2850 2250
F 0 "R201" H 2920 2296 50  0000 L CNN
F 1 "6.04k" H 2920 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2780 2250 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-6041ELF?qs=sGAEpiMZZMtlubZbdhIBIL%252bKkaYz7rs3a1YqtW4%252bf6k%3d" H 2850 2250 50  0001 C CNN
	1    2850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2500 2850 2400
$Comp
L Device:LED D201
U 1 1 5B6300FB
P 3000 1900
F 0 "D201" H 2992 1645 50  0000 C CNN
F 1 "Power" H 2992 1736 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 3000 1900 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lite-On/LTL2R3KGD-EM?qs=sGAEpiMZZMtmwHDZQCdlqY3QuPVQdrfivxVgVo2hFbg%3d" H 3000 1900 50  0001 C CNN
	1    3000 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 2100 2850 1900
$Comp
L power:GND #PWR0204
U 1 1 5B631405
P 3150 1900
F 0 "#PWR0204" H 3150 1650 50  0001 C CNN
F 1 "GND" H 3155 1727 50  0000 C CNN
F 2 "" H 3150 1900 50  0001 C CNN
F 3 "" H 3150 1900 50  0001 C CNN
	1    3150 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D206
U 1 1 5B631962
P 7750 2500
F 0 "D206" H 7742 2245 50  0000 C CNN
F 1 "Power3V3" H 7742 2336 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7750 2500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lite-On/LTL2R3KGD-EM?qs=sGAEpiMZZMtmwHDZQCdlqY3QuPVQdrfivxVgVo2hFbg%3d" H 7750 2500 50  0001 C CNN
	1    7750 2500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0214
U 1 1 5B631968
P 7900 2500
F 0 "#PWR0214" H 7900 2250 50  0001 C CNN
F 1 "GND" H 7905 2327 50  0000 C CNN
F 2 "" H 7900 2500 50  0001 C CNN
F 3 "" H 7900 2500 50  0001 C CNN
	1    7900 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D207
U 1 1 5B632E4D
P 7800 3200
F 0 "D207" H 7792 2945 50  0000 C CNN
F 1 "Power5V" H 7792 3036 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7800 3200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lite-On/LTL2R3KGD-EM?qs=sGAEpiMZZMtmwHDZQCdlqY3QuPVQdrfivxVgVo2hFbg%3d" H 7800 3200 50  0001 C CNN
	1    7800 3200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0215
U 1 1 5B632E54
P 7950 3200
F 0 "#PWR0215" H 7950 2950 50  0001 C CNN
F 1 "GND" H 7955 3027 50  0000 C CNN
F 2 "" H 7950 3200 50  0001 C CNN
F 3 "" H 7950 3200 50  0001 C CNN
	1    7950 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R203
U 1 1 5B634CA1
P 7500 3200
F 0 "R203" V 7293 3200 50  0000 C CNN
F 1 "2.55k" V 7384 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7430 3200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-2551ELF?qs=sGAEpiMZZMtlubZbdhIBILNunjV7M8c63QqAAwLULUY%3d" H 7500 3200 50  0001 C CNN
	1    7500 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R202
U 1 1 5B6361A3
P 7450 2500
F 0 "R202" V 7243 2500 50  0000 C CNN
F 1 "1.65k" V 7334 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 2500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay/CRCW08051K65FKEA?qs=sGAEpiMZZMtlubZbdhIBIFvv2%252blmU1cYk%2fKBbkOVYDU%3d" H 7450 2500 50  0001 C CNN
	1    7450 2500
	0    1    1    0   
$EndComp
Text HLabel 1050 2500 0    50   Input ~ 0
+12V_IN
Text HLabel 1000 2650 0    50   Input ~ 0
GND_IN
Wire Wire Line
	1250 2650 1000 2650
Wire Wire Line
	7200 3750 2850 3750
Wire Wire Line
	2850 3750 2850 3200
Connection ~ 2850 3200
Text HLabel 7200 3550 2    50   Output ~ 0
GND
$Comp
L power:GND #PWR0213
U 1 1 5B6409F7
P 7200 3550
F 0 "#PWR0213" H 7200 3300 50  0001 C CNN
F 1 "GND" H 7205 3377 50  0000 C CNN
F 2 "" H 7200 3550 50  0001 C CNN
F 3 "" H 7200 3550 50  0001 C CNN
	1    7200 3550
	0    1    1    0   
$EndComp
Text GLabel 7200 3750 2    50   Input ~ 0
12V_PWR
Wire Wire Line
	6200 3200 7350 3200
Wire Wire Line
	6200 2500 7300 2500
$EndSCHEMATC
