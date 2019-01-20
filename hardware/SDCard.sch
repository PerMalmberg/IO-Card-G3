EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 34
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
L Connector:Micro_SD_Card_Det J?
U 1 1 5B98DFAA
P 10150 4900
AR Path="/5B61FB63/5B98DFAA" Ref="J?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98DFAA" Ref="J401"  Part="1" 
F 0 "J401" H 10100 5717 50  0000 C CNN
F 1 "Micro_SD_Card_Det" H 10100 5626 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Hirose_DM3AT-SF-PEJM5" H 12200 5600 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Hirose-Connector/DM3AT-SF-PEJM5?qs=sGAEpiMZZMuJakaoiLiBpvjg2IzEXJkOoUNaxaL8lrc%3d" H 10150 5000 50  0001 C CNN
	1    10150 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0420
U 1 1 5B98DFF9
P 9400 3350
F 0 "#PWR0420" H 9400 3200 50  0001 C CNN
F 1 "+3.3V" V 9415 3478 50  0000 L CNN
F 2 "" H 9400 3350 50  0001 C CNN
F 3 "" H 9400 3350 50  0001 C CNN
	1    9400 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0421
U 1 1 5B98E165
P 9400 3650
F 0 "#PWR0421" H 9400 3400 50  0001 C CNN
F 1 "GND" H 9405 3477 50  0000 C CNN
F 2 "" H 9400 3650 50  0001 C CNN
F 3 "" H 9400 3650 50  0001 C CNN
	1    9400 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0419
U 1 1 5B98E18D
P 10950 5400
F 0 "#PWR0419" H 10950 5150 50  0001 C CNN
F 1 "GND" V 10955 5272 50  0000 R CNN
F 2 "" H 10950 5400 50  0001 C CNN
F 3 "" H 10950 5400 50  0001 C CNN
	1    10950 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5B98E455
P 9850 3500
AR Path="/5B61FB63/5B98E455" Ref="C?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E455" Ref="C403"  Part="1" 
F 0 "C403" H 9735 3454 50  0000 R CNN
F 1 "100n" H 9735 3545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9888 3350 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 9850 3500 50  0001 C CNN
	1    9850 3500
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E7A6
P 4150 3750
AR Path="/5B61FB63/5B98E7A6" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E7A6" Ref="#PWR0401"  Part="1" 
F 0 "#PWR0401" H 4150 3600 50  0001 C CNN
F 1 "+3.3V" H 4165 3923 50  0000 C CNN
F 2 "" H 4150 3750 50  0001 C CNN
F 3 "" H 4150 3750 50  0001 C CNN
	1    4150 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E7AC
P 4150 3900
AR Path="/5B61FB63/5B98E7AC" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E7AC" Ref="R401"  Part="1" 
F 0 "R401" H 4220 3946 50  0000 L CNN
F 1 "50k" H 4220 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 3900 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/667-ERJ-6ENF5102V" H 4150 3900 50  0001 C CNN
	1    4150 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9400 3350 9850 3350
Wire Wire Line
	9850 3650 9400 3650
$Comp
L power:GND #PWR0417
U 1 1 5B99005F
P 9250 5000
F 0 "#PWR0417" H 9250 4750 50  0001 C CNN
F 1 "GND" V 9255 4872 50  0000 R CNN
F 2 "" H 9250 5000 50  0001 C CNN
F 3 "" H 9250 5000 50  0001 C CNN
	1    9250 5000
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B9C2CD4
P 8400 5600
AR Path="/5B61FB63/5B9C2CD4" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B9C2CD4" Ref="#PWR0415"  Part="1" 
F 0 "#PWR0415" H 8400 5450 50  0001 C CNN
F 1 "+3.3V" H 8415 5773 50  0000 C CNN
F 2 "" H 8400 5600 50  0001 C CNN
F 3 "" H 8400 5600 50  0001 C CNN
	1    8400 5600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5B9C2CDA
P 8400 5450
AR Path="/5B61FB63/5B9C2CDA" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B9C2CDA" Ref="R409"  Part="1" 
F 0 "R409" H 8470 5496 50  0000 L CNN
F 1 "10k" H 8470 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8330 5450 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 8400 5450 50  0001 C CNN
	1    8400 5450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0418
