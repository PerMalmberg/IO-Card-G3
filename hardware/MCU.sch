EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 34
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 7750 3000 2    60   Input ~ 0
I2C_SCL
Text GLabel 7750 3100 2    60   Input ~ 0
I2C_SDA
$Comp
L Device:R R305
U 1 1 5B73B18A
P 7650 2800
F 0 "R305" H 7720 2846 50  0000 L CNN
F 1 "10k" H 7720 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7580 2800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 7650 2800 50  0001 C CNN
	1    7650 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R303
U 1 1 5B73B205
P 7350 2800
F 0 "R303" H 7420 2846 50  0000 L CNN
F 1 "10k" H 7420 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7280 2800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 7350 2800 50  0001 C CNN
	1    7350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3000 7350 3000
Wire Wire Line
	5450 3100 7650 3100
Wire Wire Line
	7650 2950 7650 3100
Connection ~ 7650 3100
Wire Wire Line
	7650 3100 7750 3100
Wire Wire Line
	7350 2950 7350 3000
Connection ~ 7350 3000
Wire Wire Line
	7350 3000 5450 3000
$Comp
L power:+3.3V #PWR0309
U 1 1 5B73B348
P 7500 2650
F 0 "#PWR0309" H 7500 2500 50  0001 C CNN
F 1 "+3.3V" H 7515 2823 50  0000 C CNN
F 2 "" H 7500 2650 50  0001 C CNN
F 3 "" H 7500 2650 50  0001 C CNN
	1    7500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2650 7500 2650
Connection ~ 7500 2650
Wire Wire Line
	7500 2650 7650 2650
$Comp
L power:+3.3V #PWR0317
U 1 1 5B73B74B
P 8250 4550
F 0 "#PWR0317" H 8250 4400 50  0001 C CNN
F 1 "+3.3V" H 8265 4723 50  0000 C CNN
F 2 "" H 8250 4550 50  0001 C CNN
F 3 "" H 8250 4550 50  0001 C CNN
	1    8250 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C305
U 1 1 5B73B81A
P 7700 4550
F 0 "C305" V 7952 4550 50  0000 C CNN
F 1 "100n" V 7861 4550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7738 4400 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 7700 4550 50  0001 C CNN
	1    7700 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0314
U 1 1 5B73C2C7
P 7550 4550
F 0 "#PWR0314" H 7550 4300 50  0001 C CNN
F 1 "GND" V 7555 4422 50  0000 R CNN
F 2 "" H 7550 4550 50  0001 C CNN
F 3 "" H 7550 4550 50  0001 C CNN
	1    7550 4550
	0    1    1    0   
$EndComp
Text GLabel 9150 4750 2    60   Input ~ 0
Wiegand_D0
Text GLabel 9150 4900 2    60   Input ~ 0
Wiegand_D1
$Comp
L power:GND #PWR0318
U 1 1 5B73CB5F
P 8250 5350
F 0 "#PWR0318" H 8250 5100 50  0001 C CNN
F 1 "GND" H 8255 5177 50  0000 C CNN
F 2 "" H 8250 5350 50  0001 C CNN
F 3 "" H 8250 5350 50  0001 C CNN
	1    8250 5350
	1    0    0    -1  
$EndComp
Text GLabel 5950 2600 2    60   Input ~ 0
ANALOG_RDY_2
Text GLabel 5950 2500 2    60   Input ~ 0
ANALOG_RDY_1
Text GLabel 5950 2700 2    60   Input ~ 0
DIA_Interrupt
$Comp
L power:GND #PWR0306
U 1 1 5B745E94
P 3850 1900
F 0 "#PWR0306" H 3850 1650 50  0001 C CNN
F 1 "GND" V 3855 1772 50  0000 R CNN
F 2 "" H 3850 1900 50  0001 C CNN
F 3 "" H 3850 1900 50  0001 C CNN
	1    3850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 2200 3700 2100
Wire Wire Line
	3700 2100 3800 2100
Wire Wire Line
	3850 2100 3900 2100
