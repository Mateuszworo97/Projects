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
F 1 "RP" H 2920 1605 50  0000 L CNN
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
F 1 "RP" H 3420 1605 50  0000 L CNN
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
	5650 1550 5650 1350
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
Text Notes 5600 850  2    157  ~ 31
real time clock - DS3231
Text GLabel 2350 2200 0    50   Output ~ 10
SDA
Text GLabel 2350 2100 0    50   Output ~ 10
SCL
Wire Wire Line
	2350 2100 2850 2100
Wire Wire Line
	2350 2200 3350 2200
$Comp
L Device:Battery_Cell BT?
U 1 1 67D6246E
P 6050 3100
F 0 "BT?" H 6168 3196 50  0000 L CNN
F 1 "Battery_Cell" H 6168 3105 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_107_1x23mm" V 6050 3160 50  0001 C CNN
F 3 "~" V 6050 3160 50  0001 C CNN
	1    6050 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 67D63172
P 5650 3050
F 0 "C?" H 5765 3096 50  0000 L CNN
F 1 "C" H 5765 3005 50  0000 L CNN
F 2 "" H 5688 2900 50  0001 C CNN
F 3 "~" H 5650 3050 50  0001 C CNN
	1    5650 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D63C6F
P 6050 3350
F 0 "#PWR?" H 6050 3100 50  0001 C CNN
F 1 "GND" H 6250 3300 50  0000 C CNN
F 2 "" H 6050 3350 50  0001 C CNN
F 3 "" H 6050 3350 50  0001 C CNN
	1    6050 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D64F0E
P 5650 3350
F 0 "#PWR?" H 5650 3100 50  0001 C CNN
F 1 "GND" H 5800 3300 50  0000 C CNN
F 2 "" H 5650 3350 50  0001 C CNN
F 3 "" H 5650 3350 50  0001 C CNN
	1    5650 3350
	1    0    0    -1  
$EndComp
Text GLabel 6500 2100 2    50   Output ~ 10
32KHz
Connection ~ 5650 2100
$Comp
L Device:R R?
U 1 1 67D66D35
P 5950 1700
F 0 "R?" H 6020 1746 50  0000 L CNN
F 1 "R" H 6020 1655 50  0000 L CNN
F 2 "" V 5880 1700 50  0001 C CNN
F 3 "~" H 5950 1700 50  0001 C CNN
	1    5950 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 67D67722
P 6300 1700
F 0 "C?" H 6415 1746 50  0000 L CNN
F 1 "C" H 6415 1655 50  0000 L CNN
F 2 "" H 6338 1550 50  0001 C CNN
F 3 "~" H 6300 1700 50  0001 C CNN
	1    6300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2400 5950 1850
Wire Wire Line
	4650 2400 5950 2400
Wire Wire Line
	5650 2100 6500 2100
Wire Wire Line
	6300 1550 6300 1350
Wire Wire Line
	6300 1350 5950 1350
Connection ~ 5650 1350
Wire Wire Line
	5650 1350 5650 1250
Wire Wire Line
	5950 1550 5950 1350
Connection ~ 5950 1350
Wire Wire Line
	5950 1350 5650 1350
$Comp
L power:GND #PWR?
U 1 1 67D6911A
P 6300 1900
F 0 "#PWR?" H 6300 1650 50  0001 C CNN
F 1 "GND" H 6500 1850 50  0000 C CNN
F 2 "" H 6300 1900 50  0001 C CNN
F 3 "" H 6300 1900 50  0001 C CNN
	1    6300 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1900 6300 1850
Text GLabel 6500 2400 2    50   Output ~ 10
SQW
Text Notes 2200 1450 0    50   ~ 10
Rpu = tr/Cb
Wire Wire Line
	6050 3350 6050 3200
Wire Wire Line
	5650 3350 5650 3200
$Comp
L Sensor:BME280 U?
U 1 1 67D6FB79
P 8550 2200
F 0 "U?" H 8121 2246 50  0000 R CNN
F 1 "BME280" H 8121 2155 50  0000 R CNN
F 2 "Package_LGA:Bosch_LGA-8_2.5x2.5mm_P0.65mm_ClockwisePinNumbering" H 10050 1750 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280-DS002.pdf" H 8550 2000 50  0001 C CNN
	1    8550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2400 6500 2400
Connection ~ 5950 2400
Text GLabel 4450 1700 2    50   Input ~ 10
BAT
Wire Wire Line
	4450 1700 4150 1700
Wire Wire Line
	4150 1700 4150 1900
Text GLabel 5250 2750 0    50   Output ~ 10
BAT
Wire Wire Line
	6050 2900 6050 2750
Wire Wire Line
	6050 2750 5650 2750
Wire Wire Line
	5650 2900 5650 2750
Connection ~ 5650 2750
Wire Wire Line
	5650 2750 5250 2750
Text GLabel 7100 1800 0    50   Output ~ 10
BAT
$Comp
L power:+3.3V #PWR?
U 1 1 67D73D8B
P 7200 1100
F 0 "#PWR?" H 7200 950 50  0001 C CNN
F 1 "+3.3V" H 7215 1273 50  0000 C CNN
F 2 "" H 7200 1100 50  0001 C CNN
F 3 "" H 7200 1100 50  0001 C CNN
	1    7200 1100
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:24LC32 U?
U 1 1 67D74C73
P 4100 4350
F 0 "U?" H 4100 4831 50  0000 C CNN
F 1 "24LC32" H 4100 4740 50  0000 C CNN
F 2 "" H 4100 4350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21072G.pdf" H 4100 4350 50  0001 C CNN
	1    4100 4350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
