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
Text Notes 5600 850  2    157  ~ 0
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
P 8750 2250
F 0 "U?" H 8321 2296 50  0000 R CNN
F 1 "BME280" H 8321 2205 50  0000 R CNN
F 2 "Package_LGA:Bosch_LGA-8_2.5x2.5mm_P0.65mm_ClockwisePinNumbering" H 10250 1800 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280-DS002.pdf" H 8750 2050 50  0001 C CNN
	1    8750 2250
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
P 8850 1200
F 0 "#PWR?" H 8850 1050 50  0001 C CNN
F 1 "+3.3V" H 8865 1373 50  0000 C CNN
F 2 "" H 8850 1200 50  0001 C CNN
F 3 "" H 8850 1200 50  0001 C CNN
	1    8850 1200
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:24LC32 U?
U 1 1 67D74C73
P 4100 5000
F 0 "U?" H 4100 5481 50  0000 C CNN
F 1 "24LC32" H 4100 5390 50  0000 C CNN
F 2 "" H 4100 5000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21072G.pdf" H 4100 5000 50  0001 C CNN
	1    4100 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04 RN?
U 1 1 67DC0D87
P 3500 4350
F 0 "RN?" H 3688 4396 50  0000 L CNN
F 1 "R_Pack04" H 3688 4305 50  0000 L CNN
F 2 "" V 3775 4350 50  0001 C CNN
F 3 "~" H 3500 4350 50  0001 C CNN
	1    3500 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 67DC34FC
P 3150 4900
F 0 "JP?" H 3300 4950 50  0000 C CNN
F 1 "Jumper_NO_Small" H 3050 5050 50  0000 C CNN
F 2 "" H 3150 4900 50  0001 C CNN
F 3 "~" H 3150 4900 50  0001 C CNN
	1    3150 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 67DC3DF5
P 3150 5000
F 0 "JP?" H 3300 5050 50  0000 C CNN
F 1 "Jumper_NO_Small" H 2800 5050 50  0001 C CNN
F 2 "" H 3150 5000 50  0001 C CNN
F 3 "~" H 3150 5000 50  0001 C CNN
	1    3150 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 67DC4271
P 3150 5100
F 0 "JP?" H 3300 5150 50  0000 C CNN
F 1 "Jumper_NO_Small" H 3150 5000 50  0001 C CNN
F 2 "" H 3150 5100 50  0001 C CNN
F 3 "~" H 3150 5100 50  0001 C CNN
	1    3150 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4900 3400 4900
Wire Wire Line
	3700 5000 3500 5000
Wire Wire Line
	3250 5100 3600 5100
$Comp
L power:GND #PWR?
U 1 1 67DC61E3
P 2650 5150
F 0 "#PWR?" H 2650 4900 50  0001 C CNN
F 1 "GND" H 2655 4977 50  0000 C CNN
F 2 "" H 2650 5150 50  0001 C CNN
F 3 "" H 2650 5150 50  0001 C CNN
	1    2650 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5100 2650 5100
Wire Wire Line
	2650 5100 2650 5150
Wire Wire Line
	2650 5100 2650 5000
Wire Wire Line
	2650 5000 3050 5000
Connection ~ 2650 5100
Wire Wire Line
	3050 4900 2650 4900
Wire Wire Line
	2650 4900 2650 5000
Connection ~ 2650 5000
$Comp
L Device:C C?
U 1 1 67DC871B
P 850 4000
F 0 "C?" H 965 4046 50  0000 L CNN
F 1 "C" H 965 3955 50  0000 L CNN
F 2 "" H 888 3850 50  0001 C CNN
F 3 "~" H 850 4000 50  0001 C CNN
	1    850  4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 67DC8B63
P 1350 4000
F 0 "C?" H 1465 4046 50  0000 L CNN
F 1 "C" H 1465 3955 50  0000 L CNN
F 2 "" H 1388 3850 50  0001 C CNN
F 3 "~" H 1350 4000 50  0001 C CNN
	1    1350 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 67DC8E8E
P 850 3500
F 0 "#PWR?" H 850 3350 50  0001 C CNN
F 1 "+3.3V" H 865 3673 50  0000 C CNN
F 2 "" H 850 3500 50  0001 C CNN
F 3 "" H 850 3500 50  0001 C CNN
	1    850  3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3500 850  3650
