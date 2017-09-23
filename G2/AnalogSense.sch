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
LIBS:G2-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L R R?
U 1 1 59C6930B
P 2000 1100
F 0 "R?" V 1900 1050 50  0000 C CNN
F 1 "100" V 2000 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1930 1100 50  0001 C CNN
F 3 "" H 2000 1100 50  0001 C CNN
	1    2000 1100
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 59C693EA
P 1850 1250
F 0 "D?" H 1800 1350 50  0000 L CNN
F 1 "STPS0560Z" H 1800 1150 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1850 1250 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1850 1250 50  0001 C CNN
	1    1850 1250
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C694AB
P 1400 1100
F 0 "R?" V 1300 1100 50  0000 C CNN
F 1 "1k" V 1400 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1330 1100 50  0001 C CNN
F 3 "" H 1400 1100 50  0001 C CNN
	1    1400 1100
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C6950D
P 1550 950
F 0 "R?" H 1620 996 50  0000 L CNN
F 1 "2k" V 1550 900 50  0000 L CNN
F 2 "" V 1480 950 50  0001 C CNN
F 3 "" H 1550 950 50  0001 C CNN
	1    1550 950 
	-1   0    0    -1  
$EndComp
$Comp
L Varistor RV?
U 1 1 59C696C7
P 1000 1100
F 0 "RV?" V 750 1150 50  0000 C CNN
F 1 "B72510E250K62" V 850 1300 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 930 1100 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=B72510E250K62virtualkey59250000virtualkey871-B72510E250K62" H 1000 1100 50  0001 C CNN
	1    1000 1100
	0    -1   1    0   
$EndComp
$Comp
L C C?
U 1 1 59C69779
P 1550 1250
F 0 "C?" H 1665 1296 50  0000 L CNN
F 1 "100n" H 1650 1200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1588 1100 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 1550 1250 50  0001 C CNN
	1    1550 1250
	-1   0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 59C698B8
P 1200 1250
F 0 "D?" V 1200 1350 50  0000 L CNN
F 1 "CDBA3100-HF" V 1300 1300 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" H 1200 1250 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=CDBA3100-HFvirtualkey59960000virtualkey750-CDBA3100-HF" H 1200 1250 50  0001 C CNN
	1    1200 1250
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR067
U 1 1 59C6995B
P 1550 1400
F 0 "#PWR067" H 1550 1150 50  0001 C CNN
F 1 "GND" H 1555 1227 50  0000 C CNN
F 2 "" H 1550 1400 50  0001 C CNN
F 3 "" H 1550 1400 50  0001 C CNN
	1    1550 1400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 1400 1550 1400
Wire Wire Line
	1550 1400 1850 1400
Connection ~ 1550 1400
Wire Wire Line
	1150 1100 1200 1100
Wire Wire Line
	1200 1100 1250 1100
Connection ~ 1200 1100
$Comp
L GND #PWR068
U 1 1 59C699C4
P 850 1100
F 0 "#PWR068" H 850 850 50  0001 C CNN
F 1 "GND" V 855 972 50  0000 R CNN
F 2 "" H 850 1100 50  0001 C CNN
F 3 "" H 850 1100 50  0001 C CNN
	1    850  1100
	0    1    -1   0   
$EndComp
Wire Wire Line
	1550 800  1700 800 
Wire Wire Line
	1700 800  1850 800 
$Comp
L +5V #PWR069
U 1 1 59C69AB2
P 1700 800
F 0 "#PWR069" H 1700 650 50  0001 C CNN
F 1 "+5V" H 1715 973 50  0000 C CNN
F 2 "" H 1700 800 50  0001 C CNN
F 3 "" H 1700 800 50  0001 C CNN
	1    1700 800 
	-1   0    0    -1  
$EndComp
Connection ~ 1700 800 
Text GLabel 2150 1100 2    60   Input ~ 0
Sense1
$Comp
L D_Schottky D?
U 1 1 59C69DB2
P 1850 950
F 0 "D?" H 1800 1050 50  0000 L CNN
F 1 "STPS0560Z" V 1700 500 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1850 950 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1850 950 50  0001 C CNN
	1    1850 950 
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 1100 1550 1100
Text GLabel 1200 1100 1    60   Input ~ 0
Sense1_DUT
$Comp
L R R?
U 1 1 59C65A25
P 2000 2200
F 0 "R?" V 1900 2150 50  0000 C CNN
F 1 "100" V 2000 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1930 2200 50  0001 C CNN
F 3 "" H 2000 2200 50  0001 C CNN
	1    2000 2200
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 59C65A2C
P 1850 2350
F 0 "D?" H 1800 2450 50  0000 L CNN
F 1 "STPS0560Z" H 1800 2250 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1850 2350 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1850 2350 50  0001 C CNN
	1    1850 2350
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C65A33
P 1400 2200
F 0 "R?" V 1300 2200 50  0000 C CNN
F 1 "1k" V 1400 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1330 2200 50  0001 C CNN
F 3 "" H 1400 2200 50  0001 C CNN
	1    1400 2200
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C65A3A
P 1550 2050
F 0 "R?" H 1620 2096 50  0000 L CNN
F 1 "2k" V 1550 2000 50  0000 L CNN
F 2 "" V 1480 2050 50  0001 C CNN
F 3 "" H 1550 2050 50  0001 C CNN
	1    1550 2050
	-1   0    0    -1  
