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
Sheet 4 6
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
L R R406
U 1 1 59C691B1
P 7200 3750
F 0 "R406" H 7270 3796 50  0000 L CNN
F 1 "10k" H 7270 3705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7130 3750 50  0001 C CNN
F 3 "" H 7200 3750 50  0001 C CNN
	1    7200 3750
	-1   0    0    -1  
$EndComp
$Comp
L R R408
U 1 1 59C69221
P 7500 3750
F 0 "R408" H 7570 3796 50  0000 L CNN
F 1 "10k" H 7570 3705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7430 3750 50  0001 C CNN
F 3 "" H 7500 3750 50  0001 C CNN
	1    7500 3750
	-1   0    0    -1  
$EndComp
$Comp
L R R407
U 1 1 59C71DAE
P 7250 2650
F 0 "R407" H 7320 2696 50  0000 L CNN
F 1 "10k" H 7320 2605 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7180 2650 50  0001 C CNN
F 3 "" H 7250 2650 50  0001 C CNN
	1    7250 2650
	-1   0    0    -1  
$EndComp
$Comp
L R R409
U 1 1 59C71DB5
P 7700 2650
F 0 "R409" H 7770 2696 50  0000 L CNN
F 1 "10k" H 7770 2605 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7630 2650 50  0001 C CNN
F 3 "" H 7700 2650 50  0001 C CNN
	1    7700 2650
	-1   0    0    1   
$EndComp
$Comp
L Spark_ESP32Thing SPRKESP32401
U 1 1 59C7CB17
P 9150 3300
F 0 "SPRKESP32401" V 9143 5049 60  0000 L CNN
F 1 "Spark_ESP32Thing" V 9249 5049 60  0000 L CNN
F 2 "spark_esp32thing:Sparkfun_ESP32Thing" V 7751 3501 60  0001 C CNN
F 3 "" V 7751 3501 60  0001 C CNN
	1    9150 3300
	0    1    1    0   
$EndComp
$Comp
L AVR-JTAG-10 CON401
U 1 1 59C8CC4C
P 3250 7150
F 0 "CON401" H 3224 7605 50  0000 C CNN
F 1 "AVR-JTAG-10" H 3224 7514 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" V 2680 7170 50  0001 C CNN
F 3 "" H 3250 7150 50  0001 C CNN
	1    3250 7150
	1    0    0    -1  
$EndComp
Text GLabel 1900 6950 0    60   Input ~ 0
JTAG:MTCK
Text GLabel 1900 7050 0    60   Input ~ 0
JTAG:MTDO
Text GLabel 1900 7150 0    60   Input ~ 0
JTAG_MTMS
Text GLabel 1900 7350 0    60   Input ~ 0
JTAG_MTDI
Text GLabel 3800 7150 2    60   Input ~ 0
~RESET
NoConn ~ 3050 7250
NoConn ~ 3300 7250
$Comp
L R R403
U 1 1 59C8CED4
P 2450 6650
F 0 "R403" V 2350 6600 50  0000 L CNN
F 1 "10k" V 2450 6600 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 2380 6650 50  0001 C CNN
F 3 "" H 2450 6650 50  0001 C CNN
	1    2450 6650
	1    0    0    -1  
$EndComp
$Comp
L R R404
U 1 1 59C8CFF5
P 2650 6650
F 0 "R404" V 2550 6600 50  0000 L CNN
F 1 "10k" V 2650 6600 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 2580 6650 50  0001 C CNN
F 3 "" H 2650 6650 50  0001 C CNN
	1    2650 6650
	1    0    0    -1  
$EndComp
$Comp
L R R402
U 1 1 59C8D049
P 2250 6650
F 0 "R402" V 2150 6600 50  0000 L CNN
F 1 "10k" V 2250 6600 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 2180 6650 50  0001 C CNN
F 3 "" H 2250 6650 50  0001 C CNN
	1    2250 6650
	1    0    0    -1  
$EndComp
$Comp
L R R401
U 1 1 59C8D06F
P 2050 6650
F 0 "R401" V 1950 6600 50  0000 L CNN
F 1 "10k" V 2050 6600 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 1980 6650 50  0001 C CNN
F 3 "" H 2050 6650 50  0001 C CNN
	1    2050 6650
	1    0    0    -1  
$EndComp
Text GLabel 8450 2700 0    60   Input ~ 0
JTAG:MTCK
Text GLabel 8800 4350 0    60   Input ~ 0
JTAG:MTDO
Text GLabel 8950 2500 0    60   Input ~ 0
JTAG_MTMS
Text GLabel 8950 2600 0    60   Input ~ 0
JTAG_MTDI
Text GLabel 8950 2800 0    60   Input ~ 0
~RESET
$Comp
L Jumper JP401
U 1 1 59C8D933
P 8200 3300
F 0 "JP401" H 8200 3564 50  0000 C CNN
F 1 "Jumper" H 8200 3473 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8200 3300 50  0001 C CNN
F 3 "" H 8200 3300 50  0001 C CNN
	1    8200 3300
	1    0    0    -1  
