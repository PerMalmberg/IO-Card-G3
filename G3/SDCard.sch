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
P 8300 2600
AR Path="/5B61FB63/5B98DFAA" Ref="J?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98DFAA" Ref="J401"  Part="1" 
F 0 "J401" H 8250 3417 50  0000 C CNN
F 1 "Micro_SD_Card_Det" H 8250 3326 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Hirose_DM3AT-SF-PEJM5" H 10350 3300 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Hirose-Connector/DM3AT-SF-PEJM5?qs=sGAEpiMZZMuJakaoiLiBpvjg2IzEXJkOoUNaxaL8lrc%3d" H 8300 2700 50  0001 C CNN
	1    8300 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0420
U 1 1 5B98DFF9
P 9850 2250
F 0 "#PWR0420" H 9850 2100 50  0001 C CNN
F 1 "+3.3V" V 9865 2378 50  0000 L CNN
F 2 "" H 9850 2250 50  0001 C CNN
F 3 "" H 9850 2250 50  0001 C CNN
	1    9850 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0421
U 1 1 5B98E165
P 9850 2550
F 0 "#PWR0421" H 9850 2300 50  0001 C CNN
F 1 "GND" H 9855 2377 50  0000 C CNN
F 2 "" H 9850 2550 50  0001 C CNN
F 3 "" H 9850 2550 50  0001 C CNN
	1    9850 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0419
U 1 1 5B98E18D
P 9100 3100
F 0 "#PWR0419" H 9100 2850 50  0001 C CNN
F 1 "GND" V 9105 2972 50  0000 R CNN
F 2 "" H 9100 3100 50  0001 C CNN
F 3 "" H 9100 3100 50  0001 C CNN
	1    9100 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5B98E455
P 10300 2400
AR Path="/5B61FB63/5B98E455" Ref="C?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E455" Ref="C403"  Part="1" 
F 0 "C403" H 10185 2354 50  0000 R CNN
F 1 "100n" H 10185 2445 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10338 2250 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 10300 2400 50  0001 C CNN
	1    10300 2400
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E74A
P 950 1100
AR Path="/5B61FB63/5B98E74A" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E74A" Ref="#PWR0402"  Part="1" 
F 0 "#PWR0402" H 950 950 50  0001 C CNN
F 1 "+3.3V" H 965 1273 50  0000 C CNN
F 2 "" H 950 1100 50  0001 C CNN
F 3 "" H 950 1100 50  0001 C CNN
	1    950  1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E91C
P 1350 1100
AR Path="/5B61FB63/5B98E91C" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E91C" Ref="#PWR0403"  Part="1" 
F 0 "#PWR0403" H 1350 950 50  0001 C CNN
F 1 "+3.3V" H 1365 1273 50  0000 C CNN
F 2 "" H 1350 1100 50  0001 C CNN
F 3 "" H 1350 1100 50  0001 C CNN
	1    1350 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E8BE
P 1900 1100
AR Path="/5B61FB63/5B98E8BE" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E8BE" Ref="#PWR0406"  Part="1" 
F 0 "#PWR0406" H 1900 950 50  0001 C CNN
F 1 "+3.3V" H 1915 1273 50  0000 C CNN
F 2 "" H 1900 1100 50  0001 C CNN
F 3 "" H 1900 1100 50  0001 C CNN
	1    1900 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E85F
P 2600 1100
AR Path="/5B61FB63/5B98E85F" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E85F" Ref="#PWR0409"  Part="1" 
F 0 "#PWR0409" H 2600 950 50  0001 C CNN
F 1 "+3.3V" H 2615 1273 50  0000 C CNN
F 2 "" H 2600 1100 50  0001 C CNN
F 3 "" H 2600 1100 50  0001 C CNN
	1    2600 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E805