Wire Wire Line
	850  3650 1350 3650
Wire Wire Line
	1350 3650 1350 3850
Connection ~ 850  3650
Wire Wire Line
	850  3650 850  3850
$Comp
L power:GND #PWR?
U 1 1 67DCC056
P 850 4550
F 0 "#PWR?" H 850 4300 50  0001 C CNN
F 1 "GND" H 855 4377 50  0000 C CNN
F 2 "" H 850 4550 50  0001 C CNN
F 3 "" H 850 4550 50  0001 C CNN
	1    850  4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  4550 850  4450
Wire Wire Line
	850  4450 1350 4450
Wire Wire Line
	1350 4450 1350 4150
Wire Wire Line
	850  4450 850  4150
Connection ~ 850  4450
Wire Wire Line
	3400 4550 3400 4900
Connection ~ 3400 4900
Wire Wire Line
	3400 4900 3700 4900
Wire Wire Line
	3500 4550 3500 5000
Connection ~ 3500 5000
Wire Wire Line
	3500 5000 3250 5000
Wire Wire Line
	3600 4550 3600 5100
Connection ~ 3600 5100
Wire Wire Line
	3600 5100 3700 5100
$Comp
L power:+3.3V #PWR?
U 1 1 67DD4B78
P 3300 3900
F 0 "#PWR?" H 3300 3750 50  0001 C CNN
F 1 "+3.3V" H 3315 4073 50  0000 C CNN
F 2 "" H 3300 3900 50  0001 C CNN
F 3 "" H 3300 3900 50  0001 C CNN
	1    3300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3900 3300 4050
Wire Wire Line
	3300 4050 3400 4050
Wire Wire Line
	3400 4050 3400 4150
Connection ~ 3300 4050
Wire Wire Line
	3300 4050 3300 4150
Wire Wire Line
	3400 4050 3500 4050
Wire Wire Line
	3500 4050 3500 4150
Connection ~ 3400 4050
Wire Wire Line
	3500 4050 3600 4050
Wire Wire Line
	3600 4050 3600 4150
Connection ~ 3500 4050
$Comp
L Device:R R?
U 1 1 67DDA454
P 4800 4550
F 0 "R?" H 4870 4596 50  0000 L CNN
F 1 "R" H 4870 4505 50  0000 L CNN
F 2 "" V 4730 4550 50  0001 C CNN
F 3 "~" H 4800 4550 50  0001 C CNN
	1    4800 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67DDAAC5
P 5100 4550
F 0 "R?" H 5170 4596 50  0000 L CNN
F 1 "R" H 5170 4505 50  0000 L CNN
F 2 "" V 5030 4550 50  0001 C CNN
F 3 "~" H 5100 4550 50  0001 C CNN
	1    5100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4900 4800 4900
Wire Wire Line
	4800 4900 4800 4700
$Comp
L power:+3.3V #PWR?
U 1 1 67DDCB79
P 4800 4200
F 0 "#PWR?" H 4800 4050 50  0001 C CNN
F 1 "+3.3V" H 4815 4373 50  0000 C CNN
F 2 "" H 4800 4200 50  0001 C CNN
F 3 "" H 4800 4200 50  0001 C CNN
	1    4800 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 67DDD02F
P 5100 4200
F 0 "#PWR?" H 5100 4050 50  0001 C CNN
F 1 "+3.3V" H 5115 4373 50  0000 C CNN
F 2 "" H 5100 4200 50  0001 C CNN
F 3 "" H 5100 4200 50  0001 C CNN
	1    5100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4400 5100 4200
Wire Wire Line
	4800 4200 4800 4400
Wire Wire Line
	4500 5000 5100 5000
Wire Wire Line
	5100 5000 5100 4700
Text GLabel 5300 5000 2    50   Output ~ 10
SCL
Text GLabel 5300 4900 2    50   Output ~ 10
SDA
Wire Wire Line
	5300 4900 4800 4900
Connection ~ 4800 4900
Wire Wire Line
	5300 5000 5100 5000
Connection ~ 5100 5000
$Comp
L power:GND #PWR?
U 1 1 67DE6F06
P 4100 5450
F 0 "#PWR?" H 4100 5200 50  0001 C CNN
F 1 "GND" H 4105 5277 50  0000 C CNN
F 2 "" H 4100 5450 50  0001 C CNN
F 3 "" H 4100 5450 50  0001 C CNN
	1    4100 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5300 4100 5350