$EndComp
NoConn ~ 8950 3600
NoConn ~ 8950 3500
NoConn ~ 8950 3200
NoConn ~ 8950 3100
Text Label 8100 2400 0    60   ~ 0
I2C_PWR_CTRL
Text Label 7750 4000 0    60   ~ 0
DIGITAL_I2C_SDA
Text Label 7750 3900 0    60   ~ 0
DIGITAL_I2C_SCL
$Comp
L Conn_02x04_Counter_Clockwise J403
U 1 1 59CBC9D8
P 6950 1500
F 0 "J403" H 7000 1817 50  0000 C CNN
F 1 "Conn_02x04_Counter_Clockwise" H 7000 1726 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W9.53mm_SMD" H 6950 1500 50  0001 C CNN
F 3 "" H 6950 1500 50  0001 C CNN
	1    6950 1500
	1    0    0    -1  
$EndComp
$Comp
L R R413
U 1 1 59CBCB6B
P 8550 1200
F 0 "R413" H 8620 1246 50  0000 L CNN
F 1 "10k" H 8620 1155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 8480 1200 50  0001 C CNN
F 3 "" H 8550 1200 50  0001 C CNN
	1    8550 1200
	-1   0    0    -1  
$EndComp
$Comp
L R R411
U 1 1 59CBCBC3
P 8250 1200
F 0 "R411" H 8320 1246 50  0000 L CNN
F 1 "10k" H 8320 1155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 8180 1200 50  0001 C CNN
F 3 "" H 8250 1200 50  0001 C CNN
	1    8250 1200
	-1   0    0    -1  
$EndComp
$Comp
L R R414
U 1 1 59CBCC03
P 8850 1200
F 0 "R414" H 8920 1246 50  0000 L CNN
F 1 "10k" H 8920 1155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 8780 1200 50  0001 C CNN
F 3 "" H 8850 1200 50  0001 C CNN
	1    8850 1200
	-1   0    0    -1  
$EndComp
$Comp
L R R410
U 1 1 59CBCC4F
P 7950 1200
F 0 "R410" H 8020 1246 50  0000 L CNN
F 1 "10k" H 8020 1155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7880 1200 50  0001 C CNN
F 3 "" H 7950 1200 50  0001 C CNN
	1    7950 1200
	-1   0    0    -1  
$EndComp
$Comp
L R R405
U 1 1 59CD06A1
P 5600 4800
F 0 "R405" H 5670 4846 50  0000 L CNN
F 1 "10k" H 5670 4755 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 5530 4800 50  0001 C CNN
F 3 "" H 5600 4800 50  0001 C CNN
	1    5600 4800
	1    0    0    -1  
$EndComp
Text Label 8050 4300 0    60   ~ 0
RGB_LED_DATA_CTRL
Text Label 7950 4500 0    60   ~ 0
LEVEL_SHIFTER_ENABLE
Text Notes 2850 4350 0    60   ~ 0
To Status
Text Notes 3850 3500 0    60   ~ 0
To backplane
Text Label 8100 2200 0    60   ~ 0
ANALOG_I2C_SCL
Text Label 8100 2300 0    60   ~ 0
ANALOG_I2C_SDA
Text Label 8100 2000 0    60   ~ 0
ANALOG_RDY_1
Text Label 8100 2100 0    60   ~ 0
ANALOG_RDY_2
Text Label 8100 1900 0    60   ~ 0
DIA_Interrupt
Text Label 4200 2650 0    60   ~ 0
I2C_PWR_CTRL
Text Label 4200 3150 0    60   ~ 0
ANALOG_I2C_SDA
Text Label 3550 3250 2    60   ~ 0
ANALOG_I2C_SCL
Text Label 3550 3150 2    60   ~ 0
ANALOG_RDY_2
Text Label 4200 3050 0    60   ~ 0
ANALOG_RDY_1
Text Label 3550 3050 2    60   ~ 0
DIA_Interrupt
Entry Wire Line
	6900 2050 7000 2150
Entry Wire Line
	6800 2050 6900 2150
Entry Wire Line
	7750 2050 7850 2150
Text Label 8100 1800 0    60   ~ 0
BELL_CTRL
Text Label 4200 2950 0    60   ~ 0
BELL_CTRL
$Comp
L C C401
U 1 1 59D1C28A
P 6000 3600
F 0 "C401" V 6250 3550 50  0000 C CNN
F 1 "100n" V 6150 3550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 6038 3450 50  0001 C CNN
F 3 "" H 6000 3600 50  0001 C CNN
	1    6000 3600
	1    0    0    -1  