Wire Wire Line
	4000 2100 4000 2200
Connection ~ 3850 2100
Wire Wire Line
	3900 2100 3900 2200
Connection ~ 3900 2100
Wire Wire Line
	3900 2100 4000 2100
Wire Wire Line
	3800 2200 3800 2100
Connection ~ 3800 2100
Wire Wire Line
	3800 2100 3850 2100
$Comp
L Device:C C303
U 1 1 5B749EFC
P 3450 1300
F 0 "C303" H 3565 1346 50  0000 L CNN
F 1 "22u" H 3565 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3488 1150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Murata-Electronics/GRM219R61C226ME15L?qs=sGAEpiMZZMs0AnBnWHyRQFv7x1xn%252bYFdlpx3rHjqsYGFGOccM8ifgQ%3d%3d" H 3450 1300 50  0001 C CNN
	1    3450 1300
	1    0    0    -1  
$EndComp
Connection ~ 3850 1900
Wire Wire Line
	3850 1900 3850 2100
$Comp
L power:+3.3V #PWR0307
U 1 1 5B74BC3F
P 4300 1150
F 0 "#PWR0307" H 4300 1000 50  0001 C CNN
F 1 "+3.3V" H 4315 1323 50  0000 C CNN
F 2 "" H 4300 1150 50  0001 C CNN
F 3 "" H 4300 1150 50  0001 C CNN
	1    4300 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2200 4300 1150
Connection ~ 4300 1150
Wire Wire Line
	3450 1450 3850 1450
Wire Wire Line
	3850 1450 3850 1900
Connection ~ 2300 2650
$Comp
L power:GND #PWR0305
U 1 1 5B753F4C
P 2300 2950
F 0 "#PWR0305" H 2300 2700 50  0001 C CNN
F 1 "GND" H 2305 2777 50  0000 C CNN
F 2 "" H 2300 2950 50  0001 C CNN
F 3 "" H 2300 2950 50  0001 C CNN
	1    2300 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0304
U 1 1 5B753F98
P 2300 2350
F 0 "#PWR0304" H 2300 2200 50  0001 C CNN
F 1 "+3.3V" H 2315 2523 50  0000 C CNN
F 2 "" H 2300 2350 50  0001 C CNN
F 3 "" H 2300 2350 50  0001 C CNN
	1    2300 2350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW302
U 1 1 5B75402F
P 1950 2650
F 0 "SW302" H 1950 2935 50  0000 C CNN
F 1 "Reset" H 1950 2844 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_KXT3" H 1950 2850 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/CK/KXT331LHS?qs=sGAEpiMZZMsgGjVA3toVBICuw%2fFQq%2fBnDsOBIRFitAg%3d" H 1950 2850 50  0001 C CNN
	1    1950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2900 2150 2900
Wire Wire Line
	2300 2650 2150 2650
Wire Wire Line
	2150 2900 2150 2650
$Comp
L power:GND #PWR0303
U 1 1 5B75A1F9
P 1750 2650
F 0 "#PWR0303" H 1750 2400 50  0001 C CNN
F 1 "GND" V 1755 2522 50  0000 R CNN
F 2 "" H 1750 2650 50  0001 C CNN
F 3 "" H 1750 2650 50  0001 C CNN
	1    1750 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C302
U 1 1 5B75A3CA
P 2300 2800
F 0 "C302" H 2185 2754 50  0000 R CNN
F 1 "100n" H 2185 2845 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2338 2650 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 2300 2800 50  0001 C CNN
	1    2300 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:C C301
U 1 1 5B75A589
P 1900 2900
F 0 "C301" V 2050 2900 50  0000 C CNN
F 1 "100n" V 2150 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1938 2750 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 1900 2900 50  0001 C CNN
	1    1900 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R301
U 1 1 5B75C6A6
P 2300 2500
F 0 "R301" H 2370 2546 50  0000 L CNN
F 1 "10k" H 2370 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2230 2500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 2300 2500 50  0001 C CNN
	1    2300 2500
	1    0    0    -1  
