EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 36
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
P 5400 2650
AR Path="/5B61FB63/5B98DFAA" Ref="J?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98DFAA" Ref="J401"  Part="1" 
F 0 "J401" H 5350 3467 50  0000 C CNN
F 1 "Micro_SD_Card_Det" H 5350 3376 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Hirose_DM3AT-SF-PEJM5" H 7450 3350 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Hirose-Connector/DM3AT-SF-PEJM5?qs=sGAEpiMZZMuJakaoiLiBpvjg2IzEXJkOoUNaxaL8lrc%3d" H 5400 2750 50  0001 C CNN
	1    5400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0413
U 1 1 5B98DFF9
P 6300 1300
F 0 "#PWR0413" H 6300 1150 50  0001 C CNN
F 1 "+3.3V" V 6315 1428 50  0000 L CNN
F 2 "" H 6300 1300 50  0001 C CNN
F 3 "" H 6300 1300 50  0001 C CNN
	1    6300 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0414
U 1 1 5B98E165
P 6300 1600
F 0 "#PWR0414" H 6300 1350 50  0001 C CNN
F 1 "GND" H 6305 1427 50  0000 C CNN
F 2 "" H 6300 1600 50  0001 C CNN
F 3 "" H 6300 1600 50  0001 C CNN
	1    6300 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0412
U 1 1 5B98E18D
P 5650 3150
F 0 "#PWR0412" H 5650 2900 50  0001 C CNN
F 1 "GND" V 5655 3022 50  0000 R CNN
F 2 "" H 5650 3150 50  0001 C CNN
F 3 "" H 5650 3150 50  0001 C CNN
	1    5650 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 3150 5650 3150
$Comp
L Device:C C?
U 1 1 5B98E455
P 6750 1450
AR Path="/5B61FB63/5B98E455" Ref="C?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E455" Ref="C402"  Part="1" 
F 0 "C402" H 6635 1404 50  0000 R CNN
F 1 "100n" H 6635 1495 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6788 1300 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/AVX/08055C104JAZ2A?qs=%2fha2pyFaduhAZO93RAy6IIlm7PKA7PN%2fjITVSPkVEftSFjliFvU6%2fw%3d%3d" H 6750 1450 50  0001 C CNN
	1    6750 1450
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E74A
P 1500 1650
AR Path="/5B61FB63/5B98E74A" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E74A" Ref="#PWR0401"  Part="1" 
F 0 "#PWR0401" H 1500 1500 50  0001 C CNN
F 1 "+3.3V" H 1515 1823 50  0000 C CNN
F 2 "" H 1500 1650 50  0001 C CNN
F 3 "" H 1500 1650 50  0001 C CNN
	1    1500 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E91C
P 3350 1650
AR Path="/5B61FB63/5B98E91C" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E91C" Ref="#PWR0407"  Part="1" 
F 0 "#PWR0407" H 3350 1500 50  0001 C CNN
F 1 "+3.3V" H 3365 1823 50  0000 C CNN
F 2 "" H 3350 1650 50  0001 C CNN
F 3 "" H 3350 1650 50  0001 C CNN
	1    3350 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E8BE
P 3000 1650
AR Path="/5B61FB63/5B98E8BE" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E8BE" Ref="#PWR0406"  Part="1" 
F 0 "#PWR0406" H 3000 1500 50  0001 C CNN
F 1 "+3.3V" H 3015 1823 50  0000 C CNN
F 2 "" H 3000 1650 50  0001 C CNN
F 3 "" H 3000 1650 50  0001 C CNN
	1    3000 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E85F
P 2550 1650
AR Path="/5B61FB63/5B98E85F" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E85F" Ref="#PWR0405"  Part="1" 
F 0 "#PWR0405" H 2550 1500 50  0001 C CNN
F 1 "+3.3V" H 2565 1823 50  0000 C CNN
F 2 "" H 2550 1650 50  0001 C CNN
F 3 "" H 2550 1650 50  0001 C CNN
	1    2550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E805
P 2200 1650
AR Path="/5B61FB63/5B98E805" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E805" Ref="#PWR0403"  Part="1" 
F 0 "#PWR0403" H 2200 1500 50  0001 C CNN
F 1 "+3.3V" H 2215 1823 50  0000 C CNN
F 2 "" H 2200 1650 50  0001 C CNN
F 3 "" H 2200 1650 50  0001 C CNN
	1    2200 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B98E7A6
P 1850 1650
AR Path="/5B61FB63/5B98E7A6" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E7A6" Ref="#PWR0402"  Part="1" 
F 0 "#PWR0402" H 1850 1500 50  0001 C CNN
F 1 "+3.3V" H 1865 1823 50  0000 C CNN
F 2 "" H 1850 1650 50  0001 C CNN
F 3 "" H 1850 1650 50  0001 C CNN
	1    1850 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E922
P 3350 1800
AR Path="/5B61FB63/5B98E922" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E922" Ref="R406"  Part="1" 
F 0 "R406" H 3420 1846 50  0000 L CNN
F 1 "10k" H 3420 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3280 1800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 3350 1800 50  0001 C CNN
	1    3350 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E8C4