$EndComp
$Comp
L C C402
U 1 1 59D1C291
P 5800 3600
F 0 "C402" V 6050 3600 50  0000 C CNN
F 1 "100n" V 5950 3600 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 5838 3450 50  0001 C CNN
F 3 "" H 5800 3600 50  0001 C CNN
	1    5800 3600
	-1   0    0    1   
$EndComp
Text Label 4200 2850 0    60   ~ 0
Wiegand_D2
Text Label 3550 2850 2    60   ~ 0
Wiegand_D1
Text Label 4200 2750 0    60   ~ 0
DIGITAL_I2C_SDA
Text Label 3550 2750 2    60   ~ 0
DIGITAL_I2C_SCL
Text Label 3850 5050 2    60   ~ 0
LEVEL_SHIFTER_ENABLE
Text Label 3950 5150 2    60   ~ 0
RGB_LED_DATA_CTRL
Entry Wire Line
	3900 5150 4000 5250
Entry Wire Line
	3800 5150 3900 5250
Entry Wire Line
	7850 4400 7950 4300
Entry Wire Line
	7850 4600 7950 4500
Entry Wire Line
	5450 4750 5550 4650
Entry Wire Line
	7900 2050 8000 1950
Entry Wire Line
	7900 2150 8000 2050
Entry Wire Line
	7450 2050 7550 1950
Entry Wire Line
	7550 2050 7650 1950
$Comp
L GND_C #PWR038
U 1 1 59CA542E
P 8400 1050
F 0 "#PWR038" H 8400 800 50  0001 C CNN
F 1 "GND_C" H 8405 877 50  0000 C CNN
F 2 "" H 8400 1050 50  0001 C CNN
F 3 "" H 8400 1050 50  0001 C CNN
	1    8400 1050
	-1   0    0    1   
$EndComp
$Comp
L GND_C #PWR040
U 1 1 59CA5645
P 8950 3000
F 0 "#PWR040" H 8950 2750 50  0001 C CNN
F 1 "GND_C" V 8955 2872 50  0000 R CNN
F 2 "" H 8950 3000 50  0001 C CNN
F 3 "" H 8950 3000 50  0001 C CNN
	1    8950 3000
	0    1    1    0   
$EndComp
$Comp
L GND_C #PWR042
U 1 1 59CA5910
P 8950 3300
F 0 "#PWR042" H 8950 3050 50  0001 C CNN
F 1 "GND_C" V 8955 3172 50  0000 R CNN
F 2 "" H 8950 3300 50  0001 C CNN
F 3 "" H 8950 3300 50  0001 C CNN
	1    8950 3300
	0    1    1    0   
$EndComp
$Comp
L GND_C #PWR043
U 1 1 59CA5949
P 8950 3400
F 0 "#PWR043" H 8950 3150 50  0001 C CNN
F 1 "GND_C" V 8955 3272 50  0000 R CNN
F 2 "" H 8950 3400 50  0001 C CNN
F 3 "" H 8950 3400 50  0001 C CNN
	1    8950 3400
	0    1    1    0   
$EndComp
$Comp
L GND_C #PWR045
U 1 1 59CA5982
P 8950 3700
F 0 "#PWR045" H 8950 3450 50  0001 C CNN
F 1 "GND_C" V 8955 3572 50  0000 R CNN
F 2 "" H 8950 3700 50  0001 C CNN
F 3 "" H 8950 3700 50  0001 C CNN
	1    8950 3700
	0    1    1    0   
$EndComp
$Comp
L GND_C #PWR070
U 1 1 59CA59E9
P 8950 5300
F 0 "#PWR070" H 8950 5050 50  0001 C CNN
F 1 "GND_C" V 8955 5172 50  0000 R CNN
F 2 "" H 8950 5300 50  0001 C CNN
F 3 "" H 8950 5300 50  0001 C CNN
	1    8950 5300
	0    1    1    0   
$EndComp
$Comp
L GND_C #PWR071
U 1 1 59CA5D24
P 5600 4950
F 0 "#PWR071" H 5600 4700 50  0001 C CNN
F 1 "GND_C" H 5605 4777 50  0000 C CNN
F 2 "" H 5600 4950 50  0001 C CNN
F 3 "" H 5600 4950 50  0001 C CNN
	1    5600 4950
	1    0    0    -1  
$EndComp
$Comp
L GND_C #PWR075
U 1 1 59CA6266
P 4000 4450
F 0 "#PWR075" H 4000 4200 50  0001 C CNN
F 1 "GND_C" V 4005 4322 50  0000 R CNN
F 2 "" H 4000 4450 50  0001 C CNN
F 3 "" H 4000 4450 50  0001 C CNN
	1    4000 4450
	0    1    1    0   
