EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 34
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 4800 3800 2    60   ~ 0
I2C address: 0x49
$Comp
L power:+3.3V #PWR0503
U 1 1 59C73F9C
P 3650 2850
F 0 "#PWR0503" H 3650 2700 50  0001 C CNN
F 1 "+3.3V" V 3665 2978 50  0000 L CNN
F 2 "" H 3650 2850 50  0001 C CNN
F 3 "" H 3650 2850 50  0001 C CNN
	1    3650 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0508
U 1 1 59C73C46
P 4200 1050
F 0 "#PWR0508" H 4200 900 50  0001 C CNN
F 1 "+3.3V" H 4215 1223 50  0000 C CNN
F 2 "" H 4200 1050 50  0001 C CNN
F 3 "" H 4200 1050 50  0001 C CNN
	1    4200 1050
	1    0    0    -1  
$EndComp
Text GLabel 4350 1350 2    60   Input ~ 0
ANALOG_RDY_1
$Comp
L Device:R R502
U 1 1 59C73C3C
P 4200 1200
F 0 "R502" H 4270 1246 50  0000 L CNN
F 1 "10k" H 4270 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4130 1200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 4200 1200 50  0001 C CNN
	1    4200 1200
	1    0    0    -1  
$EndComp
Text Notes 5950 3650 1    60   ~ 0
Near ADS1115:2
Wire Notes Line
	5300 2850 5300 3750
Wire Notes Line
	6000 2850 5300 2850
Wire Notes Line
	6000 3750 6000 2850
Wire Notes Line
	5300 3750 6000 3750
$Comp
L power:GND #PWR0512
U 1 1 59C72B0C
P 5500 3450
F 0 "#PWR0512" H 5500 3200 50  0001 C CNN
F 1 "GND" H 5505 3277 50  0000 C CNN
F 2 "" H 5500 3450 50  0001 C CNN
F 3 "" H 5500 3450 50  0001 C CNN
	1    5500 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C502
U 1 1 59C72B05
P 5500 3300
F 0 "C502" H 5615 3346 50  0000 L CNN
F 1 "100n" H 5615 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5538 3150 50  0001 C CNN
F 3 "" H 5500 3300 50  0001 C CNN
	1    5500 3300
	1    0    0    -1  
$EndComp
Text Notes 5900 1900 1    60   ~ 0
Near ADS1115:1
Wire Notes Line
	5250 1100 5250 2000
Wire Notes Line
	5950 1100 5250 1100
Wire Notes Line
	5950 2000 5950 1100
Wire Notes Line
	5250 2000 5950 2000
$Comp
L power:GND #PWR0510
U 1 1 59C720F6
P 5450 1700
F 0 "#PWR0510" H 5450 1450 50  0001 C CNN
F 1 "GND" H 5455 1527 50  0000 C CNN
F 2 "" H 5450 1700 50  0001 C CNN
F 3 "" H 5450 1700 50  0001 C CNN
	1    5450 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C501
U 1 1 59C71FCA
P 5450 1550
F 0 "C501" H 5565 1596 50  0000 L CNN
F 1 "100n" H 5565 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5488 1400 50  0001 C CNN
F 3 "" H 5450 1550 50  0001 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0504
U 1 1 59C70E9B
P 3650 3750
F 0 "#PWR0504" H 3650 3500 50  0001 C CNN
F 1 "GND" V 3655 3622 50  0000 R CNN
F 2 "" H 3650 3750 50  0001 C CNN
F 3 "" H 3650 3750 50  0001 C CNN
	1    3650 3750
	1    0    0    -1  
$EndComp
Text Notes 4700 2000 2    60   ~ 0
I2C address: 0x48
$Comp
L power:GND #PWR0502
U 1 1 59C6F2E6
P 3650 1950
F 0 "#PWR0502" H 3650 1700 50  0001 C CNN
F 1 "GND" V 3655 1822 50  0000 R CNN
F 2 "" H 3650 1950 50  0001 C CNN
F 3 "" H 3650 1950 50  0001 C CNN
	1    3650 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0507
U 1 1 59C6D362
P 4150 2850
F 0 "#PWR0507" H 4150 2700 50  0001 C CNN
F 1 "+3.3V" H 4165 3023 50  0000 C CNN
F 2 "" H 4150 2850 50  0001 C CNN
F 3 "" H 4150 2850 50  0001 C CNN
	1    4150 2850
	1    0    0    -1  