U 1 1 5B9C4260
P 9650 1700
F 0 "#PWR0418" H 9650 1450 50  0001 C CNN
F 1 "GND" V 9655 1572 50  0000 R CNN
F 2 "" H 9650 1700 50  0001 C CNN
F 3 "" H 9650 1700 50  0001 C CNN
	1    9650 1700
	1    0    0    -1  
$EndComp
Text GLabel 8250 5300 0    50   Input ~ 0
SD_CD
$Comp
L Device:CP C?
U 1 1 5B9D6414
P 9400 3500
AR Path="/5B62EDB8/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B9D6414" Ref="C402"  Part="1" 
F 0 "C402" V 9250 3500 50  0000 C CNN
F 1 "10u" H 9500 3600 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_5x4.5" H 9438 3350 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/710-865080440002" H 9400 3500 50  0001 C CNN
	1    9400 3500
	1    0    0    -1  
$EndComp
Connection ~ 9400 3350
Connection ~ 9400 3650
Text Notes 8850 5650 0    50   ~ 0
Card present = SD_CD low
Wire Notes Line
	8950 3950 8950 3100
Wire Notes Line
	8950 3100 10250 3100
Wire Notes Line
	10250 3100 10250 3950
Wire Notes Line
	10250 3950 8950 3950
Text Notes 9250 3250 0    50   ~ 0
Place near SD Card
Text Notes 9500 6000 0    50   ~ 0
Place card slot as near the MCU\nas possible. Leave room to insert\nthe card.
$Comp
L Device:D_TVS D402
U 1 1 5B9F52BB
P 4300 3900
F 0 "D402" V 4254 3979 50  0000 L CNN
F 1 "D_TVS" V 4345 3979 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 4300 3900 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 4300 3900 50  0001 C CNN
	1    4300 3900
	0    1    -1   0   
$EndComp
$Comp
L Device:D_TVS D403
U 1 1 5B9F5A8B
P 4800 3550
F 0 "D403" V 4754 3629 50  0000 L CNN
F 1 "D_TVS" V 4845 3629 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 4800 3550 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 4800 3550 50  0001 C CNN
	1    4800 3550
	0    1    -1   0   
$EndComp
$Comp
L Device:D_TVS D404
U 1 1 5B9F5ABD
P 5400 3900
F 0 "D404" V 5354 3979 50  0000 L CNN
F 1 "D_TVS" V 5445 3979 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 5400 3900 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 5400 3900 50  0001 C CNN
	1    5400 3900
	0    1    -1   0   
$EndComp
$Comp
L Device:D_TVS D405
U 1 1 5B9F5AF1
P 5900 3500
F 0 "D405" V 5854 3579 50  0000 L CNN
F 1 "D_TVS" V 5945 3579 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 5900 3500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 5900 3500 50  0001 C CNN
	1    5900 3500
	0    1    -1   0   
$EndComp
$Comp
L Device:D_TVS D406
U 1 1 5B9F5B2B
P 6500 3900
F 0 "D406" V 6454 3979 50  0000 L CNN
F 1 "D_TVS" V 6545 3979 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 6500 3900 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 6500 3900 50  0001 C CNN
	1    6500 3900
	0    1    -1   0   
$EndComp
$Comp
L Device:D_TVS D407
U 1 1 5B9F5B63
P 7050 3500
F 0 "D407" V 7004 3579 50  0000 L CNN
F 1 "D_TVS" V 7095 3579 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 7050 3500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 7050 3500 50  0001 C CNN
	1    7050 3500
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0414
U 1 1 5B9F5D37
P 4300 3750
F 0 "#PWR0414" H 4300 3500 50  0001 C CNN
F 1 "GND" V 4305 3622 50  0000 R CNN
F 2 "" H 4300 3750 50  0001 C CNN
F 3 "" H 4300 3750 50  0001 C CNN
	1    4300 3750
	1    0    0    1   
$EndComp
Wire Wire Line
	8250 5300 8400 5300
Text Label 8750 4700 2    50   ~ 0
SD_SPI_MOSI_CARD
Text Label 8750 5100 2    50   ~ 0
SD_SPI_MISO_CARD
Text Label 8650 4600 2    50   ~ 0
SD_SPI_CS_CARD
Text Label 8700 4900 2    50   ~ 0
SD_SPI_CLK_CARD
Text Notes 8500 6200 0    50   ~ 0
http://www.interfacebus.com/MicroSD_Card_Pinout.html
Text GLabel 1400 2650 0    50   Input ~ 0
SD_SPI_CS
Text GLabel 2550 2650 2    50   Input ~ 0
SD_SPI_MOSI
Text GLabel 1400 2350 0    50   Input ~ 0
SD_SPI_CLK
Text GLabel 2550 2350 2    50   Input ~ 0
SD_SPI_MISO
Wire Wire Line
	8400 5300 9250 5300
