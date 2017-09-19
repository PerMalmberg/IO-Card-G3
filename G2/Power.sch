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
LIBS:G2-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
P 3950 2800
F 0 "#PWR0204" H 3950 2550 50  0001 C CNN
F 1 "GND" H 3955 2627 50  0000 C CNN
F 2 "" H 3950 2800 50  0001 C CNN
F 3 "" H 3950 2800 50  0001 C CNN
	1    3950 2800
	1    0    0    -1  
$EndComp
$Comp
L D_Zener D203
U 1 1 59BF8261
P 3950 2650
F 0 "D203" V 3904 2729 50  0000 L CNN
F 1 "3.3V" V 3995 2729 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 3950 2650 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/Vishay-Semiconductors/BZT52C3V3-E3-18/?qs=sGAEpiMZZMtQ8nqTKtFS%2fGqv07jO8JlbGw6qFNdMF40%3d" H 3950 2650 50  0001 C CNN
	1    3950 2650
	0    1    1    0   
$EndComp
$Comp
L C C203
U 1 1 59BF8336
P 4450 2650
F 0 "C203" H 4565 2696 50  0000 L CNN
F 1 "100n" H 4565 2605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4488 2500 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 4450 2650 50  0001 C CNN
	1    4450 2650
	1    0    0    -1  
$EndComp
$Comp
L CP C205
U 1 1 59BF840B
P 4950 2650
F 0 "C205" H 5068 2696 50  0000 L CNN
F 1 "100u" H 5068 2605 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 4988 2500 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=ULD1C101MED1TDvirtualkey64700000virtualkey647-ULD1C101MED1TD" H 4950 2650 50  0001 C CNN
	1    4950 2650
	1    0    0    -1  
$EndComp
Text Notes 5150 2400 0    60   ~ 0
Max 5A / 16.5 W
$Comp
L D_Zener D204
U 1 1 59BF8CE6
P 3950 3350
F 0 "D204" V 3904 3429 50  0000 L CNN
F 1 "5.1V" V 3995 3429 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 3950 3350 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=1N4733AW-TPvirtualkey54720000virtualkey833-1N4733AW-TP" H 3950 3350 50  0001 C CNN
	1    3950 3350
	0    1    1    0   
$EndComp
$Comp
L C C204
U 1 1 59BF8CED
P 4450 3350
F 0 "C204" H 4565 3396 50  0000 L CNN
F 1 "100n" H 4565 3305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4488 3200 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 4450 3350 50  0001 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
$Comp
L CP C206
U 1 1 59BF8CF4
P 4950 3350
F 0 "C206" H 5068 3396 50  0000 L CNN
F 1 "100u" H 5068 3305 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 4988 3200 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=ULD1C101MED1TDvirtualkey64700000virtualkey647-ULD1C101MED1TD" H 4950 3350 50  0001 C CNN
	1    4950 3350
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
P 3950 3500
F 0 "#PWR0205" H 3950 3250 50  0001 C CNN
F 1 "GND" H 3955 3327 50  0000 C CNN
F 2 "" H 3950 3500 50  0001 C CNN
F 3 "" H 3950 3500 50  0001 C CNN
	1    3950 3500
	1    0    0    -1  
$EndComp
Text Notes 5150 3100 0    60   ~ 0
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
Text Notes 1950 2100 0    60   ~ 0
3.5A / 41.5W
$Comp
L +3.3V #PWR0206
U 1 1 59BFA80B
P 4950 2500
F 0 "#PWR0206" H 4950 2350 50  0001 C CNN
F 1 "+3.3V" H 4965 2673 50  0000 C CNN
F 2 "" H 4950 2500 50  0001 C CNN
F 3 "" H 4950 2500 50  0001 C CNN
	1    4950 2500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0207
U 1 1 59BFA8BE
P 4950 3200
F 0 "#PWR0207" H 4950 3050 50  0001 C CNN
F 1 "+5V" H 4965 3373 50  0000 C CNN
F 2 "" H 4950 3200 50  0001 C CNN
F 3 "" H 4950 3200 50  0001 C CNN
	1    4950 3200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG0201
U 1 1 59BFAAB0
P 1750 1550
F 0 "#FLG0201" H 1750 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 1750 1723 50  0000 C CNN
F 2 "" H 1750 1550 50  0001 C CNN
F 3 "" H 1750 1550 50  0001 C CNN
	1    1750 1550
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR0201
U 1 1 59BFBDEF
P 1750 1550
F 0 "#PWR0201" H 1750 1400 50  0001 C CNN
F 1 "+12V" H 1765 1723 50  0000 C CNN
F 2 "" H 1750 1550 50  0001 C CNN
F 3 "" H 1750 1550 50  0001 C CNN
	1    1750 1550
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG0202
U 1 1 59BFBE64
P 2100 1550
F 0 "#FLG0202" H 2100 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 2100 1724 50  0000 C CNN
F 2 "" H 2100 1550 50  0001 C CNN
F 3 "" H 2100 1550 50  0001 C CNN
	1    2100 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0202
U 1 1 59BFBE9F
P 2100 1550
F 0 "#PWR0202" H 2100 1300 50  0001 C CNN
F 1 "GND" H 2105 1377 50  0000 C CNN
F 2 "" H 2100 1550 50  0001 C CNN
F 3 "" H 2100 1550 50  0001 C CNN
	1    2100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2800 4950 2800
