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
Sheet 6 6
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
P 1100 1300
F 0 "R?" V 1000 1250 50  0000 C CNN
F 1 "100" V 1100 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1030 1300 50  0001 C CNN
F 3 "" H 1100 1300 50  0001 C CNN
	1    1100 1300
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 59C693EA
P 1250 1450
F 0 "D?" H 1200 1550 50  0000 L CNN
F 1 "STPS0560Z" H 1200 1350 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1250 1450 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1250 1450 50  0001 C CNN
	1    1250 1450
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59C694AB
P 1700 1300
F 0 "R?" V 1600 1300 50  0000 C CNN
F 1 "1k" V 1700 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1630 1300 50  0001 C CNN
F 3 "" H 1700 1300 50  0001 C CNN
	1    1700 1300
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59C6950D
P 1550 1150
F 0 "R?" H 1620 1196 50  0000 L CNN
F 1 "2k" V 1550 1100 50  0000 L CNN
F 2 "" V 1480 1150 50  0001 C CNN
F 3 "" H 1550 1150 50  0001 C CNN
	1    1550 1150
	1    0    0    -1  
$EndComp
$Comp
L Varistor RV?
U 1 1 59C696C7
P 2100 1300
F 0 "RV?" V 1850 1350 50  0000 C CNN
F 1 "B72510E250K62" V 1950 1500 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 2030 1300 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=B72510E250K62virtualkey59250000virtualkey871-B72510E250K62" H 2100 1300 50  0001 C CNN
	1    2100 1300
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 59C69779
P 1550 1450
F 0 "C?" H 1665 1496 50  0000 L CNN
F 1 "100n" H 1650 1400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1588 1300 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=08055C104JAT2Avirtualkey58110000virtualkey581-08055C104J" H 1550 1450 50  0001 C CNN
	1    1550 1450
	1    0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 59C698B8
P 1900 1450
F 0 "D?" V 1900 1550 50  0000 L CNN
F 1 "CDBA3100-HF" V 2000 1500 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" H 1900 1450 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=CDBA3100-HFvirtualkey59960000virtualkey750-CDBA3100-HF" H 1900 1450 50  0001 C CNN
	1    1900 1450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR067
U 1 1 59C6995B
P 1550 1600
F 0 "#PWR067" H 1550 1350 50  0001 C CNN
F 1 "GND" H 1555 1427 50  0000 C CNN
F 2 "" H 1550 1600 50  0001 C CNN
F 3 "" H 1550 1600 50  0001 C CNN
	1    1550 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1600 1900 1600
Connection ~ 1550 1600
Wire Wire Line
	1850 1300 1950 1300
Connection ~ 1900 1300
$Comp
L GND #PWR068
U 1 1 59C699C4
P 2250 1300
F 0 "#PWR068" H 2250 1050 50  0001 C CNN
F 1 "GND" V 2255 1172 50  0000 R CNN
F 2 "" H 2250 1300 50  0001 C CNN
F 3 "" H 2250 1300 50  0001 C CNN
	1    2250 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 1000 1550 1000
$Comp
L +5V #PWR069
U 1 1 59C69AB2
P 1400 1000
F 0 "#PWR069" H 1400 850 50  0001 C CNN
F 1 "+5V" H 1415 1173 50  0000 C CNN
F 2 "" H 1400 1000 50  0001 C CNN
F 3 "" H 1400 1000 50  0001 C CNN
	1    1400 1000
	1    0    0    -1  
$EndComp
Connection ~ 1400 1000
Text GLabel 950  1300 0    60   Input ~ 0
Sense1
$Comp
L D_Schottky D?
U 1 1 59C69DB2
P 1250 1150
F 0 "D?" H 1200 1250 50  0000 L CNN
F 1 "STPS0560Z" V 1100 700 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123" H 1250 1150 50  0001 C CNN
F 3 "http://www.mouser.se/Search/ProductDetail.aspx?R=STPS0560Zvirtualkey51120000virtualkey511-STPS0560Z" H 1250 1150 50  0001 C CNN
	1    1250 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 1300 1550 1300
Text GLabel 1900 1300 1    60   Input ~ 0
Sense1_DUT
$EndSCHEMATC