$EndComp
$Comp
L GND_C #PWR076
U 1 1 59CA62B6
P 4000 4550
F 0 "#PWR076" H 4000 4300 50  0001 C CNN
F 1 "GND_C" V 4005 4422 50  0000 R CNN
F 2 "" H 4000 4550 50  0001 C CNN
F 3 "" H 4000 4550 50  0001 C CNN
	1    4000 4550
	0    1    1    0   
$EndComp
$Comp
L GND_C #PWR077
U 1 1 59CA63BE
P 5900 2450
F 0 "#PWR077" H 5900 2200 50  0001 C CNN
F 1 "GND_C" H 5900 2300 50  0000 C CNN
F 2 "" H 5900 2450 50  0001 C CNN
F 3 "" H 5900 2450 50  0001 C CNN
	1    5900 2450
	-1   0    0    1   
$EndComp
$Comp
L GND_C #PWR084
U 1 1 59CA645E
P 5800 3750
F 0 "#PWR084" H 5800 3500 50  0001 C CNN
F 1 "GND_C" V 5805 3622 50  0000 R CNN
F 2 "" H 5800 3750 50  0001 C CNN
F 3 "" H 5800 3750 50  0001 C CNN
	1    5800 3750
	1    0    0    -1  
$EndComp
$Comp
L GND_C #PWR0111
U 1 1 59CA6497
P 6000 3750
F 0 "#PWR0111" H 6000 3500 50  0001 C CNN
F 1 "GND_C" V 6005 3622 50  0000 R CNN
F 2 "" H 6000 3750 50  0001 C CNN
F 3 "" H 6000 3750 50  0001 C CNN
	1    6000 3750
	1    0    0    -1  
$EndComp
$Comp
L +3V3_C #PWR0113
U 1 1 59CA6827
P 6750 1500
F 0 "#PWR0113" H 6750 1350 50  0001 C CNN
F 1 "+3V3_C" V 6765 1628 50  0000 L CNN
F 2 "" H 6750 1500 50  0001 C CNN
F 3 "" H 6750 1500 50  0001 C CNN
	1    6750 1500
	0    -1   -1   0   
$EndComp
$Comp
L +3V3_C #PWR0116
U 1 1 59CA6B3B
P 7250 2800
F 0 "#PWR0116" H 7250 2650 50  0001 C CNN
F 1 "+3V3_C" H 7265 2973 50  0000 C CNN
F 2 "" H 7250 2800 50  0001 C CNN
F 3 "" H 7250 2800 50  0001 C CNN
	1    7250 2800
	-1   0    0    1   
$EndComp
$Comp
L +3V3_C #PWR0117
U 1 1 59CA6B74
P 7700 2800
F 0 "#PWR0117" H 7700 2650 50  0001 C CNN
F 1 "+3V3_C" H 7715 2973 50  0000 C CNN
F 2 "" H 7700 2800 50  0001 C CNN
F 3 "" H 7700 2800 50  0001 C CNN
	1    7700 2800
	-1   0    0    1   
$EndComp
$Comp
L +3V3_C #PWR0118
U 1 1 59CA6E19
P 6000 3450
F 0 "#PWR0118" H 6000 3300 50  0001 C CNN
F 1 "+3V3_C" V 6000 3700 50  0000 C CNN
F 2 "" H 6000 3450 50  0001 C CNN
F 3 "" H 6000 3450 50  0001 C CNN
	1    6000 3450
	0    1    1    0   
$EndComp
$Comp
L +5V_C #PWR0119
U 1 1 59CA6F58
P 5800 3450
F 0 "#PWR0119" H 5800 3300 50  0001 C CNN
F 1 "+5V_C" V 5800 3700 50  0000 C CNN
F 2 "" H 5800 3450 50  0001 C CNN
F 3 "" H 5800 3450 50  0001 C CNN
	1    5800 3450
	0    -1   -1   0   
$EndComp
$Comp
L +3V3_C #PWR0122
U 1 1 59CA73CD
P 4000 4850
F 0 "#PWR0122" H 4000 4700 50  0001 C CNN
F 1 "+3V3_C" V 4000 5100 50  0000 C CNN
F 2 "" H 4000 4850 50  0001 C CNN
F 3 "" H 4000 4850 50  0001 C CNN
	1    4000 4850
	0    -1   1    0   
$EndComp
$Comp
L +3V3_C #PWR0123
U 1 1 59CA7406
P 4000 4950
F 0 "#PWR0123" H 4000 4800 50  0001 C CNN
F 1 "+3V3_C" V 4000 5200 50  0000 C CNN
F 2 "" H 4000 4950 50  0001 C CNN
F 3 "" H 4000 4950 50  0001 C CNN
	1    4000 4950
	0    -1   1    0   