$EndComp
$Comp
L Varistor RV?
U 1 1 59C65A41
P 1000 2200
F 0 "RV?" V 750 2250 50  0000 C CNN
F 1 "B72510E250K62" V 850 2400 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 930 2200 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=B72510E250K62virtualkey59250000virtualkey871-B72510E250K62" H 1000 2200 50  0001 C CNN
	1    1000 2200
	0    -1   1    0   
$EndComp
$Comp
L C C?
U 1 1 59C65A48
P 1550 2350
F 0 "C?" H 1665 2396 50  0000 L CNN
F 1 "100n" H 1650 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1588 2200 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 1550 2350 50  0001 C CNN
	1    1550 2350
	-1   0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 59C65A4F
P 1200 2350
F 0 "D?" V 1200 2450 50  0000 L CNN
F 1 "CDBA3100-HF" V 1300 2400 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" H 1200 2350 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=CDBA3100-HFvirtualkey59960000virtualkey750-CDBA3100-HF" H 1200 2350 50  0001 C CNN
	1    1200 2350
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR085
U 1 1 59C65A56
P 1550 2500
F 0 "#PWR085" H 1550 2250 50  0001 C CNN
F 1 "GND" H 1555 2327 50  0000 C CNN
F 2 "" H 1550 2500 50  0001 C CNN
F 3 "" H 1550 2500 50  0001 C CNN
	1    1550 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 2500 1550 2500
Wire Wire Line
	1550 2500 1850 2500
Connection ~ 1550 2500
Wire Wire Line
	1150 2200 1200 2200
Wire Wire Line
	1200 2200 1250 2200
Connection ~ 1200 2200
$Comp
L GND #PWR086
U 1 1 59C65A60
P 850 2200
F 0 "#PWR086" H 850 1950 50  0001 C CNN
F 1 "GND" V 855 2072 50  0000 R CNN
F 2 "" H 850 2200 50  0001 C CNN
F 3 "" H 850 2200 50  0001 C CNN
	1    850  2200
	0    1    -1   0   
$EndComp
Wire Wire Line
	1550 1900 1700 1900
Wire Wire Line
	1700 1900 1850 1900
$Comp
L +5V #PWR087
U 1 1 59C65A67
P 1700 1900
F 0 "#PWR087" H 1700 1750 50  0001 C CNN
F 1 "+5V" H 1715 2073 50  0000 C CNN
F 2 "" H 1700 1900 50  0001 C CNN
F 3 "" H 1700 1900 50  0001 C CNN
	1    1700 1900
	-1   0    0    -1  
$EndComp
Connection ~ 1700 1900
Text GLabel 2150 2200 2    60   Input ~ 0
Sense2
$Comp
L D_Schottky D?
U 1 1 59C65A6F
P 1850 2050
F 0 "D?" H 1800 2150 50  0000 L CNN
F 1 "STPS0560Z" V 1700 1600 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1850 2050 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1850 2050 50  0001 C CNN
	1    1850 2050
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 2200 1550 2200
Text GLabel 1200 2200 1    60   Input ~ 0
Sense2_DUT
$Comp
L R R?
U 1 1 59C65BF8
P 2000 3350
F 0 "R?" V 1900 3300 50  0000 C CNN
F 1 "100" V 2000 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1930 3350 50  0001 C CNN
F 3 "" H 2000 3350 50  0001 C CNN
	1    2000 3350
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 59C65BFF
P 1850 3500
F 0 "D?" H 1800 3600 50  0000 L CNN
F 1 "STPS0560Z" H 1800 3400 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1850 3500 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1850 3500 50  0001 C CNN
	1    1850 3500
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C65C06
P 1400 3350
F 0 "R?" V 1300 3350 50  0000 C CNN
F 1 "1k" V 1400 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1330 3350 50  0001 C CNN
F 3 "" H 1400 3350 50  0001 C CNN
	1    1400 3350
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C65C0D
P 1550 3200
F 0 "R?" H 1620 3246 50  0000 L CNN
F 1 "2k" V 1550 3150 50  0000 L CNN
F 2 "" V 1480 3200 50  0001 C CNN
F 3 "" H 1550 3200 50  0001 C CNN
	1    1550 3200
	-1   0    0    -1  
$EndComp
$Comp
L Varistor RV?
U 1 1 59C65C14
P 1000 3350
F 0 "RV?" V 750 3400 50  0000 C CNN
F 1 "B72510E250K62" V 850 3550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 930 3350 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=B72510E250K62virtualkey59250000virtualkey871-B72510E250K62" H 1000 3350 50  0001 C CNN
	1    1000 3350
	0    -1   1    0   
$EndComp
$Comp
L C C?
U 1 1 59C65C1B
P 1550 3500
F 0 "C?" H 1665 3546 50  0000 L CNN
F 1 "100n" H 1650 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1588 3350 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 1550 3500 50  0001 C CNN
	1    1550 3500
	-1   0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 59C65C22
P 1200 3500
F 0 "D?" V 1200 3600 50  0000 L CNN
F 1 "CDBA3100-HF" V 1300 3550 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" H 1200 3500 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=CDBA3100-HFvirtualkey59960000virtualkey750-CDBA3100-HF" H 1200 3500 50  0001 C CNN
	1    1200 3500
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR088
U 1 1 59C65C29
P 1550 3650
F 0 "#PWR088" H 1550 3400 50  0001 C CNN
F 1 "GND" H 1555 3477 50  0000 C CNN
F 2 "" H 1550 3650 50  0001 C CNN
F 3 "" H 1550 3650 50  0001 C CNN
	1    1550 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 3650 1550 3650
