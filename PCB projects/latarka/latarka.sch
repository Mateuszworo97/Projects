EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Driver_LED:MCP1643xMS U1
U 1 1 619E4D09
P 4150 2200
F 0 "U1" H 4150 2881 50  0000 C CNN
F 1 "MCP1643xMS" H 4150 2790 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 4100 1550 50  0001 C CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/20005208A.pdf" H 4100 1550 50  0001 C CNN
	1    4150 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 619E818F
P 5000 2300
F 0 "C2" H 5092 2346 50  0000 L CNN
F 1 "4,7u" H 5092 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5000 2300 50  0001 C CNN
F 3 "~" H 5000 2300 50  0001 C CNN
	1    5000 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 619E8A92
P 3400 1650
F 0 "C1" H 3492 1696 50  0000 L CNN
F 1 "10u" H 3492 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3400 1650 50  0001 C CNN
F 3 "~" H 3400 1650 50  0001 C CNN
	1    3400 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L1
U 1 1 619E939A
P 4500 1500
F 0 "L1" V 4685 1500 50  0000 C CNN
F 1 "4,7u" V 4594 1500 50  0000 C CNN
F 2 "cewka2:cewka_m2" H 4500 1500 50  0001 C CNN
F 3 "~" H 4500 1500 50  0001 C CNN
	1    4500 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:+1V5 #PWR0101
U 1 1 619EB501
P 1950 3050
F 0 "#PWR0101" H 1950 2900 50  0001 C CNN
F 1 "+1V5" H 1965 3223 50  0000 C CNN
F 2 "" H 1950 3050 50  0001 C CNN
F 3 "" H 1950 3050 50  0001 C CNN
	1    1950 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 619EBE83
P 5450 2300
F 0 "D1" V 5496 2230 50  0000 R CNN
F 1 "LED_Small" V 5405 2230 50  0000 R CNN
F 2 "LED_THT:LED_D8.0mm" V 5450 2300 50  0001 C CNN
F 3 "~" V 5450 2300 50  0001 C CNN
	1    5450 2300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 619ECA6B
P 1600 1900
F 0 "J1" H 1518 1575 50  0000 C CNN
F 1 "Conn_01x02" H 1518 1666 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1600 1900 50  0001 C CNN
F 3 "~" H 1600 1900 50  0001 C CNN
	1    1600 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 1700 4150 1500
Wire Wire Line
	4150 1500 4400 1500
Wire Wire Line
	4600 1500 4700 1500
Wire Wire Line
	4700 1500 4700 1900
Wire Wire Line
	4700 1900 4550 1900
$Comp
L power:GND #PWR0102
U 1 1 619F2F5D
P 4150 2900
F 0 "#PWR0102" H 4150 2650 50  0001 C CNN
F 1 "GND" H 4155 2727 50  0000 C CNN
F 2 "" H 4150 2900 50  0001 C CNN
F 3 "" H 4150 2900 50  0001 C CNN
	1    4150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2700 4250 2900
Wire Wire Line
	4250 2900 4150 2900
Wire Wire Line
	4050 2700 4050 2900
Wire Wire Line
	4050 2900 4150 2900
Connection ~ 4150 2900
Wire Wire Line
	5450 2200 5450 2100
Wire Wire Line
	4550 2100 5000 2100
Wire Wire Line
	5000 2100 5000 2200
Connection ~ 5000 2100
Wire Wire Line
	5000 2100 5450 2100
$Comp
L power:GND #PWR0103
U 1 1 619F858F
P 5000 2750
F 0 "#PWR0103" H 5000 2500 50  0001 C CNN
F 1 "GND" H 5005 2577 50  0000 C CNN
F 2 "" H 5000 2750 50  0001 C CNN
F 3 "" H 5000 2750 50  0001 C CNN
	1    5000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2750 5000 2400
$Comp
L Device:R_Small R2
U 1 1 619F8EC6
P 5450 2600
F 0 "R2" H 5509 2646 50  0000 L CNN
F 1 "4" H 5509 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5450 2600 50  0001 C CNN
F 3 "~" H 5450 2600 50  0001 C CNN
	1    5450 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 619F9447