$EndComp
$Comp
L +5V_C #PWR0124
U 1 1 59CA75DF
P 4000 4650
F 0 "#PWR0124" H 4000 4500 50  0001 C CNN
F 1 "+5V_C" V 4000 4900 50  0000 C CNN
F 2 "" H 4000 4650 50  0001 C CNN
F 3 "" H 4000 4650 50  0001 C CNN
	1    4000 4650
	0    -1   -1   0   
$EndComp
$Comp
L +5V_C #PWR0125
U 1 1 59CA770A
P 4000 4750
F 0 "#PWR0125" H 4000 4600 50  0001 C CNN
F 1 "+5V_C" V 4000 5000 50  0000 C CNN
F 2 "" H 4000 4750 50  0001 C CNN
F 3 "" H 4000 4750 50  0001 C CNN
	1    4000 4750
	0    -1   -1   0   
$EndComp
$Comp
L +3V3_C #PWR0126
U 1 1 59CA7DBC
P 7900 3300
F 0 "#PWR0126" H 7900 3150 50  0001 C CNN
F 1 "+3V3_C" V 7915 3428 50  0000 L CNN
F 2 "" H 7900 3300 50  0001 C CNN
F 3 "" H 7900 3300 50  0001 C CNN
	1    7900 3300
	0    -1   -1   0   
$EndComp
$Comp
L +3V3_C #PWR078
U 1 1 59CA9000
P 7200 3600
F 0 "#PWR078" H 7200 3450 50  0001 C CNN
F 1 "+3V3_C" H 7215 3773 50  0000 C CNN
F 2 "" H 7200 3600 50  0001 C CNN
F 3 "" H 7200 3600 50  0001 C CNN
	1    7200 3600
	1    0    0    -1  
$EndComp
$Comp
L +3V3_C #PWR079
U 1 1 59CA9067
P 7500 3600
F 0 "#PWR079" H 7500 3450 50  0001 C CNN
F 1 "+3V3_C" H 7515 3773 50  0000 C CNN
F 2 "" H 7500 3600 50  0001 C CNN
F 3 "" H 7500 3600 50  0001 C CNN
	1    7500 3600
	1    0    0    -1  
$EndComp
$Comp
L +3V3_C #PWR080
U 1 1 59CA96C5
P 2350 6400
F 0 "#PWR080" H 2350 6250 50  0001 C CNN
F 1 "+3V3_C" V 2350 6650 50  0000 C CNN
F 2 "" H 2350 6400 50  0001 C CNN
F 3 "" H 2350 6400 50  0001 C CNN
	1    2350 6400
	-1   0    0    -1  
$EndComp
$Comp
L +3V3_C #PWR081
U 1 1 59CA98BE
P 4000 7050
F 0 "#PWR081" H 4000 6900 50  0001 C CNN
F 1 "+3V3_C" V 4000 7300 50  0000 C CNN
F 2 "" H 4000 7050 50  0001 C CNN
F 3 "" H 4000 7050 50  0001 C CNN
	1    4000 7050
	-1   0    0    -1  
$EndComp
$Comp
L GND_C #PWR082
U 1 1 59CA99AE
P 3750 7350
F 0 "#PWR082" H 3750 7100 50  0001 C CNN
F 1 "GND_C" V 3755 7222 50  0000 R CNN
F 2 "" H 3750 7350 50  0001 C CNN
F 3 "" H 3750 7350 50  0001 C CNN
	1    3750 7350
	0    -1   -1   0   
$EndComp
$Comp
L GND_C #PWR083
U 1 1 59CA995E
P 3800 6950
F 0 "#PWR083" H 3800 6700 50  0001 C CNN
F 1 "GND_C" H 3805 6777 50  0000 C CNN
F 2 "" H 3800 6950 50  0001 C CNN
F 3 "" H 3800 6950 50  0001 C CNN
	1    3800 6950
	-1   0    0    1   
$EndComp
$Comp
L Conn_02x08_Odd_Even J402
U 1 1 59CEB4C4
P 3800 2850
F 0 "J402" H 3850 3367 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 3850 3276 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 3800 2850 50  0001 C CNN
F 3 "" H 3800 2850 50  0001 C CNN
	1    3800 2850
	1    0    0    -1  
$EndComp
NoConn ~ 3600 2950
Entry Wire Line
	6600 2050 6700 2150
Entry Wire Line
	6700 2050 6800 2150
