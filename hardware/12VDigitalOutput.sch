EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 26 34
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2450 3250 0    50   Input ~ 0
CTRL
Text HLabel 5150 3000 2    50   Input ~ 0
Output
Text GLabel 2350 2350 0    50   Input ~ 0
12V_PWR
$Comp
L Device:Fuse F?
U 1 1 5C42DB50
P 3300 2350
AR Path="/5B61ECB9/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B72552B/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5B6C04D0/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5B8EE9B3/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA1CD69/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA1DF84/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA1E7D8/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA1F02C/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA1F880/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA200D4/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA20928/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA2A1B9/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA2AE80/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DB50" Ref="F?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DB50" Ref="F2602"  Part="1" 
F 0 "F2602" V 3103 2350 50  0000 C CNN
F 1 "xA" V 3194 2350 50  0000 C CNN
F 2 "Fuse:Fuseholder_TR5_Littlefuse_No560_No460" V 3230 2350 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Littelfuse/56000001019?qs=sGAEpiMZZMtRmoYvq3OwzKEcK5xXAR8uiSqvDZfRA1w%3d" H 3300 2350 50  0001 C CNN
	1    3300 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2350 2350 2350
$Comp
L Device:R R?
U 1 1 5C42DB58
P 3550 3500
AR Path="/5B62EDB8/5B780EE8/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8EE9B3/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B6C04D0/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1CD69/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1DF84/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1E7D8/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1F02C/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1F880/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA200D4/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA20928/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2A1B9/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2AE80/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DB58" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DB58" Ref="R2602"  Part="1" 
F 0 "R2602" V 3450 3500 50  0000 C CNN
F 1 "1.65k" V 3550 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 3500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Vishay/CRCW08051K65FKEA?qs=sGAEpiMZZMtlubZbdhIBIFvv2%252blmU1cYk%2fKBbkOVYDU%3d" H 3550 3500 50  0001 C CNN
	1    3550 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5C42DB5F
P 3550 3800
AR Path="/5B62EDB8/5B780EE8/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B6C04D0/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5B8EE9B3/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA1CD69/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA1DF84/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA1E7D8/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA1F02C/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA1F880/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA200D4/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA20928/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2A1B9/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2AE80/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DB5F" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DB5F" Ref="D2602"  Part="1" 
F 0 "D2602" H 3600 3900 50  0000 C CNN
F 1 "Green" H 3350 3900 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 3550 3800 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Lite-On/LTL2R3KGD-EM?qs=sGAEpiMZZMtmwHDZQCdlqY3QuPVQdrfivxVgVo2hFbg%3d" H 3550 3800 50  0001 C CNN
	1    3550 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C42DB66
P 3550 3950
AR Path="/5B62EDB8/5B6C04D0/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8EE9B3/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1CD69/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1DF84/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1E7D8/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1F02C/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1F880/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA200D4/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA20928/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2A1B9/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2AE80/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DB66" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DB66" Ref="#PWR02603"  Part="1" 
F 0 "#PWR02603" H 3550 3700 50  0001 C CNN
F 1 "GND" H 3555 3777 50  0000 C CNN
F 2 "" H 3550 3950 50  0001 C CNN
F 3 "" H 3550 3950 50  0001 C CNN
	1    3550 3950
	1    0    0    -1  
$EndComp
$Comp
L PerMalmberg:Si2312CD Q?
U 1 1 5C42DB6C
P 4200 3250
AR Path="/5B62EDB8/5BA2AE80/5C42DB6C" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DB6C" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DB6C" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DB6C" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DB6C" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DB6C" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DB6C" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DB6C" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DB6C" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DB6C" Ref="Q2601"  Part="1" 
F 0 "Q2601" H 4200 3050 50  0000 C CNN
F 1 "Si2312CD" H 4550 3250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4160 3255 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/427/SI2312CD-244454.pdf" H 4160 3255 50  0001 C CNN
	1    4200 3250
	1    0    0    1   