P 3000 1800
AR Path="/5B61FB63/5B98E8C4" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E8C4" Ref="R405"  Part="1" 
F 0 "R405" H 3070 1846 50  0000 L CNN
F 1 "10k" H 3070 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 1800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 3000 1800 50  0001 C CNN
	1    3000 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E865
P 2550 1800
AR Path="/5B61FB63/5B98E865" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E865" Ref="R404"  Part="1" 
F 0 "R404" H 2620 1846 50  0000 L CNN
F 1 "10k" H 2620 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2480 1800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 2550 1800 50  0001 C CNN
	1    2550 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E80B
P 2200 1800
AR Path="/5B61FB63/5B98E80B" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E80B" Ref="R403"  Part="1" 
F 0 "R403" H 2270 1846 50  0000 L CNN
F 1 "10k" H 2270 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2130 1800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 2200 1800 50  0001 C CNN
	1    2200 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E7AC
P 1850 1800
AR Path="/5B61FB63/5B98E7AC" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E7AC" Ref="R402"  Part="1" 
F 0 "R402" H 1920 1846 50  0000 L CNN
F 1 "10k" H 1920 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 1800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 1850 1800 50  0001 C CNN
	1    1850 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B98E750
P 1500 1800
AR Path="/5B61FB63/5B98E750" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B98E750" Ref="R401"  Part="1" 
F 0 "R401" H 1570 1846 50  0000 L CNN
F 1 "10k" H 1570 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1430 1800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 1500 1800 50  0001 C CNN
	1    1500 1800
	1    0    0    -1  
$EndComp
Wire Notes Line
	3250 2000 3250 1650
Wire Notes Line
	3800 1650 3800 2000
Text Notes 3600 1900 0    50   ~ 0
NC
Wire Notes Line
	3250 2000 3800 2000
Wire Notes Line
	3800 1650 3250 1650
Wire Wire Line
	6300 1300 6750 1300
Wire Wire Line
	6750 1600 6300 1600
$Comp
L power:GND #PWR0410
U 1 1 5B99005F
P 4500 2750
F 0 "#PWR0410" H 4500 2500 50  0001 C CNN
F 1 "GND" V 4505 2622 50  0000 R CNN
F 2 "" H 4500 2750 50  0001 C CNN
F 3 "" H 4500 2750 50  0001 C CNN
	1    4500 2750
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B9C2CD4
P 4100 3350
AR Path="/5B61FB63/5B9C2CD4" Ref="#PWR?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B9C2CD4" Ref="#PWR0408"  Part="1" 
F 0 "#PWR0408" H 4100 3200 50  0001 C CNN
F 1 "+3.3V" H 4115 3523 50  0000 C CNN
F 2 "" H 4100 3350 50  0001 C CNN
F 3 "" H 4100 3350 50  0001 C CNN
	1    4100 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5B9C2CDA
P 4100 3200
AR Path="/5B61FB63/5B9C2CDA" Ref="R?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B9C2CDA" Ref="R407"  Part="1" 
F 0 "R407" H 4170 3246 50  0000 L CNN
F 1 "10k" H 4170 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4030 3200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 4100 3200 50  0001 C CNN
	1    4100 3200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0411
U 1 1 5B9C4260
P 4500 3150
F 0 "#PWR0411" H 4500 2900 50  0001 C CNN
F 1 "GND" V 4505 3022 50  0000 R CNN
F 2 "" H 4500 3150 50  0001 C CNN
F 3 "" H 4500 3150 50  0001 C CNN
	1    4500 3150
	0    1    1    0   
$EndComp
Text GLabel 1200 2950 0    50   Input ~ 0
SD_DATA1
Text GLabel 1200 2850 0    50   Input ~ 0
SD_DATA0
Text GLabel 1200 2650 0    50   Input ~ 0
SD_CLK
Text GLabel 1200 2250 0    50   Input ~ 0
SD_DATA2
Text GLabel 1200 2350 0    50   Input ~ 0
SD_DATA3
Text GLabel 1200 2450 0    50   Input ~ 0
SD_CMD
Text GLabel 3950 3050 0    50   Input ~ 0
SD_CD
$Comp
L Device:CP C?
U 1 1 5B9D6414
P 6300 1450
AR Path="/5B62EDB8/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B66E27E/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B66FC5D/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B685B64/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B687263/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B688B1A/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B68A219/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B68BAA8/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B62EDB8/5B68D1A7/5B9D6414" Ref="C?"  Part="1" 
AR Path="/5B61FB63/5B98DF5D/5B9D6414" Ref="C401"  Part="1" 
F 0 "C401" V 6150 1450 50  0000 C CNN
F 1 "10u" H 6400 1550 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_5x4.5" H 6338 1300 50  0001 C CNN
F 3 "" H 6300 1450 50  0001 C CNN
	1    6300 1450
	1    0    0    -1  