$Comp
L TXB0102DCU U401
U 1 1 59D1C271
P 5900 2950
F 0 "U401" H 5750 2500 50  0000 C CNN
F 1 "TXB0102DCU" H 5550 2400 50  0000 C CNN
F 2 "Housings_SSOP:VSSOP-8_2.4x2.1mm_Pitch0.5mm" H 6900 2350 50  0001 C CNN
F 3 "" H 5900 2920 50  0001 C CNN
	1    5900 2950
	-1   0    0    1   
$EndComp
Entry Wire Line
	4400 2050 4500 2150
Entry Wire Line
	4500 2050 4600 2150
Entry Wire Line
	4600 2050 4700 2150
Entry Wire Line
	4700 2050 4800 2150
Entry Wire Line
	4800 2050 4900 2150
Entry Wire Line
	1900 2650 2000 2750
Entry Wire Line
	1900 2950 2000 3050
Entry Wire Line
	1900 3050 2000 3150
Entry Wire Line
	1900 3150 2000 3250
$Comp
L GND_C #PWR048
U 1 1 59CEF416
P 3600 2550
F 0 "#PWR048" H 3600 2300 50  0001 C CNN
F 1 "GND_C" V 3605 2422 50  0000 R CNN
F 2 "" H 3600 2550 50  0001 C CNN
F 3 "" H 3600 2550 50  0001 C CNN
	1    3600 2550
	0    1    1    0   
$EndComp
$Comp
L GND_C #PWR050
U 1 1 59CEF4CD
P 4100 3250
F 0 "#PWR050" H 4100 3000 50  0001 C CNN
F 1 "GND_C" V 4105 3122 50  0000 R CNN
F 2 "" H 4100 3250 50  0001 C CNN
F 3 "" H 4100 3250 50  0001 C CNN
	1    4100 3250
	0    -1   -1   0   
$EndComp
$Comp
L +5V_C #PWR052
U 1 1 59CEF6CC
P 3600 2650
F 0 "#PWR052" H 3600 2500 50  0001 C CNN
F 1 "+5V_C" V 3600 2900 50  0000 C CNN
F 2 "" H 3600 2650 50  0001 C CNN
F 3 "" H 3600 2650 50  0001 C CNN
	1    3600 2650
	0    -1   -1   0   
$EndComp
$Comp
L +3V3_C #PWR054
U 1 1 59CEF71D
P 4100 2550
F 0 "#PWR054" H 4100 2400 50  0001 C CNN
F 1 "+3V3_C" V 4100 2800 50  0000 C CNN
F 2 "" H 4100 2550 50  0001 C CNN
F 3 "" H 4100 2550 50  0001 C CNN
	1    4100 2550
	0    1    -1   0   
$EndComp
Text Notes 3300 6100 0    60   ~ 0
To MCU
$Comp
L PWR_FLAG #FLG04
U 1 1 59D3465E
P 8500 3300
F 0 "#FLG04" H 8500 3375 50  0001 C CNN
F 1 "PWR_FLAG" H 8500 3474 50  0000 C CNN
F 2 "" H 8500 3300 50  0001 C CNN
F 3 "" H 8500 3300 50  0001 C CNN
	1    8500 3300
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 59D34807
P 3500 1400
F 0 "#FLG05" H 3500 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 3500 1574 50  0000 C CNN
F 2 "" H 3500 1400 50  0001 C CNN
F 3 "" H 3500 1400 50  0001 C CNN
	1    3500 1400
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 59D34847
P 3100 1400
F 0 "#FLG06" H 3100 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 1574 50  0000 C CNN
F 2 "" H 3100 1400 50  0001 C CNN
F 3 "" H 3100 1400 50  0001 C CNN
	1    3100 1400
	-1   0    0    1   
$EndComp
$Comp
L +5V_C #PWR0120
U 1 1 59D34921
P 3100 1400
F 0 "#PWR0120" H 3100 1250 50  0001 C CNN
F 1 "+5V_C" V 3100 1650 50  0000 C CNN
F 2 "" H 3100 1400 50  0001 C CNN
F 3 "" H 3100 1400 50  0001 C CNN
	1    3100 1400
	1    0    0    -1  
$EndComp
$Comp
L +3V3_C #PWR0121
U 1 1 59D349B6
P 3500 1400
F 0 "#PWR0121" H 3500 1250 50  0001 C CNN
F 1 "+3V3_C" V 3500 1650 50  0000 C CNN
F 2 "" H 3500 1400 50  0001 C CNN
F 3 "" H 3500 1400 50  0001 C CNN
	1    3500 1400
	1    0    0    -1  
