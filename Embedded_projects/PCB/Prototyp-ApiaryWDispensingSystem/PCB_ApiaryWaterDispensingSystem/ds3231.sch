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
	2600 2100 3650 2100
Wire Wire Line
	2600 2200 3650 2200
$EndSCHEMATC
