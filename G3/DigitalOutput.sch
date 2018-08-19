EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 29 31
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
L Device:Q_NPN_BCE Q?
U 1 1 5B6C08F9
P 1800 1150
AR Path="/5B62EDB8/5B6C08F9" Ref="Q?"  Part="1" 
AR Path="/5B62EDB8/5B6C04D0/5B6C08F9" Ref="Q2201"  Part="1" 
AR Path="/5B62EDB8/5B6C94C6/5B6C08F9" Ref="Q2301"  Part="1" 
AR Path="/5B62EDB8/5B6CA292/5B6C08F9" Ref="Q2401"  Part="1" 
AR Path="/5B62EDB8/5B6CB22A/5B6C08F9" Ref="Q2501"  Part="1" 
AR Path="/5B62EDB8/5B6CC0CE/5B6C08F9" Ref="Q2601"  Part="1" 
AR Path="/5B62EDB8/5B6CCE9A/5B6C08F9" Ref="Q2701"  Part="1" 
AR Path="/5B62EDB8/5B6CDC66/5B6C08F9" Ref="Q2801"  Part="1" 
AR Path="/5B62EDB8/5B6CEB95/5B6C08F9" Ref="Q2901"  Part="1" 
F 0 "Q2901" V 2000 1100 50  0000 L CNN
F 1 "ZXTN25050DFHTA" H 1200 1000 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2000 1250 50  0001 C CNN
F 3 "" H 1800 1150 50  0001 C CNN
	1    1800 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B6C0900
P 1900 1450
AR Path="/5B62EDB8/5B6C0900" Ref="#PWR?"  Part="1" 
AR Path="/5B62EDB8/5B6C04D0/5B6C0900" Ref="#PWR02201"  Part="1" 
AR Path="/5B62EDB8/5B6C94C6/5B6C0900" Ref="#PWR02301"  Part="1" 
AR Path="/5B62EDB8/5B6CA292/5B6C0900" Ref="#PWR02401"  Part="1" 
AR Path="/5B62EDB8/5B6CB22A/5B6C0900" Ref="#PWR02501"  Part="1" 
AR Path="/5B62EDB8/5B6CC0CE/5B6C0900" Ref="#PWR02601"  Part="1" 
AR Path="/5B62EDB8/5B6CCE9A/5B6C0900" Ref="#PWR02701"  Part="1" 
AR Path="/5B62EDB8/5B6CDC66/5B6C0900" Ref="#PWR02801"  Part="1" 
AR Path="/5B62EDB8/5B6CEB95/5B6C0900" Ref="#PWR02901"  Part="1" 
F 0 "#PWR02901" H 1900 1200 50  0001 C CNN
F 1 "GND" H 1905 1277 50  0000 C CNN
F 2 "" H 1900 1450 50  0001 C CNN
F 3 "" H 1900 1450 50  0001 C CNN
	1    1900 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B6C0906
P 1400 1150
AR Path="/5B62EDB8/5B6C0906" Ref="R?"  Part="1" 
AR Path="/5B62EDB8/5B6C04D0/5B6C0906" Ref="R2201"  Part="1" 
AR Path="/5B62EDB8/5B6C94C6/5B6C0906" Ref="R2301"  Part="1" 
AR Path="/5B62EDB8/5B6CA292/5B6C0906" Ref="R2401"  Part="1" 
AR Path="/5B62EDB8/5B6CB22A/5B6C0906" Ref="R2501"  Part="1" 
AR Path="/5B62EDB8/5B6CC0CE/5B6C0906" Ref="R2601"  Part="1" 
AR Path="/5B62EDB8/5B6CCE9A/5B6C0906" Ref="R2701"  Part="1" 
AR Path="/5B62EDB8/5B6CDC66/5B6C0906" Ref="R2801"  Part="1" 
AR Path="/5B62EDB8/5B6CEB95/5B6C0906" Ref="R2901"  Part="1" 
F 0 "R2901" V 1300 1150 50  0000 C CNN
F 1 "470" V 1400 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1330 1150 50  0001 C CNN
F 3 "" H 1400 1150 50  0001 C CNN
	1    1400 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 1450 1900 1350
Wire Wire Line
	1550 1150 1600 1150
Text HLabel 1200 1150 0    50   Input ~ 0
output_control
Wire Wire Line
	1250 1150 1200 1150
Text HLabel 2000 800  2    50   Output ~ 0
gnd_break
Wire Wire Line
	1900 950  1900 800 
Wire Wire Line
	1900 800  2000 800 
$EndSCHEMATC