$EndComp
$Comp
L GND_C #PWR0159
U 1 1 59D34A4F
P 3850 1400
F 0 "#PWR0159" H 3850 1150 50  0001 C CNN
F 1 "GND_C" H 3855 1227 50  0000 C CNN
F 2 "" H 3850 1400 50  0001 C CNN
F 3 "" H 3850 1400 50  0001 C CNN
	1    3850 1400
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 59D34B40
P 3850 1400
F 0 "#FLG07" H 3850 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 3850 1574 50  0000 C CNN
F 2 "" H 3850 1400 50  0001 C CNN
F 3 "" H 3850 1400 50  0001 C CNN
	1    3850 1400
	1    0    0    -1  
$EndComp
Text Label 8600 4600 0    60   ~ 0
IO_1
Text Label 8600 4700 0    60   ~ 0
IO_2
Text Label 8600 4800 0    60   ~ 0
IO_3
Text Label 8600 4900 0    60   ~ 0
IO_4
Text Label 8600 5000 0    60   ~ 0
IO_5
Text Label 8600 5100 0    60   ~ 0
IO_6
Text Label 8600 5200 0    60   ~ 0
IO_7
Text Label 5600 4350 0    60   ~ 0
LEVEL_SHIFTER_ENABLE
$Comp
L Conn_01x08 J404
U 1 1 5A081331
P 4200 4750
F 0 "J404" H 4280 4742 50  0000 L CNN
F 1 "Conn_01x08" H 4280 4651 50  0000 L CNN
F 2 "LocalComponents:WE68710814022_8x0.50mm_SMT_ZIF_Horizontal_Top" H 4200 4750 50  0001 C CNN
F 3 "https://www.mouser.se/Search/ProductDetail.aspx?qs=ZtY9WdtwX54hJHBraEAPJw%3d%3d" H 4200 4750 50  0001 C CNN
	1    4200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4000 7500 3900
Wire Wire Line
	3800 7150 3300 7150
Wire Wire Line
	1900 6950 3050 6950
Wire Wire Line
	1900 7050 3050 7050
Wire Wire Line
	1900 7150 3050 7150
Wire Wire Line
	1900 7350 3050 7350
Wire Wire Line
	4000 7050 3300 7050
Wire Wire Line
	3800 6950 3300 6950
Wire Wire Line
	2050 6800 2050 6950
Connection ~ 2050 6950
Wire Wire Line
	2250 6800 2250 7050
Connection ~ 2250 7050
Wire Wire Line
	2450 6800 2450 7150
Connection ~ 2450 7150
Wire Wire Line
	2650 6800 2650 7350
Connection ~ 2650 7350
Wire Wire Line
	2050 6500 2650 6500
Connection ~ 2450 6500
Connection ~ 2250 6500
Wire Wire Line
	2350 6400 2350 6500
Connection ~ 2350 6500
Wire Wire Line
	3750 7350 3300 7350
Wire Wire Line
	8450 2700 8950 2700
Wire Wire Line
	8650 3800 8950 3800
Wire Wire Line
	8950 2900 8650 2900
Wire Wire Line
	8650 2900 8650 3800
Connection ~ 7500 4000
Connection ~ 7200 3900
Wire Wire Line
	8500 3300 8650 3300
Connection ~ 8650 3300
Wire Wire Line
	7250 1400 8950 1400
Wire Wire Line
	7250 1500 8950 1500
Wire Wire Line
	7250 1600 8950 1600
Wire Wire Line
	7250 1700 8950 1700
Wire Wire Line
	8850 1350 8850 1700
Connection ~ 8850 1700
Wire Wire Line
	8550 1350 8550 1600
Connection ~ 8550 1600
Wire Wire Line
	8250 1350 8250 1500
Connection ~ 8250 1500
Wire Wire Line
	7950 1350 7950 1400
Connection ~ 7950 1400
Wire Wire Line
	7950 1050 8850 1050
Connection ~ 8250 1050
Connection ~ 8400 1050
Connection ~ 8550 1050
Wire Wire Line
	6750 1400 6750 1700
Connection ~ 6750 1500
Connection ~ 6750 1600
Connection ~ 5600 4650
Wire Wire Line
	7250 2500 7250 2200
Connection ~ 7250 2200
Wire Wire Line
	7700 2500 7700 2300
Connection ~ 7700 2300
Wire Bus Line
	1900 2050 8000 2050
Wire Wire Line
	7050 2300 8950 2300
Wire Wire Line
	7050 2200 8950 2200
Wire Wire Line
	8000 2100 8950 2100
Wire Wire Line
	8050 2000 8950 2000
Wire Wire Line
	7650 1900 8950 1900
Wire Wire Line
	6900 2150 7050 2300
Wire Wire Line
	7050 2200 7000 2150
Wire Wire Line
	7650 1900 7650 1950
Wire Wire Line
	7550 1950 7550 1800
Wire Wire Line
	7550 1800 8950 1800
Wire Wire Line
	7850 2400 8950 2400
Wire Wire Line
	7850 2400 7850 2150