Connection ~ 8400 5300
$Comp
L PerMalmberg:MAX4948 U401
U 1 1 5B9B0501
P 1500 2900
F 0 "U401" H 2150 2850 50  0000 C CNN
F 1 "MAX4948" H 1950 3400 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm_ThermalVias" H 1450 2900 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Maxim-Integrated/MAX4948ETG%2b?qs=sGAEpiMZZMuuBt6TL7D%2f6HEUAj%252bJt3CD" H 1450 2900 50  0001 C CNN
	1    1500 2900
	1    0    0    -1  
$EndComp
Text Label 7850 4500 2    50   ~ 0
SD_MMC_Data2
Text Label 7850 4600 2    50   ~ 0
SD_MMC_Data3
Text Label 7800 4700 2    50   ~ 0
SD_MMC_CMD
Text Label 7800 4900 2    50   ~ 0
SD_MMC_CLK
Text Label 7850 5100 2    50   ~ 0
SD_MMC_DATA0
Text Label 7850 5200 2    50   ~ 0
SD_MMC_DATA1
Text Label 2550 2150 0    50   ~ 0
SD_MMC_Data2
Text Label 2550 2450 0    50   ~ 0
SD_MMC_DATA0
Text Label 1400 2550 2    50   ~ 0
SD_MMC_Data3
Text Label 1400 1950 2    50   ~ 0
SD_MMC_DATA1
Text Label 1400 2250 2    50   ~ 0
SD_MMC_CLK
Text Label 2550 2750 0    50   ~ 0
SD_MMC_CMD
Text GLabel 1400 2150 0    50   Input ~ 0
SD_DATA1
Text GLabel 2550 2250 2    50   Input ~ 0
SD_DATA0
Text GLabel 1400 2450 0    50   Input ~ 0
SD_CLK
Text GLabel 2550 2550 2    50   Input ~ 0
SD_CMD
Text GLabel 1400 2750 0    50   Input ~ 0
SD_DATA3
Text GLabel 3550 1950 2    50   Input ~ 0
SD_DATA2
$Comp
L power:GND #PWR0410
U 1 1 5B9D6575
P 1950 3100
F 0 "#PWR0410" H 1950 2850 50  0001 C CNN
F 1 "GND" V 1955 2972 50  0000 R CNN
F 2 "" H 1950 3100 50  0001 C CNN
F 3 "" H 1950 3100 50  0001 C CNN
	1    1950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3000 1850 3100
Wire Wire Line
	1850 3100 1950 3100
Wire Wire Line
	2050 3000 2050 3100
Wire Wire Line
	2050 3100 1950 3100
Connection ~ 1950 3100
Wire Wire Line
	1950 3000 1950 3100
$Comp
L power:+3.3V #PWR0408
U 1 1 5B9D7627
P 1900 1800
F 0 "#PWR0408" H 1900 1650 50  0001 C CNN
F 1 "+3.3V" V 1915 1928 50  0000 L CNN
F 2 "" H 1900 1800 50  0001 C CNN
F 3 "" H 1900 1800 50  0001 C CNN
	1    1900 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0413
U 1 1 5B9D86F5
P 4900 1000
F 0 "#PWR0413" H 4900 850 50  0001 C CNN
F 1 "+3.3V" V 4915 1128 50  0000 L CNN
F 2 "" H 4900 1000 50  0001 C CNN
F 3 "" H 4900 1000 50  0001 C CNN
	1    4900 1000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5B9D8740
P 2350 1150
AR Path="/5B61FB63/5B9D8740" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B9D8740" Ref="R407"  Part="1" 
F 0 "R407" H 2420 1196 50  0000 L CNN
F 1 "10k" H 2420 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2280 1150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 2350 1150 50  0001 C CNN
	1    2350 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1000 2000 1000