Wire Wire Line
	1550 3650 1850 3650
Connection ~ 1550 3650
Wire Wire Line
	1150 3350 1200 3350
Wire Wire Line
	1200 3350 1250 3350
Connection ~ 1200 3350
$Comp
L GND #PWR089
U 1 1 59C65C33
P 850 3350
F 0 "#PWR089" H 850 3100 50  0001 C CNN
F 1 "GND" V 855 3222 50  0000 R CNN
F 2 "" H 850 3350 50  0001 C CNN
F 3 "" H 850 3350 50  0001 C CNN
	1    850  3350
	0    1    -1   0   
$EndComp
Wire Wire Line
	1550 3050 1700 3050
Wire Wire Line
	1700 3050 1850 3050
$Comp
L +5V #PWR090
U 1 1 59C65C3A
P 1700 3050
F 0 "#PWR090" H 1700 2900 50  0001 C CNN
F 1 "+5V" H 1715 3223 50  0000 C CNN
F 2 "" H 1700 3050 50  0001 C CNN
F 3 "" H 1700 3050 50  0001 C CNN
	1    1700 3050
	-1   0    0    -1  
$EndComp
Connection ~ 1700 3050
Text GLabel 2150 3350 2    60   Input ~ 0
Sense3
$Comp
L D_Schottky D?
U 1 1 59C65C42
P 1850 3200
F 0 "D?" H 1800 3300 50  0000 L CNN
F 1 "STPS0560Z" V 1700 2750 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1850 3200 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1850 3200 50  0001 C CNN
	1    1850 3200
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 3350 1550 3350
Text GLabel 1200 3350 1    60   Input ~ 0
Sense3_DUT
$Comp
L R R?
U 1 1 59C65CC3
P 2000 4500
F 0 "R?" V 1900 4450 50  0000 C CNN
F 1 "100" V 2000 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1930 4500 50  0001 C CNN
F 3 "" H 2000 4500 50  0001 C CNN
	1    2000 4500
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 59C65CCA
P 1850 4650
F 0 "D?" H 1800 4750 50  0000 L CNN
F 1 "STPS0560Z" H 1800 4550 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1850 4650 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1850 4650 50  0001 C CNN
	1    1850 4650
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C65CD1
P 1400 4500
F 0 "R?" V 1300 4500 50  0000 C CNN
F 1 "1k" V 1400 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1330 4500 50  0001 C CNN
F 3 "" H 1400 4500 50  0001 C CNN
	1    1400 4500
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C65CD8
P 1550 4350
F 0 "R?" H 1620 4396 50  0000 L CNN
F 1 "2k" V 1550 4300 50  0000 L CNN
F 2 "" V 1480 4350 50  0001 C CNN
F 3 "" H 1550 4350 50  0001 C CNN
	1    1550 4350
	-1   0    0    -1  
$EndComp
$Comp
L Varistor RV?
U 1 1 59C65CDF
P 1000 4500
F 0 "RV?" V 750 4550 50  0000 C CNN
F 1 "B72510E250K62" V 850 4700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 930 4500 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=B72510E250K62virtualkey59250000virtualkey871-B72510E250K62" H 1000 4500 50  0001 C CNN
	1    1000 4500
	0    -1   1    0   
$EndComp
$Comp
L C C?
U 1 1 59C65CE6
P 1550 4650
F 0 "C?" H 1665 4696 50  0000 L CNN
F 1 "100n" H 1650 4600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1588 4500 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 1550 4650 50  0001 C CNN
	1    1550 4650
	-1   0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 59C65CED
P 1200 4650
F 0 "D?" V 1200 4750 50  0000 L CNN
F 1 "CDBA3100-HF" V 1300 4700 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" H 1200 4650 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=CDBA3100-HFvirtualkey59960000virtualkey750-CDBA3100-HF" H 1200 4650 50  0001 C CNN
	1    1200 4650
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR091
U 1 1 59C65CF4
P 1550 4800
F 0 "#PWR091" H 1550 4550 50  0001 C CNN
F 1 "GND" H 1555 4627 50  0000 C CNN
F 2 "" H 1550 4800 50  0001 C CNN
F 3 "" H 1550 4800 50  0001 C CNN
	1    1550 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 4800 1550 4800
Wire Wire Line
	1550 4800 1850 4800
Connection ~ 1550 4800
Wire Wire Line
	1150 4500 1200 4500
Wire Wire Line
	1200 4500 1250 4500
Connection ~ 1200 4500
$Comp
L GND #PWR092
U 1 1 59C65CFE
P 850 4500
F 0 "#PWR092" H 850 4250 50  0001 C CNN
F 1 "GND" V 855 4372 50  0000 R CNN
F 2 "" H 850 4500 50  0001 C CNN
F 3 "" H 850 4500 50  0001 C CNN
	1    850  4500
	0    1    -1   0   
$EndComp
Wire Wire Line
	1550 4200 1700 4200
Wire Wire Line
	1700 4200 1850 4200
$Comp
L +5V #PWR093
U 1 1 59C65D05
P 1700 4200
F 0 "#PWR093" H 1700 4050 50  0001 C CNN
F 1 "+5V" H 1715 4373 50  0000 C CNN
F 2 "" H 1700 4200 50  0001 C CNN
F 3 "" H 1700 4200 50  0001 C CNN
	1    1700 4200
	-1   0    0    -1  
