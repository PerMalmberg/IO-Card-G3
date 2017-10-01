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
LIBS:diode
LIBS:analog_devices
LIBS:ADS1115IDGST
LIBS:spark_esp32thing
LIBS:sensors
LIBS:Worldsemi
LIBS:LocalPower
LIBS:pogopins02x06_pitch5.08
LIBS:G2-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L GND #PWR0204
U 1 1 59BF808A
P 4200 2800
F 0 "#PWR0204" H 4200 2550 50  0001 C CNN
F 1 "GND" H 4205 2627 50  0000 C CNN
F 2 "" H 4200 2800 50  0001 C CNN
F 3 "" H 4200 2800 50  0001 C CNN
	1    4200 2800
	1    0    0    -1  
$EndComp
$Comp
L D_Zener D203
U 1 1 59BF8261
P 4200 2650
F 0 "D203" V 4154 2729 50  0000 L CNN
F 1 "3.3V" V 4245 2729 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 4200 2650 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/Vishay-Semiconductors/BZT52C3V3-E3-18/?qs=sGAEpiMZZMtQ8nqTKtFS%2fGqv07jO8JlbGw6qFNdMF40%3d" H 4200 2650 50  0001 C CNN
	1    4200 2650
	0    1    1    0   
$EndComp
$Comp
L C C203
U 1 1 59BF8336
P 4700 2650
F 0 "C203" H 4815 2696 50  0000 L CNN
F 1 "100n" H 4815 2605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4738 2500 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 4700 2650 50  0001 C CNN
	1    4700 2650
	1    0    0    -1  
$EndComp
$Comp
L CP C205
U 1 1 59BF840B
P 5200 2650
F 0 "C205" H 5318 2696 50  0000 L CNN
F 1 "100u" H 5318 2605 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 5238 2500 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=ULD1C101MED1TDvirtualkey64700000virtualkey647-ULD1C101MED1TD" H 5200 2650 50  0001 C CNN
	1    5200 2650
	1    0    0    -1  
$EndComp
Text Notes 5400 2400 0    60   ~ 0
Max 5A / 16.5 W
$Comp
L D_Zener D204
U 1 1 59BF8CE6
P 4200 3350
F 0 "D204" V 4154 3429 50  0000 L CNN
F 1 "5.1V" V 4245 3429 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 4200 3350 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=1N4733AW-TPvirtualkey54720000virtualkey833-1N4733AW-TP" H 4200 3350 50  0001 C CNN
	1    4200 3350
	0    1    1    0   
$EndComp
$Comp
L C C204
U 1 1 59BF8CED
P 4700 3350
F 0 "C204" H 4815 3396 50  0000 L CNN
F 1 "100n" H 4815 3305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4738 3200 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 4700 3350 50  0001 C CNN
	1    4700 3350
	1    0    0    -1  
$EndComp
$Comp
L CP C206
U 1 1 59BF8CF4
P 5200 3350
F 0 "C206" H 5318 3396 50  0000 L CNN
F 1 "100u" H 5318 3305 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 5238 3200 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=ULD1C101MED1TDvirtualkey64700000virtualkey647-ULD1C101MED1TD" H 5200 3350 50  0001 C CNN
	1    5200 3350
	1    0    0    -1  
$EndComp
$Comp
L LM1084-3.3 U201
U 1 1 59BF91FB
P 3400 2500
F 0 "U201" H 3400 2742 50  0000 C CNN
F 1 "LM1084-3.3" H 3400 2651 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-3_TabPin2" H 3400 2750 50  0001 C CIN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=LM1084ISX-3.3%2fNOPBvirtualkey59500000virtualkey926-LM1084ISX33NOPB" H 3400 2500 50  0001 C CNN
	1    3400 2500
	1    0    0    -1  
$EndComp
$Comp
L LM1084-5.0 U202
U 1 1 59BF92DC
P 3400 3200
F 0 "U202" H 3400 3442 50  0000 C CNN
F 1 "LM1084-5.0" H 3400 3351 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-3_TabPin2" H 3400 3450 50  0001 C CIN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=LM1084ISX-5.0%2fNOPBvirtualkey59500000virtualkey926-LM1084ISX50NOPB" H 3400 3200 50  0001 C CNN
	1    3400 3200
	1    0    0    -1  
$EndComp
$Comp
L C C202
U 1 1 59BF942D
P 2800 3350
F 0 "C202" H 2915 3396 50  0000 L CNN
F 1 "100n" H 2915 3305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2838 3200 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 2800 3350 50  0001 C CNN
	1    2800 3350
	1    0    0    -1  