$Comp
L power:GND #PWR0411
U 1 1 5B9D881A
P 2350 1300
F 0 "#PWR0411" H 2350 1050 50  0001 C CNN
F 1 "GND" V 2355 1172 50  0000 R CNN
F 2 "" H 2350 1300 50  0001 C CNN
F 3 "" H 2350 1300 50  0001 C CNN
	1    2350 1300
	1    0    0    -1  
$EndComp
Text GLabel 2350 1000 1    50   Input ~ 0
SD_MODE
Connection ~ 2350 1000
Wire Notes Line
	8000 4300 8000 5150
Wire Notes Line
	8000 5150 8800 5150
Wire Notes Line
	8800 5150 8800 4300
Wire Notes Line
	8800 4300 8000 4300
Text Notes 8050 4400 0    50   ~ 0
SPI signals
Text Notes 7350 4400 0    50   ~ 0
MMC Signals
Text Notes 3800 1500 0    50   ~ 0
Both On = SPI mode and JTAG support.\nGPIO2 needs to be LOW during boot to enter download mode;\nshorting it to GPIO0 (SD_DATA0) will allow this to happen.
$Comp
L Device:LED D?
U 1 1 5BA18619
P 2800 1450
AR Path="/5B62EDB8/5B780EE8/5BA18619" Ref="D?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BA18619" Ref="D401"  Part="1" 
F 0 "D401" V 2700 1250 50  0000 C CNN
F 1 "Red" H 2750 1600 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 2800 1450 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lite-On/LTL2R3KGD-EM?qs=sGAEpiMZZMtmwHDZQCdlqY3QuPVQdrfivxVgVo2hFbg%3d" H 2800 1450 50  0001 C CNN
	1    2800 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BA18621
P 2800 1150
AR Path="/5B62EDB8/5B780EE8/5BA18621" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BA18621" Ref="R408"  Part="1" 
F 0 "R408" V 2593 1150 50  0000 C CNN
F 1 "1.65k" V 2684 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2730 1150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay/CRCW08051K65FKEA?qs=sGAEpiMZZMtlubZbdhIBIFvv2%252blmU1cYk%2fKBbkOVYDU%3d" H 2800 1150 50  0001 C CNN
	1    2800 1150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0412
U 1 1 5BA1B86A
P 2800 1600
F 0 "#PWR0412" H 2800 1350 50  0001 C CNN
F 1 "GND" V 2805 1472 50  0000 R CNN
F 2 "" H 2800 1600 50  0001 C CNN
F 3 "" H 2800 1600 50  0001 C CNN
	1    2800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1000 2800 1000
Wire Wire Line
	2000 1000 2000 1800
Connection ~ 2800 1000
Wire Wire Line
	2800 1000 4300 1000
Wire Notes Line
	7250 4300 7900 4300
Wire Notes Line
	7900 4300 7900 5250
Wire Notes Line
	7900 5250 7250 5250
Wire Notes Line
	7250 5250 7250 4300
$Comp
L Device:C C?
U 1 1 5BA342A0
P 900 3650
AR Path="/5B61FB63/5BA342A0" Ref="C?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BA342A0" Ref="C401"  Part="1" 
F 0 "C401" H 785 3604 50  0000 R CNN
F 1 "100n" H 785 3695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 938 3500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 900 3650 50  0001 C CNN
	1    900  3650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0405
U 1 1 5BA34586
P 900 3800
F 0 "#PWR0405" H 900 3550 50  0001 C CNN
F 1 "GND" V 905 3672 50  0000 R CNN
F 2 "" H 900 3800 50  0001 C CNN
F 3 "" H 900 3800 50  0001 C CNN
	1    900  3800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0404
U 1 1 5BA345BD
P 900 3500
F 0 "#PWR0404" H 900 3350 50  0001 C CNN
F 1 "+3.3V" V 915 3628 50  0000 L CNN
F 2 "" H 900 3500 50  0001 C CNN
F 3 "" H 900 3500 50  0001 C CNN
	1    900  3500
	1    0    0    -1  
$EndComp
Wire Notes Line
	550  3000 1300 3000
Wire Notes Line
	1300 3000 1300 4150
Wire Notes Line
	1300 4150 550  4150
Wire Notes Line
	550  4150 550  3000