$EndComp
Text GLabel 4450 3150 2    60   Input ~ 0
ANALOG_RDY_2
$Comp
L Device:R R501
U 1 1 59C6CAF7
P 4150 3000
F 0 "R501" H 4220 3046 50  0000 L CNN
F 1 "10k" H 4220 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 3000 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 4150 3000 50  0001 C CNN
	1    4150 3000
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:ADS1115IDGS U501
U 1 1 59C694AA
P 3650 1550
F 0 "U501" H 3850 2100 50  0000 C CNN
F 1 "ADS1115IDGST" H 3300 2050 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 3650 1550 50  0001 L CNN
F 3 "16-Bit ADC with Integrated MUX%2C PGA%2C Comparator%2C Oscillator%2C and Reference 10-VSSOP -40 to 125" H 3650 1550 50  0001 L CNN
F 4 "ADS1115IDGST" H 3650 1550 50  0001 L CNN "MP"
F 5 "Good" H 3650 1550 50  0001 L CNN "Availability"
F 6 "MSOP-10 Texas Instruments" H 3650 1550 50  0001 L CNN "Package"
F 7 "4.49 USD" H 3650 1550 50  0001 L CNN "Price"
F 8 "Texas Instruments" H 3650 1550 50  0001 L CNN "MF"
	1    3650 1550
	1    0    0    -1  
$EndComp
Text GLabel 1200 3800 0    60   Input ~ 0
Sense8_DUT
Text GLabel 1200 3400 0    60   Input ~ 0
Sense7_DUT
Text GLabel 1200 3000 0    60   Input ~ 0
Sense6_DUT
Text GLabel 1200 2600 0    60   Input ~ 0
Sense5_DUT
Text GLabel 1200 2200 0    60   Input ~ 0
Sense4_DUT
Text GLabel 1200 1800 0    60   Input ~ 0
Sense3_DUT
Text GLabel 1200 1400 0    60   Input ~ 0
Sense2_DUT
Text GLabel 1200 1000 0    60   Input ~ 0
Sense1_DUT
$Comp
L power:+3.3V #PWR0509
U 1 1 5A53E0D6
P 5450 1400
F 0 "#PWR0509" H 5450 1250 50  0001 C CNN
F 1 "+3.3V" H 5465 1573 50  0000 C CNN
F 2 "" H 5450 1400 50  0001 C CNN
F 3 "" H 5450 1400 50  0001 C CNN
	1    5450 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0511
U 1 1 5A53E39D
P 5500 3150
F 0 "#PWR0511" H 5500 3000 50  0001 C CNN
F 1 "+3.3V" H 5515 3323 50  0000 C CNN
F 2 "" H 5500 3150 50  0001 C CNN
F 3 "" H 5500 3150 50  0001 C CNN
	1    5500 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0501
U 1 1 5A53E8E5
P 3650 1050
F 0 "#PWR0501" H 3650 900 50  0001 C CNN
F 1 "+3.3V" H 3665 1223 50  0000 C CNN
F 2 "" H 3650 1050 50  0001 C CNN
F 3 "" H 3650 1050 50  0001 C CNN
	1    3650 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1350 4200 1350
Wire Wire Line
	4200 1350 4350 1350
Connection ~ 4200 1350
$Comp
L Analog_ADC:ADS1115IDGS U502
U 1 1 5B62F45A
P 3650 3350
F 0 "U502" H 3850 3850 50  0000 C CNN
F 1 "ADS1115IDGST" H 3300 3850 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 3650 3350 50  0001 L CNN
F 3 "16-Bit ADC with Integrated MUX%2C PGA%2C Comparator%2C Oscillator%2C and Reference 10-VSSOP -40 to 125" H 3650 3350 50  0001 L CNN
F 4 "ADS1115IDGST" H 3650 3350 50  0001 L CNN "MP"
F 5 "Good" H 3650 3350 50  0001 L CNN "Availability"
F 6 "MSOP-10 Texas Instruments" H 3650 3350 50  0001 L CNN "Package"
F 7 "4.49 USD" H 3650 3350 50  0001 L CNN "Price"
F 8 "Texas Instruments" H 3650 3350 50  0001 L CNN "MF"
	1    3650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3150 4150 3150
Wire Wire Line
	4050 3150 4150 3150
Connection ~ 4150 3150
$Comp
L power:GND #PWR0505
U 1 1 5B63FAD0
P 4050 1750
F 0 "#PWR0505" H 4050 1500 50  0001 C CNN
F 1 "GND" V 4055 1622 50  0000 R CNN
F 2 "" H 4050 1750 50  0001 C CNN
F 3 "" H 4050 1750 50  0001 C CNN
	1    4050 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0506
