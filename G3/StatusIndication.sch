EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 24 36
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
L Device:R R2401
U 1 1 5B780F33
P 3000 1800
F 0 "R2401" V 2793 1800 50  0000 C CNN
F 1 "165" V 2884 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 1800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 3000 1800 50  0001 C CNN
	1    3000 1800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2401
U 1 1 5B780FD6
P 3400 1800
F 0 "D2401" H 3392 1545 50  0000 C CNN
F 1 "Green" H 3392 1636 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 3400 1800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103GD-FL?qs=sGAEpiMZZMtmwHDZQCdlqVsz6Sp3LtaXcNplsbJfBSw%3d" H 3400 1800 50  0001 C CNN
	1    3400 1800
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR02401
U 1 1 5B78108C
P 2850 1800
F 0 "#PWR02401" H 2850 1650 50  0001 C CNN
F 1 "+3V3" V 2865 1928 50  0000 L CNN
F 2 "" H 2850 1800 50  0001 C CNN
F 3 "" H 2850 1800 50  0001 C CNN
	1    2850 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 1800 3250 1800
Text HLabel 3750 1800 2    50   Input ~ 0
Green1
Wire Wire Line
	3550 1800 3750 1800
$Comp
L Device:LED D2409
U 1 1 5B781A9E
P 5500 1800
F 0 "D2409" H 5492 1545 50  0000 C CNN
F 1 "Red" H 5492 1636 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5500 1800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 5500 1800 50  0001 C CNN
	1    5500 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 1800 5350 1800
Wire Wire Line
	5650 1800 5850 1800
$Comp
L Device:R R2409
U 1 1 5B7821D4
P 5100 1800
F 0 "R2409" V 4893 1800 50  0000 C CNN
F 1 "165" V 4984 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 1800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 5100 1800 50  0001 C CNN
	1    5100 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R2402
U 1 1 5B78227E
P 3000 2200
F 0 "R2402" V 2793 2200 50  0000 C CNN
F 1 "165" V 2884 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 2200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 3000 2200 50  0001 C CNN
	1    3000 2200
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2402
U 1 1 5B782285
P 3400 2200
F 0 "D2402" H 3392 1945 50  0000 C CNN
F 1 "Green" H 3392 2036 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 3400 2200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103GD-FL?qs=sGAEpiMZZMtmwHDZQCdlqVsz6Sp3LtaXcNplsbJfBSw%3d" H 3400 2200 50  0001 C CNN
	1    3400 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 2200 3250 2200
Wire Wire Line
	3550 2200 3750 2200
$Comp
L Device:R R2403
U 1 1 5B782300
P 3000 2650
F 0 "R2403" V 2793 2650 50  0000 C CNN
F 1 "165" V 2884 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 2650 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 3000 2650 50  0001 C CNN
	1    3000 2650
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2403
U 1 1 5B782307
P 3400 2650
F 0 "D2403" H 3392 2395 50  0000 C CNN
F 1 "Green" H 3392 2486 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 3400 2650 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103GD-FL?qs=sGAEpiMZZMtmwHDZQCdlqVsz6Sp3LtaXcNplsbJfBSw%3d" H 3400 2650 50  0001 C CNN
	1    3400 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 2650 3250 2650
Wire Wire Line
	3550 2650 3750 2650
$Comp
L Device:R R2404
U 1 1 5B782445
P 3000 3150
F 0 "R2404" V 2793 3150 50  0000 C CNN
F 1 "165" V 2884 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 3150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 3000 3150 50  0001 C CNN
	1    3000 3150
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2404
U 1 1 5B78244C
P 3400 3150
F 0 "D2404" H 3392 2895 50  0000 C CNN
F 1 "Green" H 3392 2986 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 3400 3150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103GD-FL?qs=sGAEpiMZZMtmwHDZQCdlqVsz6Sp3LtaXcNplsbJfBSw%3d" H 3400 3150 50  0001 C CNN
	1    3400 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 3150 3250 3150
Wire Wire Line
	3550 3150 3750 3150
$Comp
L Device:R R2405
U 1 1 5B782544
P 3000 3600
F 0 "R2405" V 2793 3600 50  0000 C CNN
F 1 "165" V 2884 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 3600 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 3000 3600 50  0001 C CNN
	1    3000 3600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2405
U 1 1 5B78254B
P 3400 3600
F 0 "D2405" H 3392 3345 50  0000 C CNN
F 1 "Green" H 3392 3436 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 3400 3600 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103GD-FL?qs=sGAEpiMZZMtmwHDZQCdlqVsz6Sp3LtaXcNplsbJfBSw%3d" H 3400 3600 50  0001 C CNN
	1    3400 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 3600 3250 3600
Wire Wire Line
	3550 3600 3750 3600