Text Notes 650  4000 1    50   ~ 0
Place near MAX4948
Text Notes 8500 6350 0    50   ~ 0
https://www.acmesystems.it/pcb_microsd
NoConn ~ 2550 2050
NoConn ~ 1400 2050
$Comp
L power:GND #PWR0107
U 1 1 5BEB3D3A
P 4800 3400
F 0 "#PWR0107" H 4800 3150 50  0001 C CNN
F 1 "GND" V 4805 3272 50  0000 R CNN
F 2 "" H 4800 3400 50  0001 C CNN
F 3 "" H 4800 3400 50  0001 C CNN
	1    4800 3400
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5BEB3D71
P 5400 3750
F 0 "#PWR0108" H 5400 3500 50  0001 C CNN
F 1 "GND" V 5405 3622 50  0000 R CNN
F 2 "" H 5400 3750 50  0001 C CNN
F 3 "" H 5400 3750 50  0001 C CNN
	1    5400 3750
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5BEB3DA8
P 5900 3350
F 0 "#PWR0109" H 5900 3100 50  0001 C CNN
F 1 "GND" V 5905 3222 50  0000 R CNN
F 2 "" H 5900 3350 50  0001 C CNN
F 3 "" H 5900 3350 50  0001 C CNN
	1    5900 3350
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5BEB3DDF
P 6500 3750
F 0 "#PWR0110" H 6500 3500 50  0001 C CNN
F 1 "GND" V 6505 3622 50  0000 R CNN
F 2 "" H 6500 3750 50  0001 C CNN
F 3 "" H 6500 3750 50  0001 C CNN
	1    6500 3750
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5BEB3E16
P 7050 3350
F 0 "#PWR0111" H 7050 3100 50  0001 C CNN
F 1 "GND" V 7055 3222 50  0000 R CNN
F 2 "" H 7050 3350 50  0001 C CNN
F 3 "" H 7050 3350 50  0001 C CNN
	1    7050 3350
	1    0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BEB7DD0
P 4650 3400
AR Path="/5B61FB63/5BEB7DD0" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BEB7DD0" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 4650 3250 50  0001 C CNN
F 1 "+3.3V" H 4665 3573 50  0000 C CNN
F 2 "" H 4650 3400 50  0001 C CNN
F 3 "" H 4650 3400 50  0001 C CNN
	1    4650 3400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BEB7DD6
P 4650 3550
AR Path="/5B61FB63/5BEB7DD6" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BEB7DD6" Ref="R402"  Part="1" 
F 0 "R402" H 4720 3596 50  0000 L CNN
F 1 "50k" H 4720 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4580 3550 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/667-ERJ-6ENF5102V" H 4650 3550 50  0001 C CNN
	1    4650 3550
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BEBA18B
P 5250 3750
AR Path="/5B61FB63/5BEBA18B" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BEBA18B" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 5250 3600 50  0001 C CNN
F 1 "+3.3V" H 5265 3923 50  0000 C CNN
F 2 "" H 5250 3750 50  0001 C CNN
F 3 "" H 5250 3750 50  0001 C CNN
	1    5250 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BEBA191
P 5250 3900
AR Path="/5B61FB63/5BEBA191" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BEBA191" Ref="R403"  Part="1" 
F 0 "R403" H 5320 3946 50  0000 L CNN
F 1 "50k" H 5320 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5180 3900 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/667-ERJ-6ENF5102V" H 5250 3900 50  0001 C CNN
	1    5250 3900
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BEBAD32
P 5750 3350
AR Path="/5B61FB63/5BEBAD32" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BEBAD32" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5750 3200 50  0001 C CNN
F 1 "+3.3V" H 5765 3523 50  0000 C CNN
F 2 "" H 5750 3350 50  0001 C CNN
F 3 "" H 5750 3350 50  0001 C CNN
	1    5750 3350
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BEBAD38
P 5750 3500
AR Path="/5B61FB63/5BEBAD38" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BEBAD38" Ref="R404"  Part="1" 
F 0 "R404" H 5820 3546 50  0000 L CNN
F 1 "50k" H 5820 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5680 3500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/667-ERJ-6ENF5102V" H 5750 3500 50  0001 C CNN
	1    5750 3500
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BEBB8CB
P 6350 3750
AR Path="/5B61FB63/5BEBB8CB" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BEBB8CB" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 6350 3600 50  0001 C CNN
F 1 "+3.3V" H 6365 3923 50  0000 C CNN
F 2 "" H 6350 3750 50  0001 C CNN
F 3 "" H 6350 3750 50  0001 C CNN
	1    6350 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BEBB8D1