P 2250 1100
AR Path="/5B61FB63/5B98E805" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E805" Ref="#PWR0407"  Part="1" 
F 0 "#PWR0407" H 2250 950 50  0001 C CNN
F 1 "+3.3V" H 2265 1273 50  0000 C CNN
F 2 "" H 2250 1100 50  0001 C CNN
F 3 "" H 2250 1100 50  0001 C CNN
	1    2250 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E7A6
P 650 1100
AR Path="/5B61FB63/5B98E7A6" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E7A6" Ref="#PWR0401"  Part="1" 
F 0 "#PWR0401" H 650 950 50  0001 C CNN
F 1 "+3.3V" H 665 1273 50  0000 C CNN
F 2 "" H 650 1100 50  0001 C CNN
F 3 "" H 650 1100 50  0001 C CNN
	1    650  1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E922
P 1350 1250
AR Path="/5B61FB63/5B98E922" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E922" Ref="R403"  Part="1" 
F 0 "R403" H 1420 1296 50  0000 L CNN
F 1 "10k" H 1420 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1280 1250 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 1350 1250 50  0001 C CNN
	1    1350 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E8C4
P 1900 1250
AR Path="/5B61FB63/5B98E8C4" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E8C4" Ref="R404"  Part="1" 
F 0 "R404" H 1970 1296 50  0000 L CNN
F 1 "10k" H 1970 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1830 1250 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 1900 1250 50  0001 C CNN
	1    1900 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E865
P 2600 1250
AR Path="/5B61FB63/5B98E865" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E865" Ref="R406"  Part="1" 
F 0 "R406" H 2670 1296 50  0000 L CNN
F 1 "10k" H 2670 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2530 1250 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 2600 1250 50  0001 C CNN
	1    2600 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E80B
P 2250 1250
AR Path="/5B61FB63/5B98E80B" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E80B" Ref="R405"  Part="1" 
F 0 "R405" H 2320 1296 50  0000 L CNN
F 1 "10k" H 2320 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2180 1250 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 2250 1250 50  0001 C CNN
	1    2250 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E7AC
P 650 1250
AR Path="/5B61FB63/5B98E7AC" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E7AC" Ref="R401"  Part="1" 
F 0 "R401" H 720 1296 50  0000 L CNN
F 1 "10k" H 720 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 580 1250 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 650 1250 50  0001 C CNN
	1    650  1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E750
P 950 1250
AR Path="/5B61FB63/5B98E750" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E750" Ref="R402"  Part="1" 
F 0 "R402" H 1020 1296 50  0000 L CNN
F 1 "10k" H 1020 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 880 1250 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 950 1250 50  0001 C CNN
	1    950  1250
	1    0    0    -1  
$EndComp
Wire Notes Line
	1250 1450 1250 1100
Wire Notes Line
	1800 1100 1800 1450
Text Notes 1600 1350 0    50   ~ 0
NC
Wire Notes Line
	1250 1450 1800 1450
Wire Notes Line
	1800 1100 1250 1100
Wire Wire Line
	9850 2250 10300 2250
Wire Wire Line
	10300 2550 9850 2550
$Comp
L power:GND #PWR0417
U 1 1 5B99005F
P 7400 2700
F 0 "#PWR0417" H 7400 2450 50  0001 C CNN
F 1 "GND" V 7405 2572 50  0000 R CNN
F 2 "" H 7400 2700 50  0001 C CNN
F 3 "" H 7400 2700 50  0001 C CNN
	1    7400 2700
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B9C2CD4
P 6900 3300
AR Path="/5B61FB63/5B9C2CD4" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B9C2CD4" Ref="#PWR0415"  Part="1" 
F 0 "#PWR0415" H 6900 3150 50  0001 C CNN
F 1 "+3.3V" H 6915 3473 50  0000 C CNN
F 2 "" H 6900 3300 50  0001 C CNN
F 3 "" H 6900 3300 50  0001 C CNN
	1    6900 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5B9C2CDA
P 6900 3150
AR Path="/5B61FB63/5B9C2CDA" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B9C2CDA" Ref="R409"  Part="1" 
F 0 "R409" H 6970 3196 50  0000 L CNN
F 1 "10k" H 6970 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6830 3150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 6900 3150 50  0001 C CNN
	1    6900 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0418