$EndComp
Connection ~ 6300 1300
Connection ~ 6300 1600
Text Notes 4250 3450 0    50   ~ 0
Card present = SD_CD low
$Comp
L power:+3.3V #PWR0409
U 1 1 5B9DC236
P 4500 2550
F 0 "#PWR0409" H 4500 2400 50  0001 C CNN
F 1 "+3.3V" V 4515 2678 50  0000 L CNN
F 2 "" H 4500 2550 50  0001 C CNN
F 3 "" H 4500 2550 50  0001 C CNN
	1    4500 2550
	0    -1   -1   0   
$EndComp
Wire Notes Line
	5850 1900 5850 1050
Wire Notes Line
	5850 1050 7150 1050
Wire Notes Line
	7150 1050 7150 1900
Wire Notes Line
	7150 1900 5850 1900
Text Notes 6150 1200 0    50   ~ 0
Place near SD Card
Text Notes 6350 2600 0    50   ~ 0
Place card slot as near the MCU\nas possible. Leave room to insert\nthe card.
$Comp
L Device:D_TVS D401
U 1 1 5B9F52BB
P 1500 3400
F 0 "D401" V 1454 3479 50  0000 L CNN
F 1 "D_TVS" V 1545 3479 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 1500 3400 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 1500 3400 50  0001 C CNN
	1    1500 3400
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D402
U 1 1 5B9F5A8B
P 1850 3400
F 0 "D402" V 1804 3479 50  0000 L CNN
F 1 "D_TVS" V 1895 3479 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 1850 3400 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 1850 3400 50  0001 C CNN
	1    1850 3400
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D403
U 1 1 5B9F5ABD
P 2200 3400
F 0 "D403" V 2154 3479 50  0000 L CNN
F 1 "D_TVS" V 2245 3479 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 2200 3400 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 2200 3400 50  0001 C CNN
	1    2200 3400
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D404
U 1 1 5B9F5AF1
P 2550 3400
F 0 "D404" V 2504 3479 50  0000 L CNN
F 1 "D_TVS" V 2595 3479 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 2550 3400 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 2550 3400 50  0001 C CNN
	1    2550 3400
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D405
U 1 1 5B9F5B2B
P 3000 3400
F 0 "D405" V 2954 3479 50  0000 L CNN
F 1 "D_TVS" V 3045 3479 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 3000 3400 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 3000 3400 50  0001 C CNN
	1    3000 3400
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D406
U 1 1 5B9F5B63
P 3350 3400
F 0 "D406" V 3304 3479 50  0000 L CNN
F 1 "D_TVS" V 3395 3479 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 3350 3400 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CG0603MLC-33LEA?qs=sGAEpiMZZMvxHShE6Whpu%2fNaiK%252beSR6pmEqGPfI3QSY%3d" H 3350 3400 50  0001 C CNN
	1    3350 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3550 3000 3550
Connection ~ 1850 3550
Wire Wire Line
	1850 3550 1500 3550
Connection ~ 2200 3550
Wire Wire Line
	2200 3550 1850 3550
$Comp
L power:GND #PWR0404
U 1 1 5B9F5D37
P 2300 3550
F 0 "#PWR0404" H 2300 3300 50  0001 C CNN
F 1 "GND" V 2305 3422 50  0000 R CNN
F 2 "" H 2300 3550 50  0001 C CNN
F 3 "" H 2300 3550 50  0001 C CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
Connection ~ 2300 3550
Wire Wire Line
	2300 3550 2200 3550
Wire Wire Line
	4500 2250 3350 2250
Wire Wire Line
	1200 2350 3000 2350
Wire Wire Line
	4500 2450 2550 2450
Wire Wire Line
	4500 2650 2200 2650
Wire Wire Line
	1200 2850 1850 2850
Wire Wire Line
	4500 2950 1500 2950
Wire Wire Line
	4100 3050 4500 3050
Connection ~ 4100 3050
Wire Wire Line
	3950 3050 4100 3050
Connection ~ 3000 3550
Wire Wire Line
	1500 1950 1500 2950
Wire Wire Line
	2300 3550 2550 3550
Connection ~ 1500 2950
Wire Wire Line
	1500 2950 1200 2950
Wire Wire Line
	1500 2950 1500 3250
Wire Wire Line
	1850 1950 1850 2850
Connection ~ 1850 2850
Wire Wire Line
	1850 2850 4500 2850
Wire Wire Line
	1850 3250 1850 2850
Wire Wire Line
	2200 3250 2200 2650
Connection ~ 2200 2650
Wire Wire Line
	2200 2650 1200 2650
Wire Wire Line
	2200 1950 2200 2650
Wire Wire Line
	2550 1950 2550 2450
Connection ~ 2550 2450
Wire Wire Line
	2550 2450 1200 2450
Connection ~ 2550 3550
Wire Wire Line
	2550 3550 3000 3550
Wire Wire Line
	2550 3250 2550 2450
Wire Wire Line
	3000 3250 3000 2350
Connection ~ 3000 2350
Wire Wire Line
	3000 2350 4500 2350
Wire Wire Line
	3000 2350 3000 1950
Wire Wire Line
	3350 1950 3350 2250
Connection ~ 3350 2250
Wire Wire Line
	3350 2250 1200 2250
Wire Wire Line
	3350 2250 3350 3250
$EndSCHEMATC