$Comp
L Device:LED D2410
U 1 1 5B782D8A
P 5500 2200
F 0 "D2410" H 5492 1945 50  0000 C CNN
F 1 "Red" H 5492 2036 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5500 2200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 5500 2200 50  0001 C CNN
	1    5500 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 2200 5350 2200
Wire Wire Line
	5650 2200 5850 2200
$Comp
L Device:R R2410
U 1 1 5B782D93
P 5100 2200
F 0 "R2410" V 4893 2200 50  0000 C CNN
F 1 "165" V 4984 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 2200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 5100 2200 50  0001 C CNN
	1    5100 2200
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2411
U 1 1 5B7830C7
P 5500 2700
F 0 "D2411" H 5492 2445 50  0000 C CNN
F 1 "Red" H 5492 2536 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5500 2700 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 5500 2700 50  0001 C CNN
	1    5500 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 2700 5350 2700
Wire Wire Line
	5650 2700 5850 2700
$Comp
L Device:R R2411
U 1 1 5B7830D0
P 5100 2700
F 0 "R2411" V 4893 2700 50  0000 C CNN
F 1 "165" V 4984 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 2700 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 5100 2700 50  0001 C CNN
	1    5100 2700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2412
U 1 1 5B78347B
P 5500 3150
F 0 "D2412" H 5492 2895 50  0000 C CNN
F 1 "Red" H 5492 2986 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5500 3150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 5500 3150 50  0001 C CNN
	1    5500 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 3150 5350 3150
Wire Wire Line
	5650 3150 5850 3150
$Comp
L Device:R R2412
U 1 1 5B783484
P 5100 3150
F 0 "R2412" V 4893 3150 50  0000 C CNN
F 1 "165" V 4984 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 3150 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 5100 3150 50  0001 C CNN
	1    5100 3150
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2413
U 1 1 5B7838C9
P 5500 3600
F 0 "D2413" H 5492 3345 50  0000 C CNN
F 1 "Red" H 5492 3436 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5500 3600 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 5500 3600 50  0001 C CNN
	1    5500 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 3600 5350 3600
Wire Wire Line
	5650 3600 5850 3600
$Comp
L Device:R R2413
U 1 1 5B7838D2
P 5100 3600
F 0 "R2413" V 4893 3600 50  0000 C CNN
F 1 "165" V 4984 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 3600 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 5100 3600 50  0001 C CNN
	1    5100 3600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2414
U 1 1 5B783DB0
P 5500 4050
F 0 "D2414" H 5492 3795 50  0000 C CNN
F 1 "Red" H 5492 3886 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5500 4050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 5500 4050 50  0001 C CNN
	1    5500 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 4050 5350 4050
Wire Wire Line
	5650 4050 5850 4050
$Comp
L Device:R R2414
U 1 1 5B783DB9
P 5100 4050
F 0 "R2414" V 4893 4050 50  0000 C CNN
F 1 "165" V 4984 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 4050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 5100 4050 50  0001 C CNN
	1    5100 4050
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2415
U 1 1 5B784347
P 5500 4500
F 0 "D2415" H 5492 4245 50  0000 C CNN
F 1 "Red" H 5492 4336 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5500 4500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 5500 4500 50  0001 C CNN
	1    5500 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 4500 5350 4500
Wire Wire Line
	5650 4500 5850 4500
$Comp
L Device:R R2415
U 1 1 5B784350
P 5100 4500
F 0 "R2415" V 4893 4500 50  0000 C CNN
F 1 "165" V 4984 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 4500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 5100 4500 50  0001 C CNN
	1    5100 4500
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2416
U 1 1 5B7849A5
P 5500 5000
F 0 "D2416" H 5492 4745 50  0000 C CNN
F 1 "Red" H 5492 4836 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5500 5000 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103ID-FL?qs=sGAEpiMZZMtmwHDZQCdlqUPJk6OnVfwF%252bWo7zgs2%252bqE%3d" H 5500 5000 50  0001 C CNN
	1    5500 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 5000 5350 5000
Wire Wire Line
	5650 5000 5850 5000
$Comp
L Device:R R2416
U 1 1 5B7849AE
P 5100 5000
F 0 "R2416" V 4893 5000 50  0000 C CNN
F 1 "165" V 4984 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 5000 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 5100 5000 50  0001 C CNN
	1    5100 5000
	0    1    1    0   