U 1 1 5B9C4260
P 7400 3100
F 0 "#PWR0418" H 7400 2850 50  0001 C CNN
F 1 "GND" V 7405 2972 50  0000 R CNN
F 2 "" H 7400 3100 50  0001 C CNN
F 3 "" H 7400 3100 50  0001 C CNN
	1    7400 3100
	0    1    1    0   
$EndComp
Text GLabel 950  1400 3    50   Input ~ 0
SD_DATA1
Text GLabel 650  1400 3    50   Input ~ 0
SD_DATA0
Text GLabel 2250 1400 3    50   Input ~ 0
SD_CLK
Text GLabel 1350 1400 3    50   Input ~ 0
SD_DATA2
Text GLabel 1900 1400 3    50   Input ~ 0
SD_DATA3
Text GLabel 2600 1400 3    50   Input ~ 0
SD_CMD
Text GLabel 6750 3000 0    50   Input ~ 0
SD_CD
$Comp
L Device:CP C?
U 1 1 5B9D6414
P 9850 2400
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
F 0 "C402" V 9700 2400 50  0000 C CNN
F 1 "10u" H 9950 2500 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_5x4.5" H 9888 2250 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/710-865080440002" H 9850 2400 50  0001 C CNN
	1    9850 2400
	1    0    0    -1  
$EndComp
Connection ~ 9850 2250
Connection ~ 9850 2550
Text Notes 7050 3400 0    50   ~ 0
Card present = SD_CD low
$Comp
L power:+3.3V #PWR0416
U 1 1 5B9DC236
P 7400 2500
F 0 "#PWR0416" H 7400 2350 50  0001 C CNN
F 1 "+3.3V" V 7415 2628 50  0000 L CNN
F 2 "" H 7400 2500 50  0001 C CNN
F 3 "" H 7400 2500 50  0001 C CNN
	1    7400 2500
	0    -1   -1   0   
$EndComp
Wire Notes Line
	9400 2850 9400 2000
Wire Notes Line
	9400 2000 10700 2000
Wire Notes Line
	10700 2000 10700 2850
Wire Notes Line
	10700 2850 9400 2850
Text Notes 9700 2150 0    50   ~ 0
Place near SD Card
Text Notes 8250 3500 0    50   ~ 0
Place card slot as near the MCU\nas possible. Leave room to insert\nthe card.
$Comp
L Device:D_TVS D402
U 1 1 5B9F52BB
P 4850 4050
F 0 "D402" V 4804 4129 50  0000 L CNN
F 1 "D_TVS" V 4895 4129 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 4850 4050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 4850 4050 50  0001 C CNN
	1    4850 4050
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D403
U 1 1 5B9F5A8B
P 5200 4050
F 0 "D403" V 5154 4129 50  0000 L CNN
F 1 "D_TVS" V 5245 4129 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 5200 4050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 5200 4050 50  0001 C CNN
	1    5200 4050
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D404
U 1 1 5B9F5ABD
P 5550 4050
F 0 "D404" V 5504 4129 50  0000 L CNN
F 1 "D_TVS" V 5595 4129 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 5550 4050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 5550 4050 50  0001 C CNN
	1    5550 4050
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D405
U 1 1 5B9F5AF1
P 5900 4050
F 0 "D405" V 5854 4129 50  0000 L CNN
F 1 "D_TVS" V 5945 4129 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 5900 4050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 5900 4050 50  0001 C CNN
	1    5900 4050
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D406
U 1 1 5B9F5B2B
P 6250 4050
F 0 "D406" V 6204 4129 50  0000 L CNN
F 1 "D_TVS" V 6295 4129 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 6250 4050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 6250 4050 50  0001 C CNN
	1    6250 4050
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D407
U 1 1 5B9F5B63
P 6600 4050
F 0 "D407" V 6554 4129 50  0000 L CNN
F 1 "D_TVS" V 6645 4129 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 6600 4050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 6600 4050 50  0001 C CNN
	1    6600 4050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0414