U 1 1 5B63FDDD
P 4050 3550
F 0 "#PWR0506" H 4050 3400 50  0001 C CNN
F 1 "+3.3V" V 4065 3678 50  0000 L CNN
F 2 "" H 4050 3550 50  0001 C CNN
F 3 "" H 4050 3550 50  0001 C CNN
	1    4050 3550
	0    1    1    0   
$EndComp
$Sheet
S 1300 900  550  200 
U 5B7620B9
F0 "AnalogSensCircuit1" 50
F1 "AnalogSensCircuit.sch" 50
F2 "DUT" I L 1300 1000 50 
F3 "Adc" O R 1850 1000 50 
$EndSheet
Wire Wire Line
	1300 1000 1200 1000
$Sheet
S 1300 1300 550  200 
U 5B774401
F0 "AnalogSensCircuit2" 50
F1 "AnalogSensCircuit.sch" 50
F2 "DUT" I L 1300 1400 50 
F3 "Adc" O R 1850 1400 50 
$EndSheet
Wire Wire Line
	1300 1400 1200 1400
$Sheet
S 1300 1700 550  200 
U 5B7744D6
F0 "AnalogSensCircuit3" 50
F1 "AnalogSensCircuit.sch" 50
F2 "DUT" I L 1300 1800 50 
F3 "Adc" O R 1850 1800 50 
$EndSheet
Wire Wire Line
	1300 1800 1200 1800
$Sheet
S 1300 2100 550  200 
U 5B77465F
F0 "AnalogSensCircuit4" 50
F1 "AnalogSensCircuit.sch" 50
F2 "DUT" I L 1300 2200 50 
F3 "Adc" O R 1850 2200 50 
$EndSheet
Wire Wire Line
	1300 2200 1200 2200
$Sheet
S 1300 2500 550  200 
U 5B7747EB
F0 "AnalogSensCircuit5" 50
F1 "AnalogSensCircuit.sch" 50
F2 "DUT" I L 1300 2600 50 
F3 "Adc" O R 1850 2600 50 
$EndSheet
Wire Wire Line
	1300 2600 1200 2600
$Sheet
S 1300 2900 550  200 
U 5B774A61
F0 "AnalogSensCircuit6" 50
F1 "AnalogSensCircuit.sch" 50
F2 "DUT" I L 1300 3000 50 
F3 "Adc" O R 1850 3000 50 
$EndSheet
Wire Wire Line
	1300 3000 1200 3000
$Sheet
S 1300 3300 550  200 
U 5B774D4C
F0 "AnalogSensCircuit7" 50
F1 "AnalogSensCircuit.sch" 50
F2 "DUT" I L 1300 3400 50 
F3 "Adc" O R 1850 3400 50 
$EndSheet
Wire Wire Line
	1300 3400 1200 3400
$Sheet
S 1300 3700 550  200 
U 5B77572B
F0 "AnalogSensCircuit8" 50
F1 "AnalogSensCircuit.sch" 50
F2 "DUT" I L 1300 3800 50 
F3 "Adc" O R 1850 3800 50 
$EndSheet
Wire Wire Line
	1300 3800 1200 3800
Wire Wire Line
	1850 1000 2950 1000
Wire Wire Line
	2950 1000 2950 1450
Wire Wire Line
	2950 1450 3250 1450
Wire Wire Line
	3250 1550 2850 1550
Wire Wire Line
	2850 1550 2850 1400
Wire Wire Line
	2850 1400 1850 1400
Wire Wire Line
	3250 1650 2850 1650
Wire Wire Line
	2850 1650 2850 1800
Wire Wire Line
	2850 1800 1850 1800
Wire Wire Line
	1850 2200 2950 2200
Wire Wire Line
	2950 2200 2950 1750
Wire Wire Line
	2950 1750 3250 1750
Wire Wire Line
	1850 2600 2950 2600
Wire Wire Line
	2950 2600 2950 3250
Wire Wire Line
	2950 3250 3250 3250
Wire Wire Line
	3250 3350 2900 3350
Wire Wire Line
	2900 3350 2900 3000
Wire Wire Line
	2900 3000 1850 3000
Wire Wire Line
	1850 3400 2900 3400
Wire Wire Line
	2900 3400 2900 3450
Wire Wire Line
	2900 3450 3250 3450
Wire Wire Line
	3250 3550 2950 3550
Wire Wire Line
	2950 3550 2950 3800
Wire Wire Line
	2950 3800 1850 3800
Text GLabel 4050 1550 2    60   Input ~ 0
I2C_SCL
Text GLabel 4050 1650 2    60   Input ~ 0
I2C_SDA
Text GLabel 4050 3350 2    60   Input ~ 0
I2C_SCL
Text GLabel 4050 3450 2    60   Input ~ 0
I2C_SDA
$EndSCHEMATC
