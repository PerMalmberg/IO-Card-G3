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
LIBS:G2-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 4300 2500 2    60   Input ~ 0
I2C_SCL
Text GLabel 4300 2600 2    60   Input ~ 0
I2C_SDA
$Comp
L R R?
U 1 1 59C691B1
P 4050 2350
F 0 "R?" H 4120 2396 50  0000 L CNN
F 1 "10k" H 4120 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 3980 2350 50  0001 C CNN
F 3 "" H 4050 2350 50  0001 C CNN
	1    4050 2350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59C69221
P 3750 2350
F 0 "R?" H 3820 2396 50  0000 L CNN
F 1 "10k" H 3820 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 3680 2350 50  0001 C CNN
F 3 "" H 3750 2350 50  0001 C CNN
	1    3750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2500 4050 2500
Wire Wire Line
	4300 2600 3750 2600
Wire Wire Line
	3750 2600 3750 2500
$EndSCHEMATC
