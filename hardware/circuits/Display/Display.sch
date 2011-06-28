EESchema Schematic File Version 2  date 28/06/2011 19:05:44
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
Date "28 jun 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6100 4000 6200 4000
Wire Wire Line
	6100 4400 6200 4400
Wire Wire Line
	6100 4800 6200 4800
Wire Wire Line
	6100 5200 6200 5200
Wire Wire Line
	6100 5600 6200 5600
Wire Wire Line
	6200 3350 6100 3350
Wire Wire Line
	6200 2950 6100 2950
Wire Wire Line
	6200 2550 6100 2550
Wire Wire Line
	6200 2150 6100 2150
Wire Wire Line
	6200 1750 6100 1750
Wire Wire Line
	6200 1550 6100 1550
Connection ~ 7600 3150
Connection ~ 7600 2950
Connection ~ 7600 2750
Connection ~ 7600 2550
Connection ~ 7600 2350
Connection ~ 7600 2150
Connection ~ 7600 1950
Connection ~ 7600 1750
Connection ~ 7600 1550
Connection ~ 5100 1100
Wire Wire Line
	1250 1100 7600 1100
Wire Wire Line
	7600 1100 7600 3350
Connection ~ 1950 1100
Wire Wire Line
	1950 1100 1950 800 
Wire Wire Line
	1250 1200 1650 1200
Wire Wire Line
	1650 1200 1650 1950
Wire Wire Line
	1650 1950 2200 1950
Connection ~ 2050 1100
Connection ~ 2050 2550
Wire Wire Line
	2050 2550 2050 2350
Wire Wire Line
	2050 3600 2050 3150
Wire Wire Line
	2200 3350 800  3350
Wire Wire Line
	1400 2550 1300 2550
Wire Wire Line
	2200 2750 1350 2750
Connection ~ 2050 1550
Wire Wire Line
	2200 1750 2050 1750
Wire Wire Line
	2050 1750 2050 1100
Wire Wire Line
	3600 1750 3700 1750
Wire Wire Line
	3600 2350 3700 2350
Wire Wire Line
	3600 2750 3700 2750
Wire Wire Line
	3600 3150 3700 3150
Wire Wire Line
	3600 3350 3700 3350
Wire Wire Line
	3600 2950 3700 2950
Wire Wire Line
	3600 2550 3700 2550
Wire Wire Line
	3600 2150 3700 2150
Wire Wire Line
	3600 1950 3700 1950
Wire Wire Line
	3600 1550 3700 1550
Wire Wire Line
	1900 2550 2200 2550
Wire Wire Line
	2050 2350 2200 2350
Wire Wire Line
	2050 3150 2200 3150
Connection ~ 2050 3350
Wire Wire Line
	1350 2750 1350 2550
Connection ~ 1350 2550
Wire Wire Line
	5100 3350 5100 1100
Connection ~ 5100 1750
Connection ~ 5100 2150
Connection ~ 5100 2550
Connection ~ 5100 2950
Wire Wire Line
	800  3350 800  2350
Wire Wire Line
	800  2350 1450 2350
Wire Wire Line
	1450 2350 1450 1300
Wire Wire Line
	1450 1300 1250 1300
Connection ~ 800  2550
Connection ~ 2050 3600
Connection ~ 2050 3350
Connection ~ 2050 3350
Wire Wire Line
	2200 1550 2050 1550
Wire Bus Line
	6000 1650 6000 5700
Wire Wire Line
	6200 1950 6100 1950
Wire Wire Line
	6200 2350 6100 2350
Wire Wire Line
	6200 2750 6100 2750
Wire Wire Line
	6200 3150 6100 3150
Wire Wire Line
	6100 5800 6200 5800
Wire Wire Line
	6100 5400 6200 5400
Wire Wire Line
	6100 5000 6200 5000
Wire Wire Line
	6100 4600 6200 4600
Wire Wire Line
	6100 4200 6200 4200
Entry Wire Line
	6000 5700 6100 5800
Entry Wire Line
	6000 5500 6100 5600
Entry Wire Line
	6000 5300 6100 5400
Entry Wire Line
	6000 5100 6100 5200
Entry Wire Line
	6000 4900 6100 5000
Entry Wire Line
	6000 4700 6100 4800
Entry Wire Line
	6000 4500 6100 4600
Entry Wire Line
	6000 4300 6100 4400
Entry Wire Line
	6000 4100 6100 4200
Entry Wire Line
	6000 3900 6100 4000
Entry Wire Line
	6000 3450 6100 3350
Entry Wire Line
	6000 3250 6100 3150
Entry Wire Line
	6000 3050 6100 2950
Entry Wire Line
	6000 2850 6100 2750
Entry Wire Line
	6000 2650 6100 2550
Entry Wire Line
	6000 2450 6100 2350
Entry Wire Line
	6000 2250 6100 2150
Entry Wire Line
	6000 2050 6100 1950
Entry Wire Line
	6000 1850 6100 1750
Entry Wire Line
	6000 1650 6100 1550
$Comp
L LM3914 IC?
U 1 1 4E0A12DC
P 6900 3900
F 0 "IC?" H 6900 3800 60  0000 C CNN
F 1 "LM3914" H 6900 5950 60  0000 C CNN
	1    6900 3900
	-1   0    0    1   
$EndComp
$Comp
L 10SEGDISP BAR?
U 1 1 4E0A12D2
P 6900 1450
F 0 "BAR?" H 6900 3550 60  0000 C CNN
F 1 "10SEGDISP" H 6900 1400 60  0000 C CNN
	1    6900 1450
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR01
U 1 1 4E097CFF
P 1950 800
F 0 "#PWR01" H 1950 890 20  0001 C CNN
F 1 "+5V" H 1950 890 30  0000 C CNN
	1    1950 800 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4E07AD97
P 2050 3600
F 0 "#PWR02" H 2050 3600 30  0001 C CNN
F 1 "GND" H 2050 3530 30  0001 C CNN
	1    2050 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K1
U 1 1 4E07AA60
P 900 1200
F 0 "K1" V 850 1200 50  0000 C CNN
F 1 "CONN_3" V 950 1200 40  0000 C CNN
	1    900  1200
	-1   0    0    1   
$EndComp
$Comp
L 10SEGDISP BAR1
U 1 1 4E079618
P 4400 1450
F 0 "BAR1" H 4400 3550 60  0000 C CNN
F 1 "10SEGDISP" H 4400 1400 60  0000 C CNN
	1    4400 1450
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 4E0774EA
P 1050 2550
F 0 "R2" V 1130 2550 50  0000 C CNN
F 1 "3.83k" V 1050 2550 50  0000 C CNN
	1    1050 2550
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 4E0774AA
P 1650 2550
F 0 "R1" V 1730 2550 50  0000 C CNN
F 1 "1.21k" V 1650 2550 50  0000 C CNN
	1    1650 2550
	0    1    1    0   
$EndComp
$Comp
L LM3914 IC1
U 1 1 4E076E05
P 2900 3450
F 0 "IC1" H 2900 3350 60  0000 C CNN
F 1 "LM3914" H 2900 5500 60  0000 C CNN
	1    2900 3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