P 6350 3900
AR Path="/5B61FB63/5BEBB8D1" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BEBB8D1" Ref="R405"  Part="1" 
F 0 "R405" H 6420 3946 50  0000 L CNN
F 1 "50k" H 6420 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6280 3900 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/667-ERJ-6ENF5102V" H 6350 3900 50  0001 C CNN
	1    6350 3900
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BEBC446
P 6900 2900
AR Path="/5B61FB63/5BEBC446" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BEBC446" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 6900 2750 50  0001 C CNN
F 1 "+3.3V" H 6915 3073 50  0000 C CNN
F 2 "" H 6900 2900 50  0001 C CNN
F 3 "" H 6900 2900 50  0001 C CNN
	1    6900 2900
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BEBC44C
P 6750 2900
AR Path="/5B61FB63/5BEBC44C" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BEBC44C" Ref="R406"  Part="1" 
F 0 "R406" V 6650 2800 50  0000 L CNN
F 1 "50k" V 6750 2850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6680 2900 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/667-ERJ-6ENF5102V" H 6750 2900 50  0001 C CNN
	1    6750 2900
	0    1    -1   0   
$EndComp
Wire Wire Line
	4150 4050 4300 4050
Wire Wire Line
	4650 3700 4800 3700
Wire Wire Line
	5250 4050 5400 4050
Wire Wire Line
	5750 3650 5900 3650
Wire Wire Line
	6350 4050 6500 4050
Wire Wire Line
	9250 4500 7050 4500
Wire Wire Line
	9250 4600 6500 4600
Wire Wire Line
	6500 4600 6500 4050
Connection ~ 6500 4050
Wire Wire Line
	9250 4700 5900 4700
Wire Wire Line
	5900 4700 5900 3650
Connection ~ 5900 3650
Wire Wire Line
	9250 4900 5400 4900
Wire Wire Line
	5400 4900 5400 4050
Connection ~ 5400 4050
Wire Wire Line
	9250 5100 4800 5100
Wire Wire Line
	4800 5100 4800 3700
Connection ~ 4800 3700
Wire Wire Line
	9250 5200 4300 5200
Wire Wire Line
	4300 5200 4300 4050
Connection ~ 4300 4050
Wire Wire Line
	7050 4500 7050 3650
Wire Wire Line
	2550 1950 3450 1950
Wire Notes Line
	7350 2250 7350 4200
Wire Notes Line
	7350 4200 3750 4200
Wire Notes Line
	3750 4200 3750 2250
Wire Notes Line
	3750 2250 7350 2250
Text Notes 3800 2750 0    50   ~ 0
SD Pullups: R406 is placed on other side of MAX4948 to comply with ESP32\nWrover GPIO12 strapping pin for flash voltage (1.8V) selection regardless\nof SPI or MMC mode.\n\nWrover-B uses 3.3V so don't populate R406 and call gpio_pullup_en(GPIO_NUM_12)\nafter boot to allow SD Card operation.
Wire Wire Line
	3450 1950 3450 2900
Wire Wire Line
	3450 2900 6600 2900
Connection ~ 3450 1950
Wire Wire Line
	3450 1950 3550 1950
$Comp
L Switch:SW_DIP_x02 SW1
U 1 1 5BEF9F65
P 4600 1000
F 0 "SW1" H 4600 733 50  0000 C CNN
F 1 "SD SPI/MMC mode" H 4600 824 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx02_Slide_Omron_A6S-210x_W8.9mm_P2.54mm" H 4600 1000 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/653-A6S-2101-PH" H 4600 1000 50  0001 C CNN
	1    4600 1000
	-1   0    0    1   
$EndComp
Text GLabel 4300 1100 0    50   Input ~ 0
Boot_option
Text GLabel 4900 1100 2    50   Input ~ 0
SD_DATA0
$Comp
L power:GND #PWR01
U 1 1 5BF07627
P 2100 1800
F 0 "#PWR01" H 2100 1550 50  0001 C CNN
F 1 "GND" H 2105 1627 50  0000 C CNN
F 2 "" H 2100 1800 50  0001 C CNN
F 3 "" H 2100 1800 50  0001 C CNN
	1    2100 1800
	-1   0    0    1   