Wire Wire Line
	3700 2500 4950 2500
Connection ~ 3950 2500
Connection ~ 4450 2500
Connection ~ 3400 2800
Connection ~ 3950 2800
Connection ~ 4450 2800
Connection ~ 4950 2500
Wire Wire Line
	3700 3200 4950 3200
Connection ~ 4450 3500
Connection ~ 4950 3200
Connection ~ 2200 2500
Connection ~ 2800 2500
Connection ~ 2800 3200
Wire Wire Line
	1950 2500 2350 2500
Wire Wire Line
	2200 3200 2350 3200
Connection ~ 4450 3200
Connection ~ 3950 3200
Connection ~ 3950 3500
Wire Wire Line
	2800 3500 4950 3500
Connection ~ 3400 3500
Wire Wire Line
	2650 2500 3100 2500
Wire Wire Line
	2650 3200 3100 3200
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
Text Label 4650 2500 0    60   ~ 0
3.3V
Text Label 4650 3200 0    60   ~ 0
5.0V
Text Label 2200 2850 1    60   ~ 0
12V
Text Label 4200 2800 0    60   ~ 0
GND
Text Label 4200 3500 0    60   ~ 0
GND
$Comp
L Conn_01x09 J206
U 1 1 59BFD755
P 6600 6150
F 0 "J206" V 6724 6146 50  0000 C CNN
F 1 "Conn_01x09" V 6815 6146 50  0000 C CNN
F 2 "LocalComponents:MOLEX_1x9_39544-3009" H 6600 6150 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/Molex/39544-3009/?qs=sGAEpiMZZMvZTcaMAxB2ALD5K2s4Cmud0QE50Luvbic%3d" H 6600 6150 50  0001 C CNN
	1    6600 6150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x09 J205
U 1 1 59BFDEFE
P 6600 5200
F 0 "J205" V 6724 5196 50  0000 C CNN
F 1 "Conn_01x09" V 6815 5196 50  0000 C CNN
F 2 "LocalComponents:MOLEX_1x9_39544-3009" H 6600 5200 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/Molex/39544-3009/?qs=sGAEpiMZZMvZTcaMAxB2ALD5K2s4Cmud0QE50Luvbic%3d" H 6600 5200 50  0001 C CNN
	1    6600 5200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x09 J204
U 1 1 59BFDF40
P 6600 4250
F 0 "J204" V 6724 4246 50  0000 C CNN
F 1 "Conn_01x09" V 6815 4246 50  0000 C CNN
F 2 "LocalComponents:MOLEX_1x9_39544-3009" H 6600 4250 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/Molex/39544-3009/?qs=sGAEpiMZZMvZTcaMAxB2ALD5K2s4Cmud0QE50Luvbic%3d" H 6600 4250 50  0001 C CNN
	1    6600 4250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x09 J203
U 1 1 59BFDF8C
P 6600 3150
F 0 "J203" V 6724 3146 50  0000 C CNN
F 1 "Conn_01x09" V 6815 3146 50  0000 C CNN
F 2 "LocalComponents:MOLEX_1x9_39544-3009" H 6600 3150 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/Molex/39544-3009/?qs=sGAEpiMZZMvZTcaMAxB2ALD5K2s4Cmud0QE50Luvbic%3d" H 6600 3150 50  0001 C CNN
	1    6600 3150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x09 J202
U 1 1 59BFE106
P 6600 2200
F 0 "J202" V 6724 2196 50  0000 C CNN
F 1 "Conn_01x09" V 6815 2196 50  0000 C CNN
F 2 "LocalComponents:MOLEX_1x9_39544-3009" H 6600 2200 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/Molex/39544-3009/?qs=sGAEpiMZZMvZTcaMAxB2ALD5K2s4Cmud0QE50Luvbic%3d" H 6600 2200 50  0001 C CNN
	1    6600 2200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x09 J201
U 1 1 59BFE146
P 6600 1250
F 0 "J201" V 6724 1246 50  0000 C CNN
F 1 "Conn_01x09" V 6815 1246 50  0000 C CNN
F 2 "LocalComponents:MOLEX_1x9_39544-3009" H 6600 1250 50  0001 C CNN
F 3 "http://www.mouser.se/ProductDetail/Molex/39544-3009/?qs=sGAEpiMZZMvZTcaMAxB2ALD5K2s4Cmud0QE50Luvbic%3d" H 6600 1250 50  0001 C CNN
	1    6600 1250
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR0209
U 1 1 59BFF49D
P 6400 950
F 0 "#PWR0209" H 6400 800 50  0001 C CNN
F 1 "+12V" V 6415 1078 50  0000 L CNN
F 2 "" H 6400 950 50  0001 C CNN
F 3 "" H 6400 950 50  0001 C CNN
	1    6400 950 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0208
U 1 1 59BFF54A
P 6400 850
F 0 "#PWR0208" H 6400 600 50  0001 C CNN
F 1 "GND" V 6405 722 50  0000 R CNN
F 2 "" H 6400 850 50  0001 C CNN
F 3 "" H 6400 850 50  0001 C CNN
	1    6400 850 
	0    1    1    0   
$EndComp
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
Wire Wire Line
	2200 3200 2200 2500
$EndSCHEMATC