$EndComp
$Comp
L PerMalmberg:Si2323CDS Q?
U 1 1 5C42DB73
P 4950 2900
AR Path="/5B62EDB8/5BA2AE80/5C42DB73" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DB73" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DB73" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DB73" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DB73" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DB73" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DB73" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DB73" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DB73" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DB73" Ref="Q2602"  Part="1" 
F 0 "Q2602" H 4950 3100 50  0000 C CNN
F 1 "Si2323CDS" H 4950 2700 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4950 2900 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/427/si2323cds-244519.pdf" H 4950 2900 50  0001 C CNN
	1    4950 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C42DB7A
P 4550 2900
AR Path="/5B62EDB8/5BA2AE80/5C42DB7A" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DB7A" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DB7A" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DB7A" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DB7A" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DB7A" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DB7A" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DB7A" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DB7A" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DB7A" Ref="R2606"  Part="1" 
F 0 "R2606" H 4350 2950 50  0000 C CNN
F 1 "470" V 4550 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4480 2900 50  0001 C CNN
F 3 "~" H 4550 2900 50  0001 C CNN
	1    4550 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C42DB81
P 4400 2600
AR Path="/5B62EDB8/5BA2AE80/5C42DB81" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DB81" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DB81" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DB81" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DB81" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DB81" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DB81" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DB81" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DB81" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DB81" Ref="R2605"  Part="1" 
F 0 "R2605" V 4300 2500 50  0000 L CNN
F 1 "2.2k" V 4400 2500 50  0000 L CNN
F 2 "" V 4330 2600 50  0001 C CNN
F 3 "~" H 4400 2600 50  0001 C CNN
	1    4400 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C42DB88
P 3950 3750
AR Path="/5B62EDB8/5B6C04D0/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8EE9B3/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1CD69/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1DF84/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1E7D8/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1F02C/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1F880/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA200D4/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA20928/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2A1B9/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2AE80/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DB88" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DB88" Ref="#PWR02605"  Part="1" 
F 0 "#PWR02605" H 3950 3500 50  0001 C CNN
F 1 "GND" H 3955 3577 50  0000 C CNN
F 2 "" H 3950 3750 50  0001 C CNN
F 3 "" H 3950 3750 50  0001 C CNN
	1    3950 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C42DB8E
P 3200 3400
AR Path="/5B62EDB8/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8B425B/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8BDF9E/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8CC011/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8CD7E8/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B6C04D0/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8DFA1F/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8D6A51/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8D8275/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8D9A4C/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8DB29A/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8DCA71/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8DE248/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8EE9B3/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8F19D7/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8F31AE/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B8F4985/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA037E0/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B9EF457/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B9F3247/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1CD69/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1DF84/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1E7D8/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1F02C/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA1F880/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA200D4/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA20928/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2A1B9/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2AE80/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DB8E" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DB8E" Ref="R2601"  Part="1" 
F 0 "R2601" H 3270 3446 50  0000 L CNN
F 1 "10k" H 3270 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3130 3400 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Panasonic-Industrial-Devices/ERJ-6ENF1002V?qs=sGAEpiMZZMu61qfTUdNhGzRxdwze5h8ZcGDx6geba20%3d" H 3200 3400 50  0001 C CNN
	1    3200 3400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C42DB95
P 3200 3550
AR Path="/5B62EDB8/5B6C04D0/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B8EE9B3/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1CD69/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1DF84/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1E7D8/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1F02C/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA1F880/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA200D4/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA20928/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2A1B9/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2AE80/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DB95" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DB95" Ref="#PWR02602"  Part="1" 
F 0 "#PWR02602" H 3200 3300 50  0001 C CNN
F 1 "GND" H 3205 3377 50  0000 C CNN
F 2 "" H 3200 3550 50  0001 C CNN
F 3 "" H 3200 3550 50  0001 C CNN
	1    3200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2350 4400 2350
Wire Wire Line
	4700 2900 4700 2650
Connection ~ 4700 2900
Wire Wire Line
	4400 2450 4400 2350