$EndComp
Connection ~ 2150 2650
Wire Wire Line
	1750 2900 1750 2650
Connection ~ 1750 2650
$Comp
L Device:C C304
U 1 1 5B75DA33
P 3850 1300
F 0 "C304" H 3735 1254 50  0000 R CNN
F 1 "100n" H 3735 1345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3888 1150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 3850 1300 50  0001 C CNN
	1    3850 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 1150 3850 1150
Connection ~ 3850 1450
Connection ~ 3850 1150
Wire Wire Line
	3850 1150 4300 1150
$Comp
L power:GND #PWR0301
U 1 1 5B75DF86
P 900 3400
F 0 "#PWR0301" H 900 3150 50  0001 C CNN
F 1 "GND" V 905 3272 50  0000 R CNN
F 2 "" H 900 3400 50  0001 C CNN
F 3 "" H 900 3400 50  0001 C CNN
	1    900  3400
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J301
U 1 1 5B6A5C70
P 1900 5600
F 0 "J301" H 1950 6000 50  0000 C CNN
F 1 "Debug" H 1950 5900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 1900 5600 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Amphenol-FCI/68001-205?qs=sGAEpiMZZMs%252bGHln7q6pm44kDepmYTI8mxSN5WASQ8Q%3d" H 1900 5600 50  0001 C CNN
	1    1900 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0302
U 1 1 5B6ACD51
P 1700 5400
F 0 "#PWR0302" H 1700 5150 50  0001 C CNN
F 1 "GND" H 1650 5250 50  0000 C CNN
F 2 "" H 1700 5400 50  0001 C CNN
F 3 "" H 1700 5400 50  0001 C CNN
	1    1700 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 3950 3450 3950
Wire Wire Line
	2900 3850 3450 3850
Wire Wire Line
	2900 3750 3450 3750
Wire Wire Line
	2900 3650 3450 3650
Text Label 2850 2650 0    50   ~ 0
CH_Enable
Text Label 2200 5800 0    50   ~ 0
MTMS
Text Label 2200 5600 0    50   ~ 0
MTDI
Text Label 2200 5500 0    50   ~ 0
MTCK
Text Label 2200 5700 0    50   ~ 0
MTDO
Text Label 3200 3000 2    50   ~ 0
TDX
Text Label 3200 2900 2    50   ~ 0
RDX
Text Label 2200 5400 0    50   ~ 0
Boot_option
Text Label 1700 5600 2    50   ~ 0
TDX
Text Label 1700 5700 2    50   ~ 0
RDX
Text Label 1700 5500 2    50   ~ 0
CH_Enable
Text Label 2900 3400 0    50   ~ 0
Boot_option
Wire Wire Line
	2300 2650 3450 2650
NoConn ~ 1700 5800
Text Label 3350 3650 2    50   ~ 0
MTMS
Text Label 3350 3750 2    50   ~ 0
MTDI
Text Label 3350 3850 2    50   ~ 0
MTCK
Text Label 3350 3950 2    50   ~ 0
MTDO
Text GLabel 5450 3400 2    50   Input ~ 0
I2C_Reset
$Comp
L Switch:SW_Push SW301
U 1 1 5B79DE4D
P 1100 3400
F 0 "SW301" H 1100 3685 50  0000 C CNN
F 1 "Boot option" H 1100 3594 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_KXT3" H 1100 3600 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/CK/KXT331LHS?qs=sGAEpiMZZMsgGjVA3toVBICuw%2fFQq%2fBnDsOBIRFitAg%3d" H 1100 3600 50  0001 C CNN
	1    1100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3400 1500 3400
$Comp
L Connector_Generic:Conn_01x04 J302
U 1 1 5B903FBD
P 8500 3550
F 0 "J302" H 8580 3542 50  0000 L CNN
F 1 "BME280" H 8580 3451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8500 3550 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Molex/22-28-4040?qs=sGAEpiMZZMs%252bGHln7q6pm%252bS0pk2Wo0XxEhQQIKgiuds%3d" H 8500 3550 50  0001 C CNN
	1    8500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0313