$EndComp
$Comp
L C C201
U 1 1 59BF949B
P 2800 2650
F 0 "C201" H 2915 2696 50  0000 L CNN
F 1 "100n" H 2915 2605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2838 2500 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 2800 2650 50  0001 C CNN
	1    2800 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0205
U 1 1 59BF965E
P 4200 3500
F 0 "#PWR0205" H 4200 3250 50  0001 C CNN
F 1 "GND" H 4205 3327 50  0000 C CNN
F 2 "" H 4200 3500 50  0001 C CNN
F 3 "" H 4200 3500 50  0001 C CNN
	1    4200 3500
	1    0    0    -1  
$EndComp
Text Notes 5400 3100 0    60   ~ 0
Max 5A / 25W
$Comp
L D D201
U 1 1 59BF993D
P 2500 2500
F 0 "D201" H 2500 2284 50  0000 C CNN
F 1 "D" H 2500 2375 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123F" H 2500 2500 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/ROHM-Semiconductor/RBR3MM30ATR/?qs=sGAEpiMZZMtQ8nqTKtFS%2fI%2fhdhCnE2X2fXNJX4qgoABnAExEb9ZEtQ%3d%3d" H 2500 2500 50  0001 C CNN
	1    2500 2500
	-1   0    0    1   
$EndComp
$Comp
L D D202
U 1 1 59BF9A8A
P 2500 3200
F 0 "D202" H 2500 2984 50  0000 C CNN
F 1 "D" H 2500 3075 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123F" H 2500 3200 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/ROHM-Semiconductor/RBR3MM30ATR/?qs=sGAEpiMZZMtQ8nqTKtFS%2fI%2fhdhCnE2X2fXNJX4qgoABnAExEb9ZEtQ%3d%3d" H 2500 3200 50  0001 C CNN
	1    2500 3200
	-1   0    0    1   
$EndComp
Text Notes 1450 2150 0    60   ~ 0
3.5A / 41.5W
$Comp
L +3.3V #PWR0206
U 1 1 59BFA80B
P 5200 2500
F 0 "#PWR0206" H 5200 2350 50  0001 C CNN
F 1 "+3.3V" H 5215 2673 50  0000 C CNN
F 2 "" H 5200 2500 50  0001 C CNN
F 3 "" H 5200 2500 50  0001 C CNN
	1    5200 2500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0207
U 1 1 59BFA8BE
P 5200 3200
F 0 "#PWR0207" H 5200 3050 50  0001 C CNN
F 1 "+5V" H 5215 3373 50  0000 C CNN
F 2 "" H 5200 3200 50  0001 C CNN
F 3 "" H 5200 3200 50  0001 C CNN
	1    5200 3200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG0201
U 1 1 59BFAAB0
P 1700 1250
F 0 "#FLG0201" H 1700 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 1423 50  0000 C CNN
F 2 "" H 1700 1250 50  0001 C CNN
F 3 "" H 1700 1250 50  0001 C CNN
	1    1700 1250
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR0201
U 1 1 59BFBDEF
P 1700 1250
F 0 "#PWR0201" H 1700 1100 50  0001 C CNN
F 1 "+12V" H 1715 1423 50  0000 C CNN
F 2 "" H 1700 1250 50  0001 C CNN
F 3 "" H 1700 1250 50  0001 C CNN
	1    1700 1250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG0202
U 1 1 59BFBE64
P 2050 1250
F 0 "#FLG0202" H 2050 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 1424 50  0000 C CNN
F 2 "" H 2050 1250 50  0001 C CNN
F 3 "" H 2050 1250 50  0001 C CNN
	1    2050 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0202
U 1 1 59BFBE9F
P 2050 1250
F 0 "#PWR0202" H 2050 1000 50  0001 C CNN
F 1 "GND" H 2055 1077 50  0000 C CNN
F 2 "" H 2050 1250 50  0001 C CNN
F 3 "" H 2050 1250 50  0001 C CNN
	1    2050 1250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG0203
