EESchema Schematic File Version 2  date 26/06/2011 23:12:31
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
LIBS:special
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
LIBS:EnigmaMon
LIBS:Display-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "26 jun 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 4E07AD97
P 5450 3950
F 0 "#PWR01" H 5450 3950 30  0001 C CNN
F 1 "GND" H 5450 3880 30  0001 C CNN
	1    5450 3950
	1    0    0    -1  
$EndComp
Connection ~ 5250 2300
Wire Wire Line
	4650 1550 5050 1550
Wire Wire Line
	5050 1550 5050 2300
Wire Wire Line
	5050 2300 5600 2300
Connection ~ 5450 1450
Wire Wire Line
	5250 1450 5250 1800
Connection ~ 8500 3500
Wire Wire Line
	8400 3500 8500 3500
Connection ~ 8500 3100
Wire Wire Line
	8400 3100 8500 3100
Connection ~ 8500 2700
Wire Wire Line
	8400 2700 8500 2700
Connection ~ 8500 2300
Wire Wire Line
	8400 2300 8500 2300
Connection ~ 8500 1900
Wire Wire Line
	8400 1900 8500 1900
Connection ~ 5450 2900
Wire Wire Line
	5450 2900 5450 2700
Wire Wire Line
	5450 3950 5450 3500
Wire Wire Line
	5600 3700 4200 3700
Wire Wire Line
	4700 2900 4800 2900
Wire Wire Line
	5600 3100 4750 3100
Connection ~ 5450 1900
Wire Wire Line
	5600 2100 5450 2100
Wire Wire Line
	5450 2100 5450 1450
Wire Wire Line
	7000 2100 7100 2100
Wire Wire Line
	7000 2700 7100 2700
Wire Wire Line
	7000 3100 7100 3100
Wire Wire Line
	7000 3500 7100 3500
Wire Wire Line
	7000 3700 7100 3700
Wire Wire Line
	7000 3300 7100 3300
Wire Wire Line
	7000 2900 7100 2900
Wire Wire Line
	7000 2500 7100 2500
Wire Wire Line
	7000 2300 7100 2300
Wire Wire Line
	7000 1900 7100 1900
Wire Wire Line
	5600 1900 5450 1900
Wire Wire Line
	5600 2900 5300 2900
Wire Wire Line
	5450 2700 5600 2700
Wire Wire Line
	5450 3500 5600 3500
Connection ~ 5450 3700
Wire Wire Line
	4750 3100 4750 2900
Connection ~ 4750 2900
Wire Wire Line
	8400 3700 8500 3700
Wire Wire Line
	8500 3700 8500 1450
Wire Wire Line
	8400 2100 8500 2100
Connection ~ 8500 2100
Wire Wire Line
	8400 2500 8500 2500
Connection ~ 8500 2500
Wire Wire Line
	8400 2900 8500 2900
Connection ~ 8500 2900
Wire Wire Line
	8400 3300 8500 3300
Connection ~ 8500 3300
Wire Wire Line
	8500 1450 4650 1450
Connection ~ 5250 1450
Wire Wire Line
	4200 3700 4200 2700
Wire Wire Line
	4200 2700 4850 2700
Wire Wire Line
	4850 2700 4850 1650
Wire Wire Line
	4850 1650 4650 1650
Connection ~ 4200 2900
Connection ~ 5600 1900
Connection ~ 5450 3950
Connection ~ 5450 3700
Connection ~ 5450 3700
$Comp
L CONN_3 K1
U 1 1 4E07AA60
P 4300 1550
F 0 "K1" V 4250 1550 50  0000 C CNN
F 1 "CONN_3" V 4350 1550 40  0000 C CNN
	1    4300 1550
	-1   0    0    1   
$EndComp
$Comp
L RVAR R3
U 1 1 4E079A0A
P 5250 2050
F 0 "R3" V 5330 2000 50  0000 C CNN
F 1 "RVAR" V 5170 2110 50  0000 C CNN
	1    5250 2050
	1    0    0    -1  
$EndComp
$Comp
L 10SEGDISP BAR1
U 1 1 4E079618
P 7750 1800
F 0 "BAR1" H 7750 3900 60  0000 C CNN
F 1 "10SEGDISP" H 7750 1750 60  0000 C CNN
	1    7750 1800
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 4E0774EA
P 4450 2900
F 0 "R2" V 4530 2900 50  0000 C CNN
F 1 "3.83k" V 4450 2900 50  0000 C CNN
	1    4450 2900
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 4E0774AA
P 5050 2900
F 0 "R1" V 5130 2900 50  0000 C CNN
F 1 "1.21k" V 5050 2900 50  0000 C CNN
	1    5050 2900
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR02
U 1 1 4E077330
P 5450 1450
F 0 "#PWR02" H 5450 1550 30  0001 C CNN
F 1 "VCC" H 5450 1550 30  0000 C CNN
	1    5450 1450
	1    0    0    -1  
$EndComp
$Comp
L LM3914 IC1
U 1 1 4E076E05
P 6300 3800
F 0 "IC1" H 6300 3700 60  0000 C CNN
F 1 "LM3914" H 6300 5850 60  0000 C CNN
	1    6300 3800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