Wire Wire Line
	4500 5100 4700 5100
Wire Wire Line
	4700 5100 4700 5350
Wire Wire Line
	4700 5350 4100 5350
Connection ~ 4100 5350
Wire Wire Line
	4100 5350 4100 5450
$Comp
L power:+3.3V #PWR?
U 1 1 67DEACA0
P 900 1950
F 0 "#PWR?" H 900 1800 50  0001 C CNN
F 1 "+3.3V" H 915 2123 50  0000 C CNN
F 2 "" H 900 1950 50  0001 C CNN
F 3 "" H 900 1950 50  0001 C CNN
	1    900  1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67DEB334
P 900 2200
F 0 "R?" H 970 2246 50  0000 L CNN
F 1 "R" H 970 2155 50  0000 L CNN
F 2 "" V 830 2200 50  0001 C CNN
F 3 "~" H 900 2200 50  0001 C CNN
	1    900  2200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 67DEDC95
P 900 2600
F 0 "D?" V 939 2482 50  0000 R CNN
F 1 "LED" V 848 2482 50  0000 R CNN
F 2 "" H 900 2600 50  0001 C CNN
F 3 "~" H 900 2600 50  0001 C CNN
	1    900  2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  1950 900  2050
Wire Wire Line
	900  2350 900  2450
$Comp
L power:GND #PWR?
U 1 1 67DF2389
P 900 2900
F 0 "#PWR?" H 900 2650 50  0001 C CNN
F 1 "GND" H 905 2727 50  0000 C CNN
F 2 "" H 900 2900 50  0001 C CNN
F 3 "" H 900 2900 50  0001 C CNN
	1    900  2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2750 900  2900
$Comp
L power:+3.3V #PWR?
U 1 1 67DF485B
P 4100 4100
F 0 "#PWR?" H 4100 3950 50  0001 C CNN
F 1 "+3.3V" H 4115 4273 50  0000 C CNN
F 2 "" H 4100 4100 50  0001 C CNN
F 3 "" H 4100 4100 50  0001 C CNN
	1    4100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4700 4100 4100
Text Notes 8300 850  0    118  ~ 0
BME280
$Comp
L Device:C C?
U 1 1 67DF72E6
P 7900 2100
F 0 "C?" H 8015 2146 50  0000 L CNN
F 1 "C" H 8015 2055 50  0000 L CNN
F 2 "" H 7938 1950 50  0001 C CNN
F 3 "~" H 7900 2100 50  0001 C CNN
	1    7900 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67DF783B
P 10200 2350
F 0 "R?" V 10300 2500 50  0000 L CNN
F 1 "4k7" V 10300 2250 50  0000 L CNN
F 2 "" V 10130 2350 50  0001 C CNN
F 3 "~" H 10200 2350 50  0001 C CNN
	1    10200 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 67DF7B38
P 9700 2350
F 0 "R?" V 9800 2450 50  0000 L CNN
F 1 "4k7" V 9800 2200 50  0000 L CNN
F 2 "" V 9630 2350 50  0001 C CNN
F 3 "~" H 9700 2350 50  0001 C CNN
	1    9700 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 1650 8650 1500
Wire Wire Line
	8650 1500 7900 1500
Wire Wire Line
	7900 1500 7900 1950
Wire Wire Line
	8650 2850 8650 3100
Wire Wire Line
	8650 3100 8500 3100
Wire Wire Line
	7900 3100 7900 2250
Wire Wire Line
	8850 2850 8850 3100
Wire Wire Line
	8850 3100 8650 3100
Connection ~ 8650 3100
$Comp
L power:GND #PWR?
U 1 1 67E00AC3
P 8500 3250
F 0 "#PWR?" H 8500 3000 50  0001 C CNN
F 1 "GND" H 8650 3200 50  0000 C CNN
F 2 "" H 8500 3250 50  0001 C CNN
F 3 "" H 8500 3250 50  0001 C CNN
	1    8500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3250 8500 3100
Connection ~ 8500 3100
Wire Wire Line
	8500 3100 7900 3100
Text GLabel 10450 2000 2    50   Output ~ 10
SDA
Text GLabel 10450 2150 2    50   Output ~ 10
SCL
Wire Wire Line
	9950 2550 9950 2350
