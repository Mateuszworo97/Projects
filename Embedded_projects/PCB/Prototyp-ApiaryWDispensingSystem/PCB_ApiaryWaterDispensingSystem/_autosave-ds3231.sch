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
F 0 "U?" H 4500 1950 50  0000 C CNN
F 1 "DS3231M" H 4500 1800 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 4150 1700 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 4420 2350 50  0001 C CNN
	1    4150 2300
	1    0    0    -1  
$EndComp
Text HLabel 950  1000 0    50   BiDi ~ 10
SDA
Text HLabel 950  1150 0    50   BiDi ~ 10
SCL
Wire Wire Line
	2600 2100 2850 2100
Wire Wire Line
	2600 2200 3350 2200
$Comp
L power:+3.3V #PWR?
U 1 1 67D4B950
P 2850 1250
F 0 "#PWR?" H 2850 1100 50  0001 C CNN
F 1 "+3.3V" H 2865 1423 50  0000 C CNN
F 2 "" H 2850 1250 50  0001 C CNN
F 3 "" H 2850 1250 50  0001 C CNN
	1    2850 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67D4C7E4
P 2850 1650
F 0 "R?" H 2920 1696 50  0000 L CNN
F 1 "R" H 2920 1605 50  0000 L CNN
F 2 "" V 2780 1650 50  0001 C CNN
F 3 "~" H 2850 1650 50  0001 C CNN
	1    2850 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 67D4D759
P 3350 1250
F 0 "#PWR?" H 3350 1100 50  0001 C CNN
F 1 "+3.3V" H 3365 1423 50  0000 C CNN
F 2 "" H 3350 1250 50  0001 C CNN
F 3 "" H 3350 1250 50  0001 C CNN
	1    3350 1250
	1    0    0    -1  
$EndComp
Connection ~ 3350 2200
Wire Wire Line
	3350 2200 3650 2200
Connection ~ 2850 2100
Wire Wire Line
	2850 2100 3650 2100
$Comp
L power:+3.3V #PWR?
U 1 1 67D4E539
P 4050 1250
F 0 "#PWR?" H 4050 1100 50  0001 C CNN
F 1 "+3.3V" H 4065 1423 50  0000 C CNN
F 2 "" H 4050 1250 50  0001 C CNN
F 3 "" H 4050 1250 50  0001 C CNN
	1    4050 1250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 67D58725
P 2800 2850
F 0 "SW?" V 2900 2600 50  0000 R CNN
F 1 "SW_Push" V 2600 2700 50  0000 R CNN
F 2 "" H 2800 3050 50  0001 C CNN
F 3 "~" H 2800 3050 50  0001 C CNN
	1    2800 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D59531
P 4150 3050
F 0 "#PWR?" H 4150 2800 50  0001 C CNN
F 1 "GND" H 4155 2877 50  0000 C CNN
F 2 "" H 4150 3050 50  0001 C CNN
F 3 "" H 4150 3050 50  0001 C CNN
	1    4150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2700 4150 3050
$Comp
L power:GND #PWR?
U 1 1 67D59F16
P 2800 3350
F 0 "#PWR?" H 2800 3100 50  0001 C CNN
F 1 "GND" H 2805 3177 50  0000 C CNN
F 2 "" H 2800 3350 50  0001 C CNN
F 3 "" H 2800 3350 50  0001 C CNN
	1    2800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2500 3650 2500
Wire Wire Line
	2800 2500 2800 2650
Wire Wire Line
	2800 3050 2800 3350
Text HLabel 950  1300 0    50   BiDi ~ 10
RST
Connection ~ 2800 2500
Wire Wire Line
	4050 1250 4050 1900
$Comp
L Device:R R?
U 1 1 67D4CD68
P 3350 1650
F 0 "R?" H 3420 1696 50  0000 L CNN
F 1 "R" H 3420 1605 50  0000 L CNN
F 2 "" V 3280 1650 50  0001 C CNN
F 3 "~" H 3350 1650 50  0001 C CNN
	1    3350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1250 3350 1500
Wire Wire Line
	3350 1800 3350 2200
Wire Wire Line
	2850 1250 2850 1500
Wire Wire Line
	2850 1800 2850 2100
$Comp
L power:+3.3V #PWR?
U 1 1 67D5CDD7
P 5650 1250
F 0 "#PWR?" H 5650 1100 50  0001 C CNN
F 1 "+3.3V" H 5665 1423 50  0000 C CNN
F 2 "" H 5650 1250 50  0001 C CNN
F 3 "" H 5650 1250 50  0001 C CNN
	1    5650 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67D5D7F5
P 5650 1700
F 0 "R?" H 5720 1746 50  0000 L CNN
F 1 "R" H 5720 1655 50  0000 L CNN
F 2 "" V 5580 1700 50  0001 C CNN
F 3 "~" H 5650 1700 50  0001 C CNN
	1    5650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2100 5650 2100
Wire Wire Line
	5650 2100 5650 1850
Wire Wire Line
	5650 1550 5650 1250
Text GLabel 1150 1300 2    50   Input ~ 10
RST
Text GLabel 2450 2500 0    50   Output ~ 10
RST
Wire Wire Line
	2450 2500 2800 2500
Text GLabel 1150 1150 2    50   Input ~ 10
SCL
Text GLabel 1150 1000 2    50   Input ~ 10
SDA
$EndSCHEMATC