$EndComp
Connection ~ 1700 4200
Text GLabel 2150 4500 2    60   Input ~ 0
Sense4
$Comp
L D_Schottky D?
U 1 1 59C65D0D
P 1850 4350
F 0 "D?" H 1800 4450 50  0000 L CNN
F 1 "STPS0560Z" V 1700 3900 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1850 4350 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1850 4350 50  0001 C CNN
	1    1850 4350
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 4500 1550 4500
Text GLabel 1200 4500 1    60   Input ~ 0
Sense4_DUT
$Comp
L R R?
U 1 1 59C661B6
P 2000 5650
F 0 "R?" V 1900 5600 50  0000 C CNN
F 1 "100" V 2000 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1930 5650 50  0001 C CNN
F 3 "" H 2000 5650 50  0001 C CNN
	1    2000 5650
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 59C661BD
P 1850 5800
F 0 "D?" H 1800 5900 50  0000 L CNN
F 1 "STPS0560Z" H 1800 5700 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1850 5800 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1850 5800 50  0001 C CNN
	1    1850 5800
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C661C4
P 1400 5650
F 0 "R?" V 1300 5650 50  0000 C CNN
F 1 "1k" V 1400 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1330 5650 50  0001 C CNN
F 3 "" H 1400 5650 50  0001 C CNN
	1    1400 5650
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C661CB
P 1550 5500
F 0 "R?" H 1620 5546 50  0000 L CNN
F 1 "2k" V 1550 5450 50  0000 L CNN
F 2 "" V 1480 5500 50  0001 C CNN
F 3 "" H 1550 5500 50  0001 C CNN
	1    1550 5500
	-1   0    0    -1  
$EndComp
$Comp
L Varistor RV?
U 1 1 59C661D2
P 1000 5650
F 0 "RV?" V 750 5700 50  0000 C CNN
F 1 "B72510E250K62" V 850 5850 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 930 5650 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=B72510E250K62virtualkey59250000virtualkey871-B72510E250K62" H 1000 5650 50  0001 C CNN
	1    1000 5650
	0    -1   1    0   
$EndComp
$Comp
L C C?
U 1 1 59C661D9
P 1550 5800
F 0 "C?" H 1665 5846 50  0000 L CNN
F 1 "100n" H 1650 5750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1588 5650 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 1550 5800 50  0001 C CNN
	1    1550 5800
	-1   0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 59C661E0
P 1200 5800
F 0 "D?" V 1200 5900 50  0000 L CNN
F 1 "CDBA3100-HF" V 1300 5850 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" H 1200 5800 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=CDBA3100-HFvirtualkey59960000virtualkey750-CDBA3100-HF" H 1200 5800 50  0001 C CNN
	1    1200 5800
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR094
U 1 1 59C661E7
P 1550 5950
F 0 "#PWR094" H 1550 5700 50  0001 C CNN
F 1 "GND" H 1555 5777 50  0000 C CNN
F 2 "" H 1550 5950 50  0001 C CNN
F 3 "" H 1550 5950 50  0001 C CNN
	1    1550 5950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 5950 1550 5950
Wire Wire Line
	1550 5950 1850 5950
Connection ~ 1550 5950
Wire Wire Line
	1150 5650 1200 5650
Wire Wire Line
	1200 5650 1250 5650
Connection ~ 1200 5650
$Comp
L GND #PWR095
U 1 1 59C661F1
P 850 5650
F 0 "#PWR095" H 850 5400 50  0001 C CNN
F 1 "GND" V 855 5522 50  0000 R CNN
F 2 "" H 850 5650 50  0001 C CNN
F 3 "" H 850 5650 50  0001 C CNN
	1    850  5650
	0    1    -1   0   
$EndComp
Wire Wire Line
	1550 5350 1700 5350
Wire Wire Line
	1700 5350 1850 5350
$Comp
L +5V #PWR096
U 1 1 59C661F8
P 1700 5350
F 0 "#PWR096" H 1700 5200 50  0001 C CNN
F 1 "+5V" H 1715 5523 50  0000 C CNN
F 2 "" H 1700 5350 50  0001 C CNN
F 3 "" H 1700 5350 50  0001 C CNN
	1    1700 5350
	-1   0    0    -1  
$EndComp
Connection ~ 1700 5350
Text GLabel 2150 5650 2    60   Input ~ 0
Sense5
$Comp
L D_Schottky D?
U 1 1 59C66200
P 1850 5500
F 0 "D?" H 1800 5600 50  0000 L CNN
F 1 "STPS0560Z" V 1700 5050 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1850 5500 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1850 5500 50  0001 C CNN
	1    1850 5500
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 5650 1550 5650
Text GLabel 1200 5650 1    60   Input ~ 0
Sense5_DUT
$Comp
L R R?
U 1 1 59C662C1
P 2000 6800
F 0 "R?" V 1900 6750 50  0000 C CNN
F 1 "100" V 2000 6800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1930 6800 50  0001 C CNN
F 3 "" H 2000 6800 50  0001 C CNN
	1    2000 6800
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 59C662C8
P 1850 6950
F 0 "D?" H 1800 7050 50  0000 L CNN
F 1 "STPS0560Z" H 1800 6850 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1850 6950 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1850 6950 50  0001 C CNN
	1    1850 6950
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C662CF
P 1400 6800
F 0 "R?" V 1300 6800 50  0000 C CNN
F 1 "1k" V 1400 6800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1330 6800 50  0001 C CNN
F 3 "" H 1400 6800 50  0001 C CNN
	1    1400 6800
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C662D6
P 1550 6650
F 0 "R?" H 1620 6696 50  0000 L CNN
F 1 "2k" V 1550 6600 50  0000 L CNN
F 2 "" V 1480 6650 50  0001 C CNN
F 3 "" H 1550 6650 50  0001 C CNN
	1    1550 6650
	-1   0    0    -1  