Wire Wire Line
	9950 2350 9850 2350
Wire Wire Line
	9350 2550 9950 2550
Wire Wire Line
	9550 2350 9450 2350
Connection ~ 9950 2350
Wire Wire Line
	9950 2350 10050 2350
Wire Wire Line
	10350 2350 10350 2150
Wire Wire Line
	10350 2150 10450 2150
Wire Wire Line
	10350 2150 9350 2150
Connection ~ 10350 2150
Wire Wire Line
	10450 2000 9450 2000
Wire Wire Line
	9450 2000 9450 2350
Connection ~ 9450 2350
Wire Wire Line
	9450 2350 9350 2350
Wire Wire Line
	8850 1650 8850 1350
Wire Wire Line
	9950 2550 10250 2550
Connection ~ 9950 2550
Text Label 10050 2550 0    39   ~ 0
VDDIO
Wire Wire Line
	8650 1500 8650 1300
Connection ~ 8650 1500
Text Label 8650 1400 2    39   ~ 0
VDDIO
$Comp
L Device:C C?
U 1 1 67E2B10C
P 9150 1500
F 0 "C?" H 9265 1546 50  0000 L CNN
F 1 "C" H 9265 1455 50  0000 L CNN
F 2 "" H 9188 1350 50  0001 C CNN
F 3 "~" H 9150 1500 50  0001 C CNN
	1    9150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1350 8850 1350
Connection ~ 8850 1350
Wire Wire Line
	8850 1350 8850 1200
$Comp
L power:GND #PWR?
U 1 1 67E2E720
P 9150 1700
F 0 "#PWR?" H 9150 1450 50  0001 C CNN
F 1 "GND" H 9300 1650 50  0000 C CNN
F 2 "" H 9150 1700 50  0001 C CNN
F 3 "" H 9150 1700 50  0001 C CNN
	1    9150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1700 9150 1650
$Comp
L power:GND #PWR?
U 1 1 67E393C4
P 10300 1750
F 0 "#PWR?" H 10300 1500 50  0001 C CNN
F 1 "GND" H 10305 1577 50  0000 C CNN
F 2 "" H 10300 1750 50  0001 C CNN
F 3 "" H 10300 1750 50  0001 C CNN
	1    10300 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1950 9900 1950
Wire Wire Line
	9900 1950 9900 1650
Wire Wire Line
	9900 1650 10300 1650
Wire Wire Line
	10300 1650 10300 1750
Text Notes 800  750  0    39   ~ 0
GLOBAL CONNECTIONS
Wire Notes Line
	6800 5650 6800 600 
Wire Notes Line
	1950 1700 1950 600 
Wire Notes Line
	11000 600  11000 3400
Wire Notes Line
	11000 3400 6800 3400
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 67E543C5
P 700 6350
F 0 "J?" H 700 6800 50  0000 C CNN
F 1 "Conn_01x05_Male" H 950 6700 50  0000 C CNN
F 2 "" H 700 6350 50  0001 C CNN
F 3 "~" H 700 6350 50  0001 C CNN
	1    700  6350
	1    0    0    -1  
$EndComp
Text Notes 1000 5900 0    79   ~ 0
BH1750
Wire Notes Line
	600  6800 1750 6800
Wire Notes Line
	1750 6800 1750 5650
$Comp
L power:+3.3V #PWR?
U 1 1 67E5A011
P 1550 6150
F 0 "#PWR?" H 1550 6000 50  0001 C CNN
F 1 "+3.3V" H 1565 6323 50  0000 C CNN
F 2 "" H 1550 6150 50  0001 C CNN
F 3 "" H 1550 6150 50  0001 C CNN
	1    1550 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6150 900  6150
Text GLabel 1500 6250 2    50   Output ~ 10
SCL
Text GLabel 1500 6350 2    50   Output ~ 10
SDA
Wire Wire Line
	1500 6350 900  6350
Wire Wire Line
	1500 6250 900  6250
$Comp
L power:GND #PWR?
U 1 1 67E64B02
P 1450 6450
F 0 "#PWR?" H 1450 6200 50  0001 C CNN
F 1 "GND" H 1600 6400 50  0000 C CNN
F 2 "" H 1450 6450 50  0001 C CNN
F 3 "" H 1450 6450 50  0001 C CNN
	1    1450 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6450 900  6450