P 5450 2800
F 0 "#PWR0104" H 5450 2550 50  0001 C CNN
F 1 "GND" H 5455 2627 50  0000 C CNN
F 2 "" H 5450 2800 50  0001 C CNN
F 3 "" H 5450 2800 50  0001 C CNN
	1    5450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2400 5450 2450
Wire Wire Line
	5450 2700 5450 2800
Wire Wire Line
	4550 2300 4550 3150
Wire Wire Line
	4550 3150 5900 3150
Wire Wire Line
	5900 3150 5900 2450
Wire Wire Line
	5900 2450 5450 2450
Connection ~ 5450 2450
Wire Wire Line
	5450 2450 5450 2500
$Comp
L power:GND #PWR0105
U 1 1 619FB070
P 1950 3500
F 0 "#PWR0105" H 1950 3250 50  0001 C CNN
F 1 "GND" H 1955 3327 50  0000 C CNN
F 2 "" H 1950 3500 50  0001 C CNN
F 3 "" H 1950 3500 50  0001 C CNN
	1    1950 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1Bateria1
U 1 1 619FD85A
P 1550 3350
F 0 "J1Bateria1" H 1468 3025 50  0000 C CNN
F 1 "Conn_01x02" H 1468 3116 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1550 3350 50  0001 C CNN
F 3 "~" H 1550 3350 50  0001 C CNN
	1    1550 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 3350 1950 3350
Wire Wire Line
	1950 3350 1950 3500
Wire Wire Line
	1750 3250 1950 3250
Wire Wire Line
	1950 3250 1950 3050
$Comp
L Device:R_Small R1
U 1 1 619FEE50
P 1950 2050
F 0 "R1" H 2009 2096 50  0000 L CNN
F 1 "10k" H 2009 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1950 2050 50  0001 C CNN
F 3 "~" H 1950 2050 50  0001 C CNN
	1    1950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1500 3400 1500
Wire Wire Line
	3400 1500 3400 1550
Connection ~ 4150 1500
$Comp
L power:+1V5 #PWR0106
U 1 1 61A0031D
P 3400 1200
F 0 "#PWR0106" H 3400 1050 50  0001 C CNN
F 1 "+1V5" H 3415 1373 50  0000 C CNN
F 2 "" H 3400 1200 50  0001 C CNN
F 3 "" H 3400 1200 50  0001 C CNN
	1    3400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1200 3400 1500
Connection ~ 3400 1500
$Comp
L power:GND #PWR0107
U 1 1 61A0392A
P 3400 1900
F 0 "#PWR0107" H 3400 1650 50  0001 C CNN
F 1 "GND" H 3405 1727 50  0000 C CNN
F 2 "" H 3400 1900 50  0001 C CNN
F 3 "" H 3400 1900 50  0001 C CNN
	1    3400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1750 3400 1900
$Comp
L power:+1V5 #PWR0108
U 1 1 61A06179
P 2000 1050
F 0 "#PWR0108" H 2000 900 50  0001 C CNN
F 1 "+1V5" H 2015 1223 50  0000 C CNN
F 2 "" H 2000 1050 50  0001 C CNN
F 3 "" H 2000 1050 50  0001 C CNN
	1    2000 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 61A0F2E0
P 1950 2400
F 0 "#PWR0109" H 1950 2150 50  0001 C CNN
F 1 "GND" H 1955 2227 50  0000 C CNN
F 2 "" H 1950 2400 50  0001 C CNN
F 3 "" H 1950 2400 50  0001 C CNN
	1    1950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2150 1950 2400
Wire Wire Line
	1800 1900 1950 1900
Wire Wire Line
	1950 1900 1950 1950
Wire Wire Line
	1950 1900 2600 1900
Wire Wire Line
	2600 1900 2600 2100
Wire Wire Line
	2600 2100 3750 2100
Connection ~ 1950 1900
Wire Wire Line
	1800 1800 2000 1800
Wire Wire Line
	2000 1800 2000 1050
Text Notes 6100 2600 0    50   ~ 0
Iled=0,12[V]/ Rset
Text Notes 6100 2750 0    50   ~ 0
R=4[Ohm]
$EndSCHEMATC