U 1 1 5B9093BD
P 8300 3550
F 0 "#PWR0313" H 8300 3300 50  0001 C CNN
F 1 "GND" V 8305 3422 50  0000 R CNN
F 2 "" H 8300 3550 50  0001 C CNN
F 3 "" H 8300 3550 50  0001 C CNN
	1    8300 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 3000 7350 3650
Wire Wire Line
	7350 3650 8300 3650
Wire Wire Line
	7650 3100 7650 3750
Wire Wire Line
	7650 3750 8300 3750
$Comp
L Switch:SW_Push SW303
U 1 1 5B9494D5
P 7850 1850
F 0 "SW303" H 7850 2135 50  0000 C CNN
F 1 "Factory reset" H 7850 2044 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_KXT3" H 7850 2050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/CK/KXT331LHS?qs=sGAEpiMZZMsgGjVA3toVBICuw%2fFQq%2fBnDsOBIRFitAg%3d" H 7850 2050 50  0001 C CNN
	1    7850 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0311
U 1 1 5B953711
P 8050 1850
F 0 "#PWR0311" H 8050 1600 50  0001 C CNN
F 1 "GND" H 8055 1677 50  0000 C CNN
F 2 "" H 8050 1850 50  0001 C CNN
F 3 "" H 8050 1850 50  0001 C CNN
	1    8050 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 2900 3450 2900
Wire Wire Line
	3200 3000 3450 3000
Text Notes 2800 3100 0    50   ~ 0
Note: RX<->TX
Wire Notes Line
	2700 2750 3450 2750
Wire Notes Line
	3450 2750 3450 3150
Wire Notes Line
	3450 3150 2700 3150
Wire Notes Line
	2700 3150 2700 2750
Wire Notes Line
	3300 1550 3300 900 
Wire Notes Line
	3300 900  4450 900 
Wire Notes Line
	4450 900  4450 1550
Wire Notes Line
	4450 1550 3300 1550
Text Notes 3350 1050 0    50   ~ 0
Near Wrover module
$Comp
L PerMalmberg:ESP32_WROVER U301
U 1 1 5B61FB8F
P 4450 4300
F 0 "U301" H 4500 6500 50  0000 C CNN
F 1 "ESP32_WROVER" H 4700 6400 50  0000 C CNN
F 2 "PerMalmberg:ESP32_WROVER" H 4250 4200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Espressif-Systems/ESP32-WROVER-B?qs=sGAEpiMZZMve4%2fbfQkoj%252bBDxS94OrcPySM%2fkn8O1Rp4%3d" H 4250 4200 50  0001 C CNN
	1    4450 4300
	1    0    0    -1  
$EndComp
$Sheet
S 3600 4900 850  300 
U 5B98DF5D
F0 "SDCard" 50
F1 "SDCard.sch" 50
$EndSheet
Text GLabel 2900 3650 0    50   Input ~ 0
SD_CLK
Text GLabel 2900 3750 0    50   Input ~ 0
SD_DATA2
Text GLabel 2900 3850 0    50   Input ~ 0
SD_DATA3
Text GLabel 2900 3950 0    50   Input ~ 0
SD_CMD
Text GLabel 5450 4100 2    50   Input ~ 0
SD_DATA1
Text GLabel 5450 4200 2    50   Input ~ 0
SD_DATA0
Text GLabel 5450 3700 2    50   Input ~ 0
SD_CD
Wire Notes Line
	1050 4800 1050 6100
Wire Notes Line
	1050 6100 2950 6100
Wire Notes Line
	2950 6100 2950 4800
Wire Notes Line
	2950 4800 1050 4800
Text Notes 1400 5000 0    50   ~ 0
Pin layout according to\nESP32-Wrover-kit-debug-breakout
Wire Wire Line
	5950 2700 5450 2700
Wire Wire Line
	5450 2600 5950 2600
Wire Wire Line
	5450 2500 5950 2500