$EndComp
$Comp
L Varistor RV?
U 1 1 59C662DD
P 1000 6800
F 0 "RV?" V 750 6850 50  0000 C CNN
F 1 "B72510E250K62" V 850 7000 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 930 6800 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=B72510E250K62virtualkey59250000virtualkey871-B72510E250K62" H 1000 6800 50  0001 C CNN
	1    1000 6800
	0    -1   1    0   
$EndComp
$Comp
L C C?
U 1 1 59C662E4
P 1550 6950
F 0 "C?" H 1665 6996 50  0000 L CNN
F 1 "100n" H 1650 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1588 6800 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 1550 6950 50  0001 C CNN
	1    1550 6950
	-1   0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 59C662EB
P 1200 6950
F 0 "D?" V 1200 7050 50  0000 L CNN
F 1 "CDBA3100-HF" V 1300 7000 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" H 1200 6950 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=CDBA3100-HFvirtualkey59960000virtualkey750-CDBA3100-HF" H 1200 6950 50  0001 C CNN
	1    1200 6950
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR097
U 1 1 59C662F2
P 1550 7100
F 0 "#PWR097" H 1550 6850 50  0001 C CNN
F 1 "GND" H 1555 6927 50  0000 C CNN
F 2 "" H 1550 7100 50  0001 C CNN
F 3 "" H 1550 7100 50  0001 C CNN
	1    1550 7100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 7100 1550 7100
Wire Wire Line
	1550 7100 1850 7100
Connection ~ 1550 7100
Wire Wire Line
	1150 6800 1200 6800
Wire Wire Line
	1200 6800 1250 6800
Connection ~ 1200 6800
$Comp
L GND #PWR098
U 1 1 59C662FC
P 850 6800
F 0 "#PWR098" H 850 6550 50  0001 C CNN
F 1 "GND" V 855 6672 50  0000 R CNN
F 2 "" H 850 6800 50  0001 C CNN
F 3 "" H 850 6800 50  0001 C CNN
	1    850  6800
	0    1    -1   0   
$EndComp
Wire Wire Line
	1550 6500 1700 6500
Wire Wire Line
	1700 6500 1850 6500
$Comp
L +5V #PWR099
U 1 1 59C66303
P 1700 6500
F 0 "#PWR099" H 1700 6350 50  0001 C CNN
F 1 "+5V" H 1715 6673 50  0000 C CNN
F 2 "" H 1700 6500 50  0001 C CNN
F 3 "" H 1700 6500 50  0001 C CNN
	1    1700 6500
	-1   0    0    -1  
$EndComp
Connection ~ 1700 6500
Text GLabel 2150 6800 2    60   Input ~ 0
Sense6
$Comp
L D_Schottky D?
U 1 1 59C6630B
P 1850 6650
F 0 "D?" H 1800 6750 50  0000 L CNN
F 1 "STPS0560Z" V 1700 6200 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1850 6650 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1850 6650 50  0001 C CNN
	1    1850 6650
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 6800 1550 6800
Text GLabel 1200 6800 1    60   Input ~ 0
Sense6_DUT
$Comp
L R R?
U 1 1 59C66C34
P 4200 1100
F 0 "R?" V 4100 1050 50  0000 C CNN
F 1 "100" V 4200 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4130 1100 50  0001 C CNN
F 3 "" H 4200 1100 50  0001 C CNN
	1    4200 1100
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 59C66C3B
P 4050 1250
F 0 "D?" H 4000 1350 50  0000 L CNN
F 1 "STPS0560Z" H 4000 1150 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 4050 1250 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 4050 1250 50  0001 C CNN
	1    4050 1250
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C66C42
P 3600 1100
F 0 "R?" V 3500 1100 50  0000 C CNN
F 1 "1k" V 3600 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3530 1100 50  0001 C CNN
F 3 "" H 3600 1100 50  0001 C CNN
	1    3600 1100
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C66C49
P 3750 950
F 0 "R?" H 3820 996 50  0000 L CNN
F 1 "2k" V 3750 900 50  0000 L CNN
F 2 "" V 3680 950 50  0001 C CNN
F 3 "" H 3750 950 50  0001 C CNN
	1    3750 950 
	-1   0    0    -1  
$EndComp
$Comp
L Varistor RV?
U 1 1 59C66C50
P 3200 1100
F 0 "RV?" V 2950 1150 50  0000 C CNN
F 1 "B72510E250K62" V 3050 1300 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 3130 1100 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=B72510E250K62virtualkey59250000virtualkey871-B72510E250K62" H 3200 1100 50  0001 C CNN
	1    3200 1100
	0    -1   1    0   
$EndComp
$Comp
L C C?
U 1 1 59C66C57
P 3750 1250
F 0 "C?" H 3865 1296 50  0000 L CNN
F 1 "100n" H 3850 1200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3788 1100 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 3750 1250 50  0001 C CNN
	1    3750 1250
	-1   0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 59C66C5E