Text GLabel 1100 6700 2    59   Output ~ 0
BH_I2C_ADDR
Wire Wire Line
	1100 6700 1100 6550
Wire Wire Line
	1100 6550 900  6550
Text GLabel 1300 1450 2    59   Output ~ 12
BH_I2C_ADDR
Text HLabel 1100 1450 0    50   BiDi ~ 10
BH_I2C_ADDR
Wire Wire Line
	1300 1450 1100 1450
Wire Wire Line
	1150 1300 950  1300
Wire Wire Line
	1150 1150 950  1150
Wire Wire Line
	1150 1000 950  1000
Wire Notes Line
	500  600  11000 600 
Wire Notes Line
	500  1700 1950 1700
Wire Notes Line
	500  5650 6800 5650
Wire Notes Line
	500  600  500  5650
$Comp
L Analog_ADC:INA219AxD U?
U 1 1 67E891BF
P 9150 4750
F 0 "U?" H 8850 5350 50  0000 C CNN
F 1 "INA219AxD" H 8850 5250 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9950 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 9500 4650 50  0001 C CNN
	1    9150 4750
	1    0    0    -1  
$EndComp
Text Notes 7100 3650 0    118  ~ 0
Battery Measurement
Text Notes 2050 5950 0    118  ~ 0
PV Measurement
$Comp
L Device:R R?
U 1 1 67E9966D
P 9800 4300
F 0 "R?" H 9870 4346 50  0000 L CNN
F 1 "R" H 9870 4255 50  0000 L CNN
F 2 "" V 9730 4300 50  0001 C CNN
F 3 "~" H 9800 4300 50  0001 C CNN
	1    9800 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67E99F4C
P 10150 4300
F 0 "R?" H 10220 4346 50  0000 L CNN
F 1 "R" H 10220 4255 50  0000 L CNN
F 2 "" V 10080 4300 50  0001 C CNN
F 3 "~" H 10150 4300 50  0001 C CNN
	1    10150 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 67E9AC7D
P 10050 4950
F 0 "JP?" H 10050 4800 50  0000 C CNN
F 1 "Jumper_NO_Small" H 10050 5044 50  0001 C CNN
F 2 "" H 10050 4950 50  0001 C CNN
F 3 "~" H 10050 4950 50  0001 C CNN
	1    10050 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 67E9B750
P 10050 4850
F 0 "JP?" H 10050 4943 50  0000 C CNN
F 1 "Jumper_NO_Small" H 10050 4944 50  0001 C CNN
F 2 "" H 10050 4850 50  0001 C CNN
F 3 "~" H 10050 4850 50  0001 C CNN
	1    10050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4850 9550 4850
Wire Wire Line
	9950 4950 9550 4950
$Comp
L power:GND #PWR?
U 1 1 67EA4433
P 9150 5350
F 0 "#PWR?" H 9150 5100 50  0001 C CNN
F 1 "GND" H 9300 5300 50  0000 C CNN
F 2 "" H 9150 5350 50  0001 C CNN
F 3 "" H 9150 5350 50  0001 C CNN
	1    9150 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5350 9150 5150
$Comp
L power:+3.3V #PWR?
U 1 1 67EA8D88
P 9800 3800
F 0 "#PWR?" H 9800 3650 50  0001 C CNN
F 1 "+3.3V" H 9815 3973 50  0000 C CNN
F 2 "" H 9800 3800 50  0001 C CNN
F 3 "" H 9800 3800 50  0001 C CNN
	1    9800 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 67EA956D
P 10150 3800
F 0 "#PWR?" H 10150 3650 50  0001 C CNN
F 1 "+3.3V" H 10165 3973 50  0000 C CNN
F 2 "" H 10150 3800 50  0001 C CNN
F 3 "" H 10150 3800 50  0001 C CNN
	1    10150 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3800 10150 4150
Wire Wire Line
	9800 3800 9800 4150
Wire Wire Line
	9550 4550 9800 4550
Wire Wire Line
	9800 4550 9800 4450
Wire Wire Line
	9550 4650 10150 4650
Wire Wire Line
	10150 4650 10150 4450
Text GLabel 10350 4550 2    50   Input ~ 10
SDA
Wire Wire Line
	10350 4550 9800 4550
Connection ~ 9800 4550
Text GLabel 10350 4650 2    50   Input ~ 10
SCL
Wire Wire Line
	10350 4650 10150 4650