Wire Wire Line
	5350 1500 5450 1500
Connection ~ 5350 1500
Wire Wire Line
	6800 4100 8950 4100
Wire Wire Line
	6750 4200 8950 4200
Wire Wire Line
	6750 3050 6750 4200
Wire Bus Line
	7850 5250 7850 4250
Wire Wire Line
	7950 4300 8950 4300
Wire Wire Line
	8950 4500 7950 4500
Wire Bus Line
	5450 4050 5450 5250
Wire Wire Line
	5600 4650 5600 4150
Wire Wire Line
	8800 4350 8950 4350
Wire Wire Line
	8950 4350 8950 4400
Wire Wire Line
	3900 5150 4000 5150
Wire Wire Line
	3800 5150 3800 5050
Wire Wire Line
	3800 5050 4000 5050
Wire Wire Line
	5600 4650 5550 4650
Wire Wire Line
	8000 2100 8000 2150
Wire Wire Line
	8000 2150 7900 2150
Wire Wire Line
	8050 2000 8050 1950
Wire Wire Line
	8050 1950 8000 1950
Wire Bus Line
	1900 2050 1900 3500
Wire Wire Line
	5150 3650 2650 3650
Wire Wire Line
	2650 3650 2650 2850
Wire Wire Line
	2650 2850 3600 2850
Wire Wire Line
	4100 2850 5500 2850
Wire Wire Line
	3600 3250 2000 3250
Wire Wire Line
	3600 3150 2000 3150
Wire Wire Line
	2000 3050 3600 3050
Wire Wire Line
	3600 2750 2000 2750
Wire Wire Line
	4100 2650 4500 2650
Wire Wire Line
	4500 2650 4500 2150
Wire Wire Line
	4100 2750 4600 2750
Wire Wire Line
	4600 2750 4600 2150
Wire Wire Line
	4100 2950 4700 2950
Wire Wire Line
	4700 2950 4700 2150
Wire Wire Line
	4100 3050 4800 3050
Wire Wire Line
	4800 3050 4800 2150
Wire Wire Line
	4100 3150 4900 3150
Wire Wire Line
	4900 3150 4900 2150
Wire Wire Line
	8550 4600 8550 5700
Wire Wire Line
	8450 4700 8450 5700
Wire Wire Line
	8350 4800 8350 5700
Wire Wire Line
	8250 4900 8250 5700
Wire Wire Line
	8950 5000 8150 5000
Wire Wire Line
	8150 5000 8150 5700
Wire Wire Line
	8950 5100 8050 5100
Wire Wire Line
	8050 5100 8050 5700
Wire Wire Line
	8950 5200 7950 5200
Wire Wire Line
	7950 5200 7950 5700
Wire Wire Line
	5350 1450 5350 1500
Wire Wire Line
	5600 4150 6550 4150
Wire Wire Line
	6550 4150 6550 2650
Wire Wire Line
	6550 2650 6300 2650
Wire Wire Line
	5150 3650 5150 3050
Wire Wire Line
	5150 3050 5500 3050
Wire Wire Line
	6750 3050 6300 3050
Wire Wire Line
	6900 3900 8950 3900
Wire Wire Line
	6800 2150 6800 2300
Wire Wire Line
	6800 2300 6900 2300
Wire Wire Line
	6900 2300 6900 3900
Wire Wire Line
	6850 4000 8950 4000
Wire Wire Line
	6700 2150 6700 2350
Wire Wire Line
	6700 2350 6850 2350
Wire Wire Line
	6850 2350 6850 4000
Wire Wire Line
	6800 4100 6800 2850
Wire Wire Line
	6800 2850 6300 2850
Wire Bus Line
	3400 5250 7850 5250
Wire Wire Line
	8950 4600 8550 4600
Wire Wire Line
	8950 4700 8450 4700
Wire Wire Line
	8950 4800 8350 4800
Wire Wire Line
	8950 4900 8250 4900
$Comp
L Conn_01x08 J401
U 1 1 5A085B14
P 8350 5900
F 0 "J401" V 8474 5846 50  0000 C CNN
F 1 "Conn_01x08" V 8565 5846 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 8350 5900 50  0001 C CNN
F 3 "" H 8350 5900 50  0001 C CNN
	1    8350 5900
	0    1    1    0   
$EndComp
$Comp
L GND_C #PWR?
U 1 1 5A085C87
P 8650 5700
F 0 "#PWR?" H 8650 5450 50  0001 C CNN
F 1 "GND_C" V 8655 5572 50  0000 R CNN
F 2 "" H 8650 5700 50  0001 C CNN
F 3 "" H 8650 5700 50  0001 C CNN
	1    8650 5700
	-1   0    0    1   
$EndComp
$EndSCHEMATC