P 3400 1250
F 0 "D?" V 3400 1350 50  0000 L CNN
F 1 "CDBA3100-HF" V 3500 1300 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" H 3400 1250 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=CDBA3100-HFvirtualkey59960000virtualkey750-CDBA3100-HF" H 3400 1250 50  0001 C CNN
	1    3400 1250
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR0100
U 1 1 59C66C65
P 3750 1400
F 0 "#PWR0100" H 3750 1150 50  0001 C CNN
F 1 "GND" H 3755 1227 50  0000 C CNN
F 2 "" H 3750 1400 50  0001 C CNN
F 3 "" H 3750 1400 50  0001 C CNN
	1    3750 1400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 1400 3750 1400
Wire Wire Line
	3750 1400 4050 1400
Connection ~ 3750 1400
Wire Wire Line
	3350 1100 3400 1100
Wire Wire Line
	3400 1100 3450 1100
Connection ~ 3400 1100
$Comp
L GND #PWR0101
U 1 1 59C66C6F
P 3050 1100
F 0 "#PWR0101" H 3050 850 50  0001 C CNN
F 1 "GND" V 3055 972 50  0000 R CNN
F 2 "" H 3050 1100 50  0001 C CNN
F 3 "" H 3050 1100 50  0001 C CNN
	1    3050 1100
	0    1    -1   0   
$EndComp
Wire Wire Line
	3750 800  3900 800 
Wire Wire Line
	3900 800  4050 800 
$Comp
L +5V #PWR0102
U 1 1 59C66C76
P 3900 800
F 0 "#PWR0102" H 3900 650 50  0001 C CNN
F 1 "+5V" H 3915 973 50  0000 C CNN
F 2 "" H 3900 800 50  0001 C CNN
F 3 "" H 3900 800 50  0001 C CNN
	1    3900 800 
	-1   0    0    -1  
$EndComp
Connection ~ 3900 800 
Text GLabel 6350 4300 0    60   Input ~ 0
Sense7
$Comp
L D_Schottky D?
U 1 1 59C66C7E
P 4050 950
F 0 "D?" H 4000 1050 50  0000 L CNN
F 1 "STPS0560Z" V 3900 500 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 4050 950 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 4050 950 50  0001 C CNN
	1    4050 950 
	0    -1   1    0   
$EndComp
Wire Wire Line
	4050 1100 3750 1100
Text GLabel 3400 1100 1    60   Input ~ 0
Sense7_DUT
$Comp
L R R?
U 1 1 59C66D2F
P 4200 2250
F 0 "R?" V 4100 2200 50  0000 C CNN
F 1 "100" V 4200 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4130 2250 50  0001 C CNN
F 3 "" H 4200 2250 50  0001 C CNN
	1    4200 2250
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 59C66D36
P 4050 2400
F 0 "D?" H 4000 2500 50  0000 L CNN
F 1 "STPS0560Z" H 4000 2300 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 4050 2400 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 4050 2400 50  0001 C CNN
	1    4050 2400
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C66D3D
P 3600 2250
F 0 "R?" V 3500 2250 50  0000 C CNN
F 1 "1k" V 3600 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3530 2250 50  0001 C CNN
F 3 "" H 3600 2250 50  0001 C CNN
	1    3600 2250
	0    -1   1    0   
$EndComp
$Comp
L R R?
U 1 1 59C66D44
P 3750 2100
F 0 "R?" H 3820 2146 50  0000 L CNN
F 1 "2k" V 3750 2050 50  0000 L CNN
F 2 "" V 3680 2100 50  0001 C CNN
F 3 "" H 3750 2100 50  0001 C CNN
	1    3750 2100
	-1   0    0    -1  
$EndComp
$Comp
L Varistor RV?
U 1 1 59C66D4B
P 3200 2250
F 0 "RV?" V 2950 2300 50  0000 C CNN
F 1 "B72510E250K62" V 3050 2450 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 3130 2250 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=B72510E250K62virtualkey59250000virtualkey871-B72510E250K62" H 3200 2250 50  0001 C CNN
	1    3200 2250
	0    -1   1    0   
$EndComp
$Comp
L C C?
U 1 1 59C66D52
P 3750 2400
F 0 "C?" H 3865 2446 50  0000 L CNN
F 1 "100n" H 3850 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3788 2250 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 3750 2400 50  0001 C CNN
	1    3750 2400
	-1   0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 59C66D59
P 3400 2400
F 0 "D?" V 3400 2500 50  0000 L CNN
F 1 "CDBA3100-HF" V 3500 2450 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" H 3400 2400 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=CDBA3100-HFvirtualkey59960000virtualkey750-CDBA3100-HF" H 3400 2400 50  0001 C CNN
	1    3400 2400
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR0103
U 1 1 59C66D60
P 3750 2550
F 0 "#PWR0103" H 3750 2300 50  0001 C CNN
F 1 "GND" H 3755 2377 50  0000 C CNN
F 2 "" H 3750 2550 50  0001 C CNN
F 3 "" H 3750 2550 50  0001 C CNN
	1    3750 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 2550 3750 2550
Wire Wire Line
	3750 2550 4050 2550
Connection ~ 3750 2550
Wire Wire Line
	3350 2250 3400 2250
Wire Wire Line
	3400 2250 3450 2250