Connection ~ 10150 4650
$Comp
L Device:R_Small_US R?
U 1 1 67EC5E49
P 7850 4750
F 0 "R?" H 7950 4850 50  0000 L CNN
F 1 "100" H 7900 4750 50  0000 L CNN
F 2 "" H 7850 4750 50  0001 C CNN
F 3 "~" H 7850 4750 50  0001 C CNN
	1    7850 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 67EC7595
P 7300 4750
F 0 "J?" H 7218 4425 50  0000 C CNN
F 1 "Conn_01x02" H 7218 4516 50  0000 C CNN
F 2 "" H 7300 4750 50  0001 C CNN
F 3 "~" H 7300 4750 50  0001 C CNN
	1    7300 4750
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 67EC870A
P 8550 4700
F 0 "C?" H 8600 4800 50  0000 L CNN
F 1 "100n" H 8600 4600 50  0000 L CNN
F 2 "" H 8588 4550 50  0001 C CNN
F 3 "~" H 8550 4700 50  0001 C CNN
	1    8550 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67EC8B18
P 8150 4600
F 0 "R?" V 8050 4750 50  0000 L CNN
F 1 "10k" V 8050 4450 50  0000 L CNN
F 2 "" V 8080 4600 50  0001 C CNN
F 3 "~" H 8150 4600 50  0001 C CNN
	1    8150 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 67EC97D9
P 8100 4850
F 0 "R?" V 8200 5000 50  0000 L CNN
F 1 "10k" V 8200 4700 50  0000 L CNN
F 2 "" V 8030 4850 50  0001 C CNN
F 3 "~" H 8100 4850 50  0001 C CNN
	1    8100 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 4600 7850 4650
Wire Wire Line
	7850 4600 7600 4600
Wire Wire Line
	7600 4600 7600 4650
Wire Wire Line
	7600 4650 7500 4650
Wire Wire Line
	7500 4750 7600 4750
Wire Wire Line
	7600 4750 7600 4850
Wire Wire Line
	7600 4850 7850 4850
Wire Wire Line
	8000 4600 7850 4600
Connection ~ 7850 4600
Wire Wire Line
	7950 4850 7850 4850
Connection ~ 7850 4850
Wire Wire Line
	8250 4850 8550 4850
Wire Wire Line
	8550 4850 8750 4850
Connection ~ 8550 4850
Wire Wire Line
	8750 4650 8750 4550
Wire Wire Line
	8750 4550 8550 4550
Wire Wire Line
	8500 4600 8500 4550
Wire Wire Line
	8500 4550 8550 4550
Wire Wire Line
	8300 4600 8500 4600
Connection ~ 8550 4550
$Comp
L Analog_ADC:INA219AxD U?
U 1 1 67F18EB0
P 5150 6900
F 0 "U?" H 4850 7500 50  0000 C CNN
F 1 "INA219AxD" H 4850 7400 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5950 6550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 5500 6800 50  0001 C CNN
	1    5150 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67F19387
P 5800 6450
F 0 "R?" H 5870 6496 50  0000 L CNN
F 1 "R" H 5870 6405 50  0000 L CNN
F 2 "" V 5730 6450 50  0001 C CNN
F 3 "~" H 5800 6450 50  0001 C CNN
	1    5800 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67F19391
P 6150 6450
F 0 "R?" H 6220 6496 50  0000 L CNN
F 1 "R" H 6220 6405 50  0000 L CNN
F 2 "" V 6080 6450 50  0001 C CNN
F 3 "~" H 6150 6450 50  0001 C CNN
	1    6150 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 67F1939B
P 6050 7100
F 0 "JP?" H 6050 6950 50  0000 C CNN
F 1 "Jumper_NO_Small" H 6050 7194 50  0001 C CNN
F 2 "" H 6050 7100 50  0001 C CNN
F 3 "~" H 6050 7100 50  0001 C CNN
	1    6050 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 67F193A5
P 6050 7000
F 0 "JP?" H 6050 7093 50  0000 C CNN
F 1 "Jumper_NO_Small" H 6050 7094 50  0001 C CNN
F 2 "" H 6050 7000 50  0001 C CNN
F 3 "~" H 6050 7000 50  0001 C CNN
	1    6050 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 7000 5550 7000
Wire Wire Line
	5950 7100 5550 7100
