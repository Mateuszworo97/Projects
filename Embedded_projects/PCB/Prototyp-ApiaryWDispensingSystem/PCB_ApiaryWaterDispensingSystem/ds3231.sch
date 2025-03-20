EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Timer_RTC:DS3231M U?
U 1 1 67D4ABC5
P 4150 2300
F 0 "U?" H 4150 1811 50  0000 C CNN
F 1 "DS3231M" H 4150 1720 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 4150 1700 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 4420 2350 50  0001 C CNN
	1    4150 2300
	1    0    0    -1  
$EndComp
Text HLabel 2600 2100 0    50   BiDi ~ 10
SDA
Text HLabel 2600 2200 0    50   BiDi ~ 10
SCL
Wire Wire Line
	2600 2100 2850 2100
Wire Wire Line
	2600 2200 3350 2200
$Comp
L power:+3.3V #PWR?
U 1 1 67D4B950
P 2850 1550
F 0 "#PWR?" H 2850 1400 50  0001 C CNN
F 1 "+3.3V" H 2865 1723 50  0000 C CNN
F 2 "" H 2850 1550 50  0001 C CNN
F 3 "" H 2850 1550 50  0001 C CNN
	1    2850 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67D4C7E4
P 2850 1850
F 0 "R?" H 2920 1896 50  0000 L CNN
F 1 "R" H 2920 1805 50  0000 L CNN
F 2 "" V 2780 1850 50  0001 C CNN
F 3 "~" H 2850 1850 50  0001 C CNN
	1    2850 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67D4CD68
P 3350 1850
F 0 "R?" H 3420 1896 50  0000 L CNN
F 1 "R" H 3420 1805 50  0000 L CNN
F 2 "" V 3280 1850 50  0001 C CNN
F 3 "~" H 3350 1850 50  0001 C CNN
	1    3350 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 67D4D759
P 3350 1550
F 0 "#PWR?" H 3350 1400 50  0001 C CNN
F 1 "+3.3V" H 3365 1723 50  0000 C CNN
F 2 "" H 3350 1550 50  0001 C CNN
F 3 "" H 3350 1550 50  0001 C CNN
	1    3350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1550 3350 1700
Wire Wire Line
	2850 1550 2850 1700
Wire Wire Line
	3350 2000 3350 2200
Connection ~ 3350 2200
Wire Wire Line
	3350 2200 3650 2200
Wire Wire Line
	2850 2000 2850 2100
Connection ~ 2850 2100
Wire Wire Line
	2850 2100 3650 2100
$Comp
L power:+3.3V #PWR?
U 1 1 67D4E539
P 4050 1550
F 0 "#PWR?" H 4050 1400 50  0001 C CNN
F 1 "+3.3V" H 4065 1723 50  0000 C CNN
F 2 "" H 4050 1550 50  0001 C CNN
F 3 "" H 4050 1550 50  0001 C CNN
	1    4050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1900 4050 1550
$EndSCHEMATC