Connection ~ 3400 2250
$Comp
L GND #PWR0104
U 1 1 59C66D6A
P 3050 2250
F 0 "#PWR0104" H 3050 2000 50  0001 C CNN
F 1 "GND" V 3055 2122 50  0000 R CNN
F 2 "" H 3050 2250 50  0001 C CNN
F 3 "" H 3050 2250 50  0001 C CNN
	1    3050 2250
	0    1    -1   0   
$EndComp
Wire Wire Line
	3750 1950 3900 1950
Wire Wire Line
	3900 1950 4050 1950
$Comp
L +5V #PWR0105
U 1 1 59C66D71
P 3900 1950
F 0 "#PWR0105" H 3900 1800 50  0001 C CNN
F 1 "+5V" H 3915 2123 50  0000 C CNN
F 2 "" H 3900 1950 50  0001 C CNN
F 3 "" H 3900 1950 50  0001 C CNN
	1    3900 1950
	-1   0    0    -1  
$EndComp
Connection ~ 3900 1950
Text GLabel 6350 4400 0    60   Input ~ 0
Sense8
$Comp
L D_Schottky D?
U 1 1 59C66D79
P 4050 2100
F 0 "D?" H 4000 2200 50  0000 L CNN
F 1 "STPS0560Z" V 3900 1650 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 4050 2100 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 4050 2100 50  0001 C CNN
	1    4050 2100
	0    -1   1    0   
$EndComp
Wire Wire Line
	4050 2250 3750 2250
Text GLabel 3400 2250 1    60   Input ~ 0
Sense8_DUT
$Comp
L ADS1115IDGST U?
U 1 1 59C6928E
P 7050 4100
F 0 "U?" H 7050 4970 50  0000 C CNN
F 1 "ADS1115IDGST" H 7050 4879 50  0000 C CNN
F 2 "SOP50P490X110-10N" H 7050 4100 50  0001 L CNN
F 3 "16-Bit ADC with Integrated MUX%2C PGA%2C Comparator%2C Oscillator%2C and Reference 10-VSSOP -40 to 125" H 7050 4100 50  0001 L CNN
F 4 "ADS1115IDGST" H 7050 4100 50  0001 L CNN "MP"
F 5 "Good" H 7050 4100 50  0001 L CNN "Availability"
F 6 "MSOP-10 Texas Instruments" H 7050 4100 50  0001 L CNN "Package"
F 7 "4.49 USD" H 7050 4100 50  0001 L CNN "Price"
F 8 "Texas Instruments" H 7050 4100 50  0001 L CNN "MF"
	1    7050 4100
	1    0    0    -1  
$EndComp
$Comp
L ADS1115IDGST U?
U 1 1 59C694AA
P 7100 2150
F 0 "U?" H 7100 3020 50  0000 C CNN
F 1 "ADS1115IDGST" H 7100 2929 50  0000 C CNN
F 2 "SOP50P490X110-10N" H 7100 2150 50  0001 L CNN
F 3 "16-Bit ADC with Integrated MUX%2C PGA%2C Comparator%2C Oscillator%2C and Reference 10-VSSOP -40 to 125" H 7100 2150 50  0001 L CNN
F 4 "ADS1115IDGST" H 7100 2150 50  0001 L CNN "MP"
F 5 "Good" H 7100 2150 50  0001 L CNN "Availability"
F 6 "MSOP-10 Texas Instruments" H 7100 2150 50  0001 L CNN "Package"
F 7 "4.49 USD" H 7100 2150 50  0001 L CNN "Price"
F 8 "Texas Instruments" H 7100 2150 50  0001 L CNN "MF"
	1    7100 2150
	1    0    0    -1  
$EndComp
Text GLabel 6400 2150 0    60   Input ~ 0
Sense1
Text GLabel 6400 2250 0    60   Input ~ 0
Sense2
Text GLabel 6400 2350 0    60   Input ~ 0
Sense3
Text GLabel 6400 2450 0    60   Input ~ 0
Sense4
Text GLabel 6350 4100 0    60   Input ~ 0
Sense5
Text GLabel 6350 4200 0    60   Input ~ 0
Sense6
$Comp
L R R?
U 1 1 59C6CAF7
P 5700 3750
F 0 "R?" H 5770 3796 50  0000 L CNN
F 1 "10k" H 5770 3705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 5630 3750 50  0001 C CNN
F 3 "" H 5700 3750 50  0001 C CNN
	1    5700 3750
	1    0    0    -1  
$EndComp
Text GLabel 5550 3900 0    60   Input ~ 0
ANALOG_RDY_2
Wire Wire Line
	5550 3900 5700 3900
Wire Wire Line
	5700 3900 6350 3900
Connection ~ 5700 3900
$Comp
L +3.3V #PWR0106
U 1 1 59C6D362
P 5700 3600
F 0 "#PWR0106" H 5700 3450 50  0001 C CNN
F 1 "+3.3V" H 5715 3773 50  0000 C CNN
F 2 "" H 5700 3600 50  0001 C CNN
F 3 "" H 5700 3600 50  0001 C CNN
	1    5700 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0107
U 1 1 59C6F2E6
P 6400 1850
F 0 "#PWR0107" H 6400 1600 50  0001 C CNN
F 1 "GND" V 6405 1722 50  0000 R CNN
F 2 "" H 6400 1850 50  0001 C CNN
F 3 "" H 6400 1850 50  0001 C CNN
	1    6400 1850
	0    1    1    0   
