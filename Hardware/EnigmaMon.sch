EESchema Schematic File Version 2  date 29/06/2011 22:44:21
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
LIBS:Sensor-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "29 jun 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 1700 850 
$Comp
L PWR_FLAG #FLG2
U 1 1 4E0B9AAF
P 1700 850
F 0 "#FLG2" H 1700 1120 30  0001 C CNN
F 1 "PWR_FLAG" H 1700 1080 30  0000 C CNN
	1    1700 850 
	1    0    0    -1  
$EndComp
Connection ~ 1400 850 
$Comp
L VCC #PWR1
U 1 1 4E0B9A51
P 1400 850
F 0 "#PWR1" H 1400 950 30  0001 C CNN
F 1 "VCC" H 1400 950 30  0000 C CNN
	1    1400 850 
	1    0    0    -1  
$EndComp
Connection ~ 1400 1050
Wire Wire Line
	1400 1050 1400 1100
Wire Wire Line
	3300 850  3300 1400
Wire Wire Line
	3300 850  1300 850 
Wire Wire Line
	4200 2000 4100 2000
Wire Wire Line
	4100 2000 4100 1750
Wire Wire Line
	4100 1750 3200 1750
Wire Wire Line
	3200 2300 4200 2300
Wire Wire Line
	3200 2100 4200 2100
Wire Wire Line
	3300 1400 3200 1400
Connection ~ 1900 2900
Wire Wire Line
	2000 2900 1900 2900
Connection ~ 1900 2700
Wire Wire Line
	1900 2700 2000 2700
Connection ~ 1900 2500
Wire Wire Line
	1900 2500 2000 2500
Wire Wire Line
	1900 2400 1900 3150
Wire Wire Line
	1900 2400 2000 2400
Wire Wire Line
	1300 2200 2000 2200
Wire Wire Line
	1300 2000 2000 2000
Wire Wire Line
	1300 1800 2000 1800
Wire Wire Line
	2000 1400 1300 1400
Wire Wire Line
	2000 1500 1300 1500
Wire Wire Line
	1300 1600 2000 1600
Wire Wire Line
	1300 1700 2000 1700
Wire Wire Line
	1300 1900 2000 1900
Wire Wire Line
	1300 2100 2000 2100
Wire Wire Line
	1300 2300 2000 2300
Wire Wire Line
	1900 3150 2350 3150
Wire Wire Line
	3300 3150 2850 3150
Connection ~ 3300 3150
Wire Wire Line
	1900 2600 2000 2600
Connection ~ 1900 2600
Wire Wire Line
	1900 2800 2000 2800
Connection ~ 1900 2800
Wire Wire Line
	3200 2900 3300 2900
Wire Wire Line
	3200 2200 4200 2200
Wire Wire Line
	3200 2400 4200 2400
Wire Wire Line
	3200 2800 3300 2800
Wire Wire Line
	3300 2800 3300 3350
Connection ~ 3300 2900
Wire Wire Line
	1300 1050 1550 1050
$Comp
L GND #PWR2
U 1 1 4E0B9A3A
P 1400 1100
F 0 "#PWR2" H 1400 1100 30  0001 C CNN
F 1 "GND" H 1400 1030 30  0001 C CNN
	1    1400 1100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 4E0B9A25
P 1550 1050
F 0 "#FLG1" H 1550 1320 30  0001 C CNN
F 1 "PWR_FLAG" H 1550 1280 30  0000 C CNN
	1    1550 1050
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P3
U 1 1 4E0B9648
P 950 950
F 0 "P3" V 900 950 40  0000 C CNN
F 1 "CONN_2" V 1000 950 40  0000 C CNN
	1    950  950 
	-1   0    0    1   
$EndComp
NoConn ~ 4200 2500
$Comp
L CONN_6 P2
U 1 1 4E0B92B0
P 4550 2250
F 0 "P2" V 4500 2250 60  0000 C CNN
F 1 "CONTROLLER" V 4600 2250 60  0000 C CNN
	1    4550 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 4E0B91E6
P 3300 3350
F 0 "#PWR3" H 3300 3350 30  0001 C CNN
F 1 "GND" H 3300 3280 30  0001 C CNN
	1    3300 3350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4E0B916E
P 2600 3150
F 0 "R1" V 2680 3150 50  0000 C CNN
F 1 "R" V 2600 3150 50  0000 C CNN
	1    2600 3150
	0    1    1    0   
$EndComp
$Comp
L CD74HC4067 M1
U 1 1 4E0B90E6
P 2600 3000
F 0 "M1" H 2600 2950 60  0000 C CNN
F 1 "CD74HC4067" H 2600 4800 60  0000 C CNN
	1    2600 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_10 P1
U 1 1 4E0B848E
P 950 1850
F 0 "P1" V 900 1850 60  0000 C CNN
F 1 "FAN_SENSORS" V 1000 1850 60  0000 C CNN
	1    950  1850
	-1   0    0    1   
$EndComp
$EndSCHEMATC