$Comp
L power:GND #PWR?
U 1 1 67F193B1
P 5150 7500
F 0 "#PWR?" H 5150 7250 50  0001 C CNN
F 1 "GND" H 5300 7450 50  0000 C CNN
F 2 "" H 5150 7500 50  0001 C CNN
F 3 "" H 5150 7500 50  0001 C CNN
	1    5150 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 7500 5150 7300
$Comp
L power:+3.3V #PWR?
U 1 1 67F193BC
P 5800 5950
F 0 "#PWR?" H 5800 5800 50  0001 C CNN
F 1 "+3.3V" H 5815 6123 50  0000 C CNN
F 2 "" H 5800 5950 50  0001 C CNN
F 3 "" H 5800 5950 50  0001 C CNN
	1    5800 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 67F193C6
P 6150 5950
F 0 "#PWR?" H 6150 5800 50  0001 C CNN
F 1 "+3.3V" H 6165 6123 50  0000 C CNN
F 2 "" H 6150 5950 50  0001 C CNN
F 3 "" H 6150 5950 50  0001 C CNN
	1    6150 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5950 6150 6300
Wire Wire Line
	5800 5950 5800 6300
Wire Wire Line
	5550 6700 5800 6700
Wire Wire Line
	5800 6700 5800 6600
Wire Wire Line
	5550 6800 6150 6800
Wire Wire Line
	6150 6800 6150 6600
Text GLabel 6350 6700 2    50   Input ~ 10
SDA
Wire Wire Line
	6350 6700 5800 6700
Connection ~ 5800 6700
Text GLabel 6350 6800 2    50   Input ~ 10
SCL
Wire Wire Line
	6350 6800 6150 6800
Connection ~ 6150 6800
$Comp
L Device:R_Small_US R?
U 1 1 67F193DC
P 3850 6900
F 0 "R?" H 3950 7000 50  0000 L CNN
F 1 "100" H 3900 6900 50  0000 L CNN
F 2 "" H 3850 6900 50  0001 C CNN
F 3 "~" H 3850 6900 50  0001 C CNN
	1    3850 6900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 67F193E6
P 3300 6900
F 0 "J?" H 3218 6575 50  0000 C CNN
F 1 "Conn_01x02" H 3218 6666 50  0000 C CNN
F 2 "" H 3300 6900 50  0001 C CNN
F 3 "~" H 3300 6900 50  0001 C CNN
	1    3300 6900
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 67F193F0
P 4550 6850
F 0 "C?" H 4600 6950 50  0000 L CNN
F 1 "100n" H 4600 6750 50  0000 L CNN
F 2 "" H 4588 6700 50  0001 C CNN
F 3 "~" H 4550 6850 50  0001 C CNN
	1    4550 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67F193FA
P 4150 6750
F 0 "R?" V 4050 6900 50  0000 L CNN
F 1 "10k" V 4050 6600 50  0000 L CNN
F 2 "" V 4080 6750 50  0001 C CNN
F 3 "~" H 4150 6750 50  0001 C CNN
	1    4150 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 67F19404
P 4100 7000
F 0 "R?" V 4200 7150 50  0000 L CNN
F 1 "10k" V 4200 6850 50  0000 L CNN
F 2 "" V 4030 7000 50  0001 C CNN
F 3 "~" H 4100 7000 50  0001 C CNN
	1    4100 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 6750 3850 6800
Wire Wire Line
	3850 6750 3600 6750
Wire Wire Line
	3600 6750 3600 6800
Wire Wire Line
	3600 6800 3500 6800
Wire Wire Line
	3500 6900 3600 6900
Wire Wire Line
	3600 6900 3600 7000
Wire Wire Line
	3600 7000 3850 7000
Wire Wire Line
	4000 6750 3850 6750
Connection ~ 3850 6750
Wire Wire Line
	3950 7000 3850 7000
Connection ~ 3850 7000
Wire Wire Line
	4250 7000 4550 7000
Wire Wire Line
	4550 7000 4750 7000
Connection ~ 4550 7000
Wire Wire Line
	4750 6800 4750 6700
Wire Wire Line
	4750 6700 4550 6700
Wire Wire Line
	4500 6750 4500 6700
Wire Wire Line
	4500 6700 4550 6700
Wire Wire Line
	4300 6750 4500 6750
Connection ~ 4550 6700
$EndSCHEMATC