U 1 1 5B9F5D37
P 5700 4200
F 0 "#PWR0414" H 5700 3950 50  0001 C CNN
F 1 "GND" V 5705 4072 50  0000 R CNN
F 2 "" H 5700 4200 50  0001 C CNN
F 3 "" H 5700 4200 50  0001 C CNN
	1    5700 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3000 6900 3000
Text Label 7300 2400 2    50   ~ 0
SD_SPI_MOSI_CARD
Text Label 7300 2800 2    50   ~ 0
SD_SPI_MISO_CARD
Text Label 7300 2300 2    50   ~ 0
SD_SPI_CS_CARD
Text Label 7300 2600 2    50   ~ 0
SD_SPI_CLK_CARD
Text Notes 8050 3800 0    50   ~ 0
http://www.interfacebus.com/MicroSD_Card_Pinout.html
Text GLabel 2050 4250 0    50   Input ~ 0
SD_SPI_CS
Text GLabel 3200 4250 2    50   Input ~ 0
SD_SPI_MOSI
Text GLabel 2050 3950 0    50   Input ~ 0
SD_SPI_CLK
Text GLabel 3200 3950 2    50   Input ~ 0
SD_SPI_MISO
Wire Wire Line
	6900 3000 7400 3000
Connection ~ 6900 3000
Wire Wire Line
	7400 2900 6300 2900
Wire Wire Line
	6600 3900 6600 3200
Wire Wire Line
	6250 3900 6250 3300
Wire Wire Line
	6250 3300 6050 3300
Wire Wire Line
	5900 3900 5900 2600
Wire Wire Line
	5550 3900 5550 2400
Wire Wire Line
	5200 3900 5200 2300
Wire Wire Line
	4850 3900 4850 3450
Wire Wire Line
	4850 3450 5100 3450
Wire Wire Line
	5100 3450 5100 2200
Wire Wire Line
	5100 2200 7400 2200
Wire Wire Line
	4850 4200 5200 4200
Connection ~ 5200 4200
Wire Wire Line
	5200 4200 5550 4200
Connection ~ 5550 4200
Wire Wire Line
	5550 4200 5700 4200
Connection ~ 5700 4200
Wire Wire Line
	5700 4200 5900 4200
Connection ~ 5900 4200
Wire Wire Line
	5900 4200 6250 4200
Connection ~ 6250 4200
Wire Wire Line
	6250 4200 6600 4200
$Comp
L PerMalmberg:MAX4948 U401
U 1 1 5B9B0501
P 2150 4500
F 0 "U401" H 2800 4450 50  0000 C CNN
F 1 "MAX4948" H 2600 5000 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm_ThermalVias" H 2100 4500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Maxim-Integrated/MAX4948ETG%2b?qs=sGAEpiMZZMuuBt6TL7D%2f6HEUAj%252bJt3CD" H 2100 4500 50  0001 C CNN
	1    2150 4500
	1    0    0    -1  
$EndComp
Text Label 6450 2200 2    50   ~ 0
SD_MMC_Data2
Text Label 6450 2300 2    50   ~ 0
SD_MMC_Data3
Text Label 6450 2400 2    50   ~ 0
SD_MMC_CMD
Text Label 6450 2600 2    50   ~ 0
SD_MMC_CLK
Text Label 6450 2800 2    50   ~ 0
SD_MMC_DATA0
Text Label 6450 2900 2    50   ~ 0
SD_MMC_DATA1
Wire Wire Line
	5200 2300 7400 2300
Wire Wire Line
	5550 2400 7400 2400
Wire Wire Line
	6300 2900 6300 3200
Wire Wire Line
	6300 3200 6600 3200
Wire Wire Line
	6050 3300 6050 2800
Wire Wire Line
	6050 2800 7400 2800
Wire Wire Line
	5900 2600 7400 2600
