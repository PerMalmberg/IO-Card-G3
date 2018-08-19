EESchema Schematic File Version 4
LIBS:G3-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 31
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3600 1300 950  450 
U 5B61ECB9
F0 "Power" 50
F1 "Power.sch" 50
F2 "+12V_IN" I L 3600 1400 50 
F3 "GND_IN" I L 3600 1500 50 
$EndSheet
$Sheet
S 3600 2050 950  400 
U 5B61FB63
F0 "MCU" 50
F1 "MCU.sch" 50
$EndSheet
$Sheet
S 3600 2750 950  300 
U 5B61F011
F0 "AnalogInput" 50
F1 "AnalogInput.sch" 50
$EndSheet
$Sheet
S 3600 3300 950  400 
U 5B62EDB8
F0 "DigitalIO" 50
F1 "DigitalIO.sch" 50
$EndSheet
$Sheet
S 3600 3950 950  350 
U 5B72552B
F0 "Connectors" 50
F1 "Connectors.sch" 50
$EndSheet
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J101
U 1 1 5B73A019
P 2900 1500
F 0 "J101" H 2950 1175 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 2950 1266 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mega-Fit_76825-0004_2x02_P5.70mm_Horizontal" H 2900 1500 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Molex/76825-0002?qs=%2fha2pyFadug9gwVXW%252b6PjoTJPsbwjZb7D5oQ430PjGyxKDLr9emXmA%3d%3d" H 2900 1500 50  0001 C CNN
	1    2900 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 1500 3600 1500
Wire Wire Line
	3600 1400 3100 1400
NoConn ~ 2600 1400
NoConn ~ 2600 1500
$EndSCHEMATC