$EndComp
Text Notes 7550 2750 1    60   ~ 0
I2C address: 0x48
Text GLabel 7800 1650 2    60   Input ~ 0
ANALOG_I2C_SDA
Text GLabel 7750 3600 2    60   Input ~ 0
ANALOG_I2C_SDA
Text GLabel 6350 4600 0    60   Input ~ 0
ANALOG_I2C_SCL
Text GLabel 6400 2650 0    60   Input ~ 0
ANALOG_I2C_SCL
$Comp
L GND #PWR0108
U 1 1 59C70E9B
P 6350 4800
F 0 "#PWR0108" H 6350 4550 50  0001 C CNN
F 1 "GND" V 6355 4672 50  0000 R CNN
F 2 "" H 6350 4800 50  0001 C CNN
F 3 "" H 6350 4800 50  0001 C CNN
	1    6350 4800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0109
U 1 1 59C7135C
P 6400 2850
F 0 "#PWR0109" H 6400 2600 50  0001 C CNN
F 1 "GND" V 6405 2722 50  0000 R CNN
F 2 "" H 6400 2850 50  0001 C CNN
F 3 "" H 6400 2850 50  0001 C CNN
	1    6400 2850
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 59C71FCA
P 8000 2500
F 0 "C?" H 8115 2546 50  0000 L CNN
F 1 "100n" H 8115 2455 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8038 2350 50  0001 C CNN
F 3 "" H 8000 2500 50  0001 C CNN
	1    8000 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0110
U 1 1 59C720F6
P 8000 2650
F 0 "#PWR0110" H 8000 2400 50  0001 C CNN
F 1 "GND" H 8005 2477 50  0000 C CNN
F 2 "" H 8000 2650 50  0001 C CNN
F 3 "" H 8000 2650 50  0001 C CNN
	1    8000 2650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0111
U 1 1 59C72255
P 8000 2350
F 0 "#PWR0111" H 8000 2200 50  0001 C CNN
F 1 "+3.3V" H 8015 2523 50  0000 C CNN
F 2 "" H 8000 2350 50  0001 C CNN
F 3 "" H 8000 2350 50  0001 C CNN
	1    8000 2350
	1    0    0    -1  
$EndComp
Wire Notes Line
	7800 2950 8500 2950
Wire Notes Line
	8500 2950 8500 2050
Wire Notes Line
	8500 2050 7800 2050
Wire Notes Line
	7800 2050 7800 2950
Text Notes 8450 2850 1    60   ~ 0
Near ADS1115:1
$Comp
L C C?
U 1 1 59C72B05
P 8000 4450
F 0 "C?" H 8115 4496 50  0000 L CNN
F 1 "100n" H 8115 4405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8038 4300 50  0001 C CNN
F 3 "" H 8000 4450 50  0001 C CNN
	1    8000 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0112
U 1 1 59C72B0C
P 8000 4600
F 0 "#PWR0112" H 8000 4350 50  0001 C CNN
F 1 "GND" H 8005 4427 50  0000 C CNN
F 2 "" H 8000 4600 50  0001 C CNN
F 3 "" H 8000 4600 50  0001 C CNN
	1    8000 4600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0113
U 1 1 59C72B12
P 8000 4300
F 0 "#PWR0113" H 8000 4150 50  0001 C CNN
F 1 "+3.3V" H 8015 4473 50  0000 C CNN
F 2 "" H 8000 4300 50  0001 C CNN
F 3 "" H 8000 4300 50  0001 C CNN
	1    8000 4300
	1    0    0    -1  
$EndComp
Wire Notes Line
	7800 4900 8500 4900
Wire Notes Line
	8500 4900 8500 4000
Wire Notes Line
	8500 4000 7800 4000
Wire Notes Line
	7800 4000 7800 4900
Text Notes 8450 4800 1    60   ~ 0
Near ADS1115:2
$Comp
L R R?
U 1 1 59C73C3C
P 5700 1800
F 0 "R?" H 5770 1846 50  0000 L CNN
F 1 "10k" H 5770 1755 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 5630 1800 50  0001 C CNN
F 3 "" H 5700 1800 50  0001 C CNN
	1    5700 1800
	1    0    0    -1  
$EndComp
Text GLabel 5550 1950 0    60   Input ~ 0
ANALOG_RDY_1
Wire Wire Line
	5550 1950 5700 1950
Wire Wire Line
	5550 1950 6400 1950
Connection ~ 5700 1950
$Comp
L +3.3V #PWR0114
U 1 1 59C73C46
P 5700 1650
F 0 "#PWR0114" H 5700 1500 50  0001 C CNN
F 1 "+3.3V" H 5715 1823 50  0000 C CNN
F 2 "" H 5700 1650 50  0001 C CNN
F 3 "" H 5700 1650 50  0001 C CNN
	1    5700 1650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0115
U 1 1 59C73F9C
P 6350 3800
F 0 "#PWR0115" H 6350 3650 50  0001 C CNN
F 1 "+3.3V" V 6365 3928 50  0000 L CNN
F 2 "" H 6350 3800 50  0001 C CNN
F 3 "" H 6350 3800 50  0001 C CNN
	1    6350 3800
	0    -1   -1   0   
$EndComp
Text GLabel 4350 1100 2    60   Input ~ 0
Sense7
Text GLabel 4350 2250 2    60   Input ~ 0
Sense8
Text GLabel 6400 1650 0    60   Input ~ 0
I2C_PWR
Text GLabel 6350 3600 0    60   Input ~ 0
I2C_PWR
$EndSCHEMATC