Text Label 7650 1850 2    50   ~ 0
Factory_reset
$Comp
L power:+3.3V #PWR0312
U 1 1 5B9F39E1
P 8300 3450
F 0 "#PWR0312" H 8300 3300 50  0001 C CNN
F 1 "+3.3V" V 8300 3700 50  0000 C CNN
F 2 "" H 8300 3450 50  0001 C CNN
F 3 "" H 8300 3450 50  0001 C CNN
	1    8300 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R302
U 1 1 5BA02E4B
P 6750 1700
F 0 "R302" H 6820 1746 50  0000 L CNN
F 1 "10k" H 6820 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6680 1700 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 6750 1700 50  0001 C CNN
	1    6750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1850 6750 1850
$Comp
L power:+3.3V #PWR0308
U 1 1 5BA056E1
P 6750 1550
F 0 "#PWR0308" H 6750 1400 50  0001 C CNN
F 1 "+3.3V" H 6765 1723 50  0000 C CNN
F 2 "" H 6750 1550 50  0001 C CNN
F 3 "" H 6750 1550 50  0001 C CNN
	1    6750 1550
	1    0    0    -1  
$EndComp
Text GLabel 5450 4000 2    50   Input ~ 0
SD_SPI_CS
Text GLabel 5450 3600 2    50   Input ~ 0
SD_SPI_MOSI
Text GLabel 5450 3900 2    50   Input ~ 0
SD_SPI_CLK
Text GLabel 5450 3800 2    50   Input ~ 0
SD_SPI_MISO
$Comp
L power:+3.3V #PWR?
U 1 1 5B9B753B
P 8450 950
AR Path="/5B62EDB8/5B9B753B" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B9B753B" Ref="#PWR0315"  Part="1" 
F 0 "#PWR0315" H 8450 800 50  0001 C CNN
F 1 "+3.3V" V 8400 1150 50  0000 C CNN
F 2 "" H 8450 950 50  0001 C CNN
F 3 "" H 8450 950 50  0001 C CNN
	1    8450 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5B9B7541
P 8600 950
AR Path="/5B62EDB8/5B9B7541" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B9B7541" Ref="R306"  Part="1" 
F 0 "R306" H 8670 996 50  0000 L CNN
F 1 "10k" H 8670 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8530 950 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 8600 950 50  0001 C CNN
	1    8600 950 
	0    -1   -1   0   
$EndComp
Text GLabel 8750 950  2    50   Input ~ 0
I2C_Reset
$Comp
L Device:R R?
U 1 1 5B9D0BA1
P 8600 1350
AR Path="/5B62EDB8/5B9D0BA1" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B9D0BA1" Ref="R307"  Part="1" 
F 0 "R307" H 8670 1396 50  0000 L CNN
F 1 "10k" H 8670 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8530 1350 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 8600 1350 50  0001 C CNN
	1    8600 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B9D0BA8
P 8450 1350
AR Path="/5B62EDB8/5B9D0BA8" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B9D0BA8" Ref="#PWR0316"  Part="1" 
F 0 "#PWR0316" H 8450 1200 50  0001 C CNN
F 1 "+3.3V" V 8550 1450 50  0000 C CNN
F 2 "" H 8450 1350 50  0001 C CNN
F 3 "" H 8450 1350 50  0001 C CNN
	1    8450 1350
	0    -1   -1   0   
$EndComp
Text GLabel 8750 1350 2    60   Input ~ 0
DIA_Interrupt
Wire Wire Line
	7200 3200 5450 3200
Wire Wire Line
	5450 3300 7100 3300
Wire Wire Line
	7100 3300 7100 4850
Wire Wire Line
	5450 2800 6750 2800
Wire Wire Line
	6750 2800 6750 1850
Connection ~ 6750 1850
Text GLabel 5450 3500 2    60   Input ~ 0
EXTERNAL_SIREN_CTRL
Text GLabel 2100 3400 3    50   Input ~ 0
Boot_option
$Comp
L Device:C C307
U 1 1 5BF315B3
P 1100 3650
F 0 "C307" V 1250 3650 50  0000 C CNN
F 1 "100n" V 1350 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1138 3500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 1100 3650 50  0001 C CNN
	1    1100 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	900  3400 900  3650