Text Label 3200 3750 0    50   ~ 0
SD_MMC_Data2
Text Label 3200 4050 0    50   ~ 0
SD_MMC_DATA0
Text Label 2050 4150 2    50   ~ 0
SD_MMC_Data3
Text Label 2050 3550 2    50   ~ 0
SD_MMC_DATA1
Text Label 2050 3850 2    50   ~ 0
SD_MMC_CLK
Text Label 3200 4350 0    50   ~ 0
SD_MMC_CMD
Text GLabel 2050 3750 0    50   Input ~ 0
SD_DATA1
Text GLabel 3200 3850 2    50   Input ~ 0
SD_DATA0
Text GLabel 2050 4050 0    50   Input ~ 0
SD_CLK
Text GLabel 3200 4150 2    50   Input ~ 0
SD_CMD
Text GLabel 2050 4350 0    50   Input ~ 0
SD_DATA3
Text GLabel 3200 3550 2    50   Input ~ 0
SD_DATA2
$Comp
L power:GND #PWR0410
U 1 1 5B9D6575
P 2600 4700
F 0 "#PWR0410" H 2600 4450 50  0001 C CNN
F 1 "GND" V 2605 4572 50  0000 R CNN
F 2 "" H 2600 4700 50  0001 C CNN
F 3 "" H 2600 4700 50  0001 C CNN
	1    2600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4600 2500 4700
Wire Wire Line
	2500 4700 2600 4700
Wire Wire Line
	2700 4600 2700 4700
Wire Wire Line
	2700 4700 2600 4700
Connection ~ 2600 4700
Wire Wire Line
	2600 4600 2600 4700
$Comp
L power:+3.3V #PWR0408
U 1 1 5B9D7627
P 2550 3400
F 0 "#PWR0408" H 2550 3250 50  0001 C CNN
F 1 "+3.3V" V 2565 3528 50  0000 L CNN
F 2 "" H 2550 3400 50  0001 C CNN
F 3 "" H 2550 3400 50  0001 C CNN
	1    2550 3400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW401
U 1 1 5B9D7AAD
P 4000 2600
F 0 "SW401" H 4000 2333 50  0000 C CNN
F 1 "SD SPI/MMC mode" H 4000 2424 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx01_Slide_Omron_A6S-110x_W8.9mm_P2.54mm" H 4000 2600 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Omron-Electronics/A6S-1101-H?qs=%2fha2pyFaduhEvMiQOcMSfA87IBuXLqT8Z7SkOznfdjw%3d" H 4000 2600 50  0001 C CNN
	1    4000 2600
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0413
U 1 1 5B9D86F5
P 4300 2600
F 0 "#PWR0413" H 4300 2450 50  0001 C CNN
F 1 "+3.3V" V 4315 2728 50  0000 L CNN
F 2 "" H 4300 2600 50  0001 C CNN
F 3 "" H 4300 2600 50  0001 C CNN
	1    4300 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5B9D8740
P 3000 2750
AR Path="/5B61FB63/5B9D8740" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B9D8740" Ref="R407"  Part="1" 
F 0 "R407" H 3070 2796 50  0000 L CNN
F 1 "10k" H 3070 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 2750 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 3000 2750 50  0001 C CNN
	1    3000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2600 2650 2600
$Comp
L power:GND #PWR0411
U 1 1 5B9D881A
P 3000 2900
F 0 "#PWR0411" H 3000 2650 50  0001 C CNN
F 1 "GND" V 3005 2772 50  0000 R CNN
F 2 "" H 3000 2900 50  0001 C CNN
F 3 "" H 3000 2900 50  0001 C CNN
	1    3000 2900
	1    0    0    -1  
$EndComp
Text GLabel 2750 3400 1    50   Input ~ 0
SD_ENABLE
Text GLabel 3000 2600 1    50   Input ~ 0
SD_MODE
Connection ~ 3000 2600
Wire Notes Line
	6600 2000 6600 2850