$EndComp
Text HLabel 3750 2200 2    50   Input ~ 0
Green2
Text HLabel 3750 2650 2    50   Input ~ 0
Green3
Text HLabel 3750 3150 2    50   Input ~ 0
Green4
Text HLabel 3750 3600 2    50   Input ~ 0
Green5
Text HLabel 5850 1800 2    50   Input ~ 0
Red1
Text HLabel 5850 2200 2    50   Input ~ 0
Red2
Text HLabel 5850 2700 2    50   Input ~ 0
Red3
Text HLabel 5850 3150 2    50   Input ~ 0
Red4
Text HLabel 5850 3600 2    50   Input ~ 0
Red5
Text HLabel 5850 4050 2    50   Input ~ 0
Red6
Text HLabel 5850 4500 2    50   Input ~ 0
Red7
Text HLabel 5850 5000 2    50   Input ~ 0
Red8
Wire Wire Line
	2850 1800 2850 2200
Connection ~ 2850 1800
Connection ~ 2850 2200
Wire Wire Line
	2850 2200 2850 2650
Connection ~ 2850 2650
Wire Wire Line
	2850 2650 2850 3150
Connection ~ 2850 3150
Wire Wire Line
	2850 3150 2850 3600
$Comp
L power:+3V3 #PWR02402
U 1 1 5B787261
P 4950 1800
F 0 "#PWR02402" H 4950 1650 50  0001 C CNN
F 1 "+3V3" V 4965 1928 50  0000 L CNN
F 2 "" H 4950 1800 50  0001 C CNN
F 3 "" H 4950 1800 50  0001 C CNN
	1    4950 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 1800 4950 2200
Connection ~ 4950 1800
Connection ~ 4950 2200
Wire Wire Line
	4950 2200 4950 2700
Connection ~ 4950 2700
Wire Wire Line
	4950 2700 4950 3150
Connection ~ 4950 3150
Wire Wire Line
	4950 3150 4950 3600
Connection ~ 4950 3600
Wire Wire Line
	4950 3600 4950 4050
Connection ~ 4950 4050
Wire Wire Line
	4950 4050 4950 4500
Connection ~ 4950 4500
Wire Wire Line
	4950 4500 4950 5000
$Comp
L Device:R R2406
U 1 1 5BA06C46
P 3000 4050
F 0 "R2406" V 2793 4050 50  0000 C CNN
F 1 "165" V 2884 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 4050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 3000 4050 50  0001 C CNN
	1    3000 4050
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2406
U 1 1 5BA06C4D
P 3400 4050
F 0 "D2406" H 3392 3795 50  0000 C CNN
F 1 "Green" H 3392 3886 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 3400 4050 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103GD-FL?qs=sGAEpiMZZMtmwHDZQCdlqVsz6Sp3LtaXcNplsbJfBSw%3d" H 3400 4050 50  0001 C CNN
	1    3400 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 4050 3250 4050
Wire Wire Line
	3550 4050 3750 4050
Text HLabel 3750 4050 2    50   Input ~ 0
Green6
Wire Wire Line
	2850 3600 2850 4050
Connection ~ 2850 3600
$Comp
L Device:R R2407
U 1 1 5B9E7959
P 3000 4500
F 0 "R2407" V 2793 4500 50  0000 C CNN
F 1 "165" V 2884 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 4500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 3000 4500 50  0001 C CNN
	1    3000 4500
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2407
U 1 1 5B9E7960
P 3400 4500
F 0 "D2407" H 3392 4245 50  0000 C CNN
F 1 "Green" H 3392 4336 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 3400 4500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103GD-FL?qs=sGAEpiMZZMtmwHDZQCdlqVsz6Sp3LtaXcNplsbJfBSw%3d" H 3400 4500 50  0001 C CNN
	1    3400 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 4500 3250 4500
Wire Wire Line
	3550 4500 3750 4500
Text HLabel 3750 4500 2    50   Input ~ 0
Green7
Wire Wire Line
	2850 4050 2850 4500
$Comp
L Device:R R2408
U 1 1 5B9E796B
P 3000 4950
F 0 "R2408" V 2793 4950 50  0000 C CNN
F 1 "165" V 2884 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 4950 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/CR0805-FX-1650ELF?qs=sGAEpiMZZMtlubZbdhIBIKn39ibjI6WbHbnDBzjqA1U%3d" H 3000 4950 50  0001 C CNN
	1    3000 4950
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2408
U 1 1 5B9E7972
P 3400 4950
F 0 "D2408" H 3392 4695 50  0000 C CNN
F 1 "Green" H 3392 4786 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 3400 4950 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lumex/SSL-LX55103GD-FL?qs=sGAEpiMZZMtmwHDZQCdlqVsz6Sp3LtaXcNplsbJfBSw%3d" H 3400 4950 50  0001 C CNN
	1    3400 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 4950 3250 4950
Wire Wire Line
	3550 4950 3750 4950
Text HLabel 3750 4950 2    50   Input ~ 0
Green8
Wire Wire Line
	2850 4500 2850 4950
Connection ~ 2850 4500
Connection ~ 2850 4050
$EndSCHEMATC