U 1 1 59BFCA10
P 2800 2500
F 0 "#FLG0203" H 2800 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 2674 50  0000 C CNN
F 2 "" H 2800 2500 50  0001 C CNN
F 3 "" H 2800 2500 50  0001 C CNN
	1    2800 2500
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG0204
U 1 1 59BFCA4B
P 2800 3200
F 0 "#FLG0204" H 2800 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 3374 50  0000 C CNN
F 2 "" H 2800 3200 50  0001 C CNN
F 3 "" H 2800 3200 50  0001 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
Text Label 4900 2500 0    60   ~ 0
3.3V
Text Label 4900 3200 0    60   ~ 0
5.0V
Text Label 2200 2850 1    60   ~ 0
12V
Text Label 4450 2800 0    60   ~ 0
GND
Text Label 4450 3500 0    60   ~ 0
GND
$Comp
L EMI_Filter_LCL FL201
U 1 1 59C1AAEC
P 1650 2600
F 0 "FL201" H 1650 2917 50  0000 C CNN
F 1 "EMI_Filter_LCL" H 1650 2826 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" V 1650 2600 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=DSS1NB31H104Q91Avirtualkey64800000virtualkey81-DSS1NB31H104Q91A" V 1650 2600 50  0001 C CNN
	1    1650 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59C1AD14
P 1650 2700
F 0 "#PWR01" H 1650 2450 50  0001 C CNN
F 1 "GND" H 1655 2527 50  0000 C CNN
F 2 "" H 1650 2700 50  0001 C CNN
F 3 "" H 1650 2700 50  0001 C CNN
	1    1650 2700
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 59C1AE88
P 1350 2500
F 0 "#PWR02" H 1350 2350 50  0001 C CNN
F 1 "+12V" H 1365 2673 50  0000 C CNN
F 2 "" H 1350 2500 50  0001 C CNN
F 3 "" H 1350 2500 50  0001 C CNN
	1    1350 2500
	0    -1   -1   0   
$EndComp
Text Label 1350 2500 1    60   ~ 0
12V_Source
$Comp
L GS2 J201
U 1 1 59C6A7C3
P 3900 2500
F 0 "J201" V 3695 2500 50  0000 C CNN
F 1 "GS2" V 3786 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" V 3974 2500 50  0001 C CNN
F 3 "" H 3900 2500 50  0001 C CNN
	1    3900 2500
	0    1    1    0   
$EndComp
$Comp
L GS2 J202
U 1 1 59C6AA5F
P 3900 3200
F 0 "J202" V 3695 3200 50  0000 C CNN
F 1 "GS2" V 3786 3200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" V 3974 3200 50  0001 C CNN
F 3 "" H 3900 3200 50  0001 C CNN
	1    3900 3200
	0    1    1    0   
$EndComp
Text GLabel 2200 2400 1    60   Input ~ 0
+12V_Filtered
Wire Wire Line
	2800 2800 5200 2800
Wire Wire Line
	4100 2500 5200 2500
Connection ~ 4200 2500
Connection ~ 4700 2500
Connection ~ 3400 2800
Connection ~ 4200 2800
Connection ~ 4700 2800
Connection ~ 5200 2500
Wire Wire Line
	4100 3200 5200 3200
Connection ~ 4700 3500
Connection ~ 5200 3200
Connection ~ 2200 2500
Connection ~ 2800 2500
Connection ~ 2800 3200
Wire Wire Line
	1950 2500 2350 2500
Wire Wire Line
	2200 3200 2350 3200
Connection ~ 4700 3200
Connection ~ 4200 3200
Connection ~ 4200 3500
Wire Wire Line
	2800 3500 5200 3500
Connection ~ 3400 3500
Wire Wire Line
	2650 2500 3100 2500
Wire Wire Line
	2650 3200 3100 3200
Wire Wire Line
	2200 2400 2200 3200
$Comp
L PWR_FLAG #FLG01
U 1 1 59D10DB1
P 2500 1250
F 0 "#FLG01" H 2500 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 1423 50  0000 C CNN
F 2 "" H 2500 1250 50  0001 C CNN
F 3 "" H 2500 1250 50  0001 C CNN
	1    2500 1250
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR056
U 1 1 59D10DDA
P 2500 1250
F 0 "#PWR056" H 2500 1100 50  0001 C CNN
F 1 "+3.3V" H 2515 1423 50  0000 C CNN
F 2 "" H 2500 1250 50  0001 C CNN
F 3 "" H 2500 1250 50  0001 C CNN
	1    2500 1250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR074
U 1 1 59D17336
P 2850 1250
F 0 "#PWR074" H 2850 1100 50  0001 C CNN
F 1 "+5V" H 2865 1423 50  0000 C CNN
F 2 "" H 2850 1250 50  0001 C CNN
F 3 "" H 2850 1250 50  0001 C CNN
	1    2850 1250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 59D1735F
P 2850 1250
F 0 "#FLG02" H 2850 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 2850 1423 50  0000 C CNN
F 2 "" H 2850 1250 50  0001 C CNN
F 3 "" H 2850 1250 50  0001 C CNN
	1    2850 1250
	-1   0    0    1   
$EndComp
$EndSCHEMATC