Connection ~ 4400 2350
$Comp
L Device:D_Zener D?
U 1 1 5C42DBA0
P 3950 3600
AR Path="/5B62EDB8/5BA2AE80/5C42DBA0" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DBA0" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DBA0" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DBA0" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DBA0" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DBA0" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DBA0" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DBA0" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DBA0" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DBA0" Ref="D2603"  Part="1" 
F 0 "D2603" V 3904 3679 50  0000 L CNN
F 1 "CZRQR52C6V8-HF" V 3995 3679 50  0000 L CNN
F 2 "Diode_SMD:D_0402_1005Metric" H 3950 3600 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/80/CZRQR52C2-HF_THRU_CZRQR52C39-HF-RevB-1481380.pdf" H 3950 3600 50  0001 C CNN
	1    3950 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 3250 3950 3450
$Comp
L Device:R R?
U 1 1 5C42DBA8
P 3800 3250
AR Path="/5B62EDB8/5BA2AE80/5C42DBA8" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DBA8" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DBA8" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DBA8" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DBA8" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DBA8" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DBA8" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DBA8" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DBA8" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DBA8" Ref="R2604"  Part="1" 
F 0 "R2604" V 3700 3250 50  0000 C CNN
F 1 "470" V 3800 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3730 3250 50  0001 C CNN
F 3 "~" H 3800 3250 50  0001 C CNN
	1    3800 3250
	0    1    1    0   
$EndComp
Connection ~ 3950 3250
Wire Wire Line
	4400 2350 4700 2350
$Comp
L Device:D_Zener D?
U 1 1 5C42DBB1
P 4700 2500
AR Path="/5B62EDB8/5BA2AE80/5C42DBB1" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2C5A2/5C42DBB1" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2CB1A/5C42DBB1" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2D092/5C42DBB1" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2D691/5C42DBB1" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2DC09/5C42DBB1" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2E181/5C42DBB1" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA2E71A/5C42DBB1" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA3564E/5C42DBB1" Ref="D?"  Part="1" 
AR Path="/5B62EDB8/5BA35DC6/5C42DBB1" Ref="D2604"  Part="1" 
F 0 "D2604" V 4654 2579 50  0000 L CNN
F 1 "CZRQR52C6V8-HF" V 4745 2579 50  0000 L CNN
F 2 "Diode_SMD:D_0402_1005Metric" H 4700 2500 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/80/CZRQR52C2-HF_THRU_CZRQR52C39-HF-RevB-1481380.pdf" H 4700 2500 50  0001 C CNN
	1    4700 2500
	0    1    1    0   
$EndComp
Connection ~ 4700 2350
Wire Wire Line
	4400 2750 4400 2900
Wire Wire Line
	3550 3350 3550 3250
Connection ~ 3550 3250
Wire Wire Line
	3550 3250 3650 3250
Connection ~ 3200 3250
Wire Wire Line
	3200 3250 3550 3250
Wire Wire Line
	2450 3250 3200 3250
Wire Wire Line
	4400 3150 4400 2900
Connection ~ 4400 2900
Text Notes 3050 1950 0    50   ~ 0
Zener diodes and stop resisitors must be placed as close\nto mosfets as possible with shortest possible traces to reduce\noscillation and reduce capacitance.
Wire Wire Line
	5150 2800 5550 2800
Wire Wire Line
	5550 2800 5550 2350
Wire Wire Line
	4700 2350 5500 2350
Wire Wire Line
	4400 3350 4850 3350
Wire Wire Line
	4850 3350 4850 3750
Wire Wire Line
	4850 3750 3950 3750
Connection ~ 3950 3750
$Comp
L power:PWR_FLAG #FLG0110
U 1 1 5C4383EE
P 5500 2350
F 0 "#FLG0110" H 5500 2425 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 2524 50  0000 C CNN
F 2 "" H 5500 2350 50  0001 C CNN
F 3 "~" H 5500 2350 50  0001 C CNN
	1    5500 2350
	1    0    0    -1  
$EndComp
Connection ~ 5500 2350
Wire Wire Line
	5500 2350 5550 2350
$EndSCHEMATC