Wire Wire Line
	900  3650 950  3650
Connection ~ 900  3400
Wire Wire Line
	1250 3650 1300 3650
Wire Wire Line
	1300 3650 1300 3400
Connection ~ 1300 3400
$Comp
L power:+3.3V #PWR0117
U 1 1 5BF3939D
P 1500 3050
F 0 "#PWR0117" H 1500 2900 50  0001 C CNN
F 1 "+3.3V" H 1515 3223 50  0000 C CNN
F 2 "" H 1500 3050 50  0001 C CNN
F 3 "" H 1500 3050 50  0001 C CNN
	1    1500 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R304
U 1 1 5BF393A3
P 1500 3200
F 0 "R304" H 1570 3246 50  0000 L CNN
F 1 "10k" H 1570 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1430 3200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 1500 3200 50  0001 C CNN
	1    1500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3350 1500 3400
Connection ~ 1500 3400
Wire Wire Line
	1500 3400 1300 3400
$Comp
L PerMalmberg:SN74LV4T125 U302
U 1 1 5C354023
P 8250 4950
F 0 "U302" H 8150 5300 25  0000 C CNN
F 1 "SN74LV4T125" H 8050 5350 25  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 8250 5100 25  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Texas-Instruments/SN74LV4T125PWR?qs=%2fha2pyFadugYV45CGqyCh31QZ8Sm4vmCO1dOWib7XM4PoqVfwyI%2fZw%3d%3d" H 8250 5100 25  0001 C CNN
	1    8250 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 3200 7200 4700
Wire Wire Line
	7200 4700 8000 4700
Wire Wire Line
	7100 4850 8000 4850
Wire Wire Line
	7850 4550 8250 4550
Connection ~ 8250 4550
$Comp
L power:GND #PWR0321
U 1 1 5C370BCE
P 8700 5200
F 0 "#PWR0321" H 8700 4950 50  0001 C CNN
F 1 "GND" V 8705 5072 50  0000 R CNN
F 2 "" H 8700 5200 50  0001 C CNN
F 3 "" H 8700 5200 50  0001 C CNN
	1    8700 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0320
U 1 1 5C370C51
P 8700 5000
F 0 "#PWR0320" H 8700 4850 50  0001 C CNN
F 1 "+3.3V" H 8715 5173 50  0000 C CNN
F 2 "" H 8700 5000 50  0001 C CNN
F 3 "" H 8700 5000 50  0001 C CNN
	1    8700 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 5200 8600 5200
Wire Wire Line
	8500 5050 8600 5050
Wire Wire Line
	8600 5050 8600 5200
Connection ~ 8600 5200
Wire Wire Line
	8600 5200 8500 5200
Wire Wire Line
	8500 5000 8650 5000
Wire Wire Line
	8650 5000 8650 5150
Wire Wire Line
	8650 5150 8500 5150
Connection ~ 8650 5000
Wire Wire Line
	8650 5000 8700 5000
Wire Wire Line
	9150 4750 8500 4750
Wire Wire Line
	9150 4900 8500 4900
$Comp
L power:GND #PWR0319
U 1 1 5C37C6A4
P 8500 4850
F 0 "#PWR0319" H 8500 4600 50  0001 C CNN
F 1 "GND" V 8505 4722 50  0000 R CNN
F 2 "" H 8500 4850 50  0001 C CNN
F 3 "" H 8500 4850 50  0001 C CNN
	1    8500 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0310
U 1 1 5C37C6DB
P 8500 4700
F 0 "#PWR0310" H 8500 4450 50  0001 C CNN
F 1 "GND" V 8505 4572 50  0000 R CNN
F 2 "" H 8500 4700 50  0001 C CNN
F 3 "" H 8500 4700 50  0001 C CNN
	1    8500 4700
	0    -1   -1   0   
$EndComp
NoConn ~ 8000 5000
NoConn ~ 8000 5150
$EndSCHEMATC