Wire Notes Line
	6600 2850 7300 2850
Wire Notes Line
	7300 2850 7300 2000
Wire Notes Line
	7300 2000 6600 2000
Text Notes 6650 2100 0    50   ~ 0
SPI signals
Text Notes 5950 2100 0    50   ~ 0
MMC Signals
Text Notes 3800 2900 0    50   ~ 0
On = SPI mode and\nJTAG support
$Comp
L Device:LED D?
U 1 1 5BA18619
P 3450 3050
AR Path="/5B62EDB8/5B780EE8/5BA18619" Ref="D?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BA18619" Ref="D401"  Part="1" 
F 0 "D401" V 3350 2850 50  0000 C CNN
F 1 "Red" H 3400 3200 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 3450 3050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lite-On/LTL2R3KGD-EM?qs=sGAEpiMZZMtmwHDZQCdlqY3QuPVQdrfivxVgVo2hFbg%3d" H 3450 3050 50  0001 C CNN
	1    3450 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BA18621
P 3450 2750
AR Path="/5B62EDB8/5B780EE8/5BA18621" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BA18621" Ref="R408"  Part="1" 
F 0 "R408" V 3243 2750 50  0000 C CNN
F 1 "1.65k" V 3334 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3380 2750 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay/CRCW08051K65FKEA?qs=sGAEpiMZZMtlubZbdhIBIFvv2%252blmU1cYk%2fKBbkOVYDU%3d" H 3450 2750 50  0001 C CNN
	1    3450 2750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0412
U 1 1 5BA1B86A
P 3450 3200
F 0 "#PWR0412" H 3450 2950 50  0001 C CNN
F 1 "GND" V 3455 3072 50  0000 R CNN
F 2 "" H 3450 3200 50  0001 C CNN
F 3 "" H 3450 3200 50  0001 C CNN
	1    3450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2600 3450 2600
Wire Wire Line
	2650 2600 2650 3400
Connection ~ 3450 2600
Wire Wire Line
	3450 2600 3700 2600
Wire Notes Line
	5850 2000 6500 2000
Wire Notes Line
	6500 2000 6500 2950
Wire Notes Line
	6500 2950 5850 2950
Wire Notes Line
	5850 2950 5850 2000
$Comp
L Device:C C?
U 1 1 5BA342A0
P 1550 5250
AR Path="/5B61FB63/5BA342A0" Ref="C?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5BA342A0" Ref="C401"  Part="1" 
F 0 "C401" H 1435 5204 50  0000 R CNN
F 1 "100n" H 1435 5295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1588 5100 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/KEMET/C0805C104J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQFCCI5cSbRT%2fIwsdZoDYv9I%3d" H 1550 5250 50  0001 C CNN
	1    1550 5250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0405
U 1 1 5BA34586
P 1550 5400
F 0 "#PWR0405" H 1550 5150 50  0001 C CNN
F 1 "GND" V 1555 5272 50  0000 R CNN
F 2 "" H 1550 5400 50  0001 C CNN
F 3 "" H 1550 5400 50  0001 C CNN
	1    1550 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0404
U 1 1 5BA345BD
P 1550 5100
F 0 "#PWR0404" H 1550 4950 50  0001 C CNN
F 1 "+3.3V" V 1565 5228 50  0000 L CNN
F 2 "" H 1550 5100 50  0001 C CNN
F 3 "" H 1550 5100 50  0001 C CNN
	1    1550 5100
	1    0    0    -1  
$EndComp
Wire Notes Line
	1200 4600 1950 4600
Wire Notes Line
	1950 4600 1950 5750
Wire Notes Line
	1950 5750 1200 5750
Wire Notes Line
	1200 5750 1200 4600
Text Notes 1400 5600 1    50   ~ 0
Place near MAX4948
Text Notes 8050 3950 0    50   ~ 0
https://www.acmesystems.it/pcb_microsd
NoConn ~ 3200 3650
NoConn ~ 2050 3650
$EndSCHEMATC