$EndComp
Text GLabel 9250 5400 0    50   Input ~ 0
SD_CARD_PWR
Text GLabel 9650 1300 1    50   Input ~ 0
SD_CARD_PWR
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5BF764A8
P 9550 1500
AR Path="/5B62EDB8/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8B425B/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8BDF9E/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8CC011/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8CD7E8/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B6C04D0/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8DFA1F/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8D6A51/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8D8275/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8D9A4C/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8DB29A/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8DCA71/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8DE248/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8EE9B3/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8F19D7/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8F31AE/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B8F4985/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA037E0/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B9EF457/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B9F3247/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA1CD69/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA1DF84/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA1E7D8/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA1F02C/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA1F880/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA200D4/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA20928/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2F275/5BF764A8" Ref="Q?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BF764A8" Ref="Q401"  Part="1" 
F 0 "Q401" V 9750 1450 50  0000 L CNN
F 1 "ZXTN25050DFHTA" H 9800 1400 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9750 1600 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Diodes-Incorporated/ZXTN25050DFHTA?qs=sGAEpiMZZMshyDBzk1%2fWi6gR%252bqBmAG1j52KxSCCDz6c%3d" H 9550 1500 50  0001 C CNN
	1    9550 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BF764AF
P 8800 1500
AR Path="/5B62EDB8/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8B425B/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8BDF9E/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8CC011/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8CD7E8/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B6C04D0/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8DFA1F/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8D6A51/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8D8275/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8D9A4C/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8DB29A/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8DCA71/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8DE248/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8EE9B3/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8F19D7/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8F31AE/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8F4985/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA037E0/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B9EF457/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B9F3247/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1CD69/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1DF84/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1E7D8/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1F02C/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1F880/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA200D4/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA20928/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2F275/5BF764AF" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BF764AF" Ref="R410"  Part="1" 
F 0 "R410" V 8700 1500 50  0000 C CNN
F 1 "470" V 8800 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8730 1500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-4700ELF?qs=sGAEpiMZZMu61qfTUdNhG6LqqFhkr6pUJHKuKfp2v90%3d" H 8800 1500 50  0001 C CNN
	1    8800 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BF764B6
P 9200 1650
AR Path="/5B62EDB8/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8B425B/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8BDF9E/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8CC011/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8CD7E8/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B6C04D0/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8DFA1F/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8D6A51/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8D8275/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8D9A4C/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8DB29A/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8DCA71/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8DE248/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8EE9B3/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8F19D7/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8F31AE/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8F4985/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA037E0/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B9EF457/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B9F3247/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1CD69/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1DF84/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1E7D8/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1F02C/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1F880/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA200D4/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA20928/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2F275/5BF764B6" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BF764B6" Ref="R411"  Part="1" 
F 0 "R411" H 9270 1696 50  0000 L CNN
F 1 "10k" H 9270 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9130 1650 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 9200 1650 50  0001 C CNN
	1    9200 1650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF764BD
P 9200 1800
AR Path="/5B62EDB8/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8B425B/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8BDF9E/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8CC011/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8CD7E8/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B6C04D0/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8DFA1F/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8D6A51/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8D8275/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8D9A4C/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8DB29A/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8DCA71/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8DE248/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8EE9B3/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8F19D7/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8F31AE/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8F4985/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA037E0/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B9EF457/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B9F3247/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1CD69/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1DF84/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1E7D8/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1F02C/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1F880/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA200D4/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA20928/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2F275/5BF764BD" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BF764BD" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 9200 1550 50  0001 C CNN
F 1 "GND" H 9205 1627 50  0000 C CNN
F 2 "" H 9200 1800 50  0001 C CNN
F 3 "" H 9200 1800 50  0001 C CNN
	1    9200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1500 9200 1500
Connection ~ 9200 1500
Wire Wire Line
	9200 1500 9350 1500
Text GLabel 8650 1500 0    50   Input ~ 0
SD_CARD_PWR_CTRL
$Comp
L power:+3.3V #PWR0118
U 1 1 5BEA97EE
P 9250 4800
F 0 "#PWR0118" H 9250 4650 50  0001 C CNN
F 1 "+3.3V" H 9265 4973 50  0000 C CNN
F 2 "" H 9250 4800 50  0001 C CNN
F 3 "" H 9250 4800 50  0001 C CNN
	1    9250 4800
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
