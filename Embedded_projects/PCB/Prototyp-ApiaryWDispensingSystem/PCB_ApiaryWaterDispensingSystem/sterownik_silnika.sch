EESchema Schematic File Version 4
EELAYER 30 0
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
$Comp
L Connector_Generic:Conn_01x02 POMPA_1
U 1 1 67E1F6B2
P 730 1580
F 0 "POMPA_1" H 648 1255 50  0000 C CNN
F 1 "Conn_01x02" H 648 1346 50  0000 C CNN
F 2 "" H 730 1580 50  0001 C CNN
F 3 "~" H 730 1580 50  0001 C CNN
	1    730  1580
	-1   0    0    1   
$EndComp
Wire Wire Line
	3020 1530 3020 1480
Wire Wire Line
	3020 1630 3020 1580
$Comp
L library-ApiaryWater:drv8835 U?
U 1 1 67E33780
P 4420 1730
F 0 "U?" H 4230 2200 50  0000 C CNN
F 1 "drv8835" H 4630 2210 50  0000 C CNN
F 2 "" H 4420 1730 50  0001 C CNN
F 3 "" H 4420 1730 50  0001 C CNN
	1    4420 1730
	1    0    0    -1  
$EndComp
Wire Wire Line
	3020 1530 4010 1530
Wire Wire Line
	3020 1630 4010 1630
$Comp
L Connector_Generic:Conn_01x02 POMPA_2
U 1 1 67E20A22
P 750 2080
F 0 "POMPA_2" H 668 1755 50  0000 C CNN
F 1 "Conn_01x02" H 668 1846 50  0000 C CNN
F 2 "" H 750 2080 50  0001 C CNN
F 3 "~" H 750 2080 50  0001 C CNN
	1    750  2080
	-1   0    0    1   
$EndComp
Wire Wire Line
	4010 1730 3000 1730
Wire Wire Line
	3000 1730 3000 1980
Wire Wire Line
	4010 1830 3040 1830
Wire Wire Line
	3040 1830 3040 2080
$Comp
L power:+3.3V #PWR?
U 1 1 67E398B8
P 4420 1030
F 0 "#PWR?" H 4420 880 50  0001 C CNN
F 1 "+3.3V" H 4435 1203 50  0000 C CNN
F 2 "" H 4420 1030 50  0001 C CNN
F 3 "" H 4420 1030 50  0001 C CNN
	1    4420 1030
	1    0    0    -1  
$EndComp
Wire Wire Line
	4420 1030 4420 1230
Text GLabel 5150 1430 2    50   Input ~ 0
BENBL
Text GLabel 5140 1530 2    50   Input ~ 0
BPHASE
Text GLabel 5140 1630 2    50   Input ~ 0
AENBL
Text GLabel 5140 1730 2    50   Input ~ 0
APHASE
Text GLabel 5140 1830 2    50   Input ~ 0
MODE
Text HLabel 900  1100 0    50   Input ~ 0
APHASE
Text HLabel 900  890  0    50   Input ~ 0
BPHASE
Text HLabel 900  1000 0    50   Input ~ 0
AENBL
Text HLabel 900  800  0    50   Input ~ 0
BENBL
Text HLabel 900  1200 0    50   Input ~ 0
MODE
Text GLabel 1100 800  2    50   Input ~ 0
BENBL
Text GLabel 1100 890  2    50   Input ~ 0
BPHASE
Text GLabel 1100 1000 2    50   Input ~ 0
AENBL
Text GLabel 1100 1100 2    50   Input ~ 0
APHASE
Text GLabel 1100 1200 2    50   Input ~ 0
MODE
Wire Wire Line
	1100 800  900  800 
Wire Wire Line
	1100 890  900  890 
Wire Wire Line
	1100 1000 900  1000
Wire Wire Line
	1100 1100 900  1100
Wire Wire Line
	1100 1200 900  1200
Text Notes 3610 710  0    118  ~ 0
DRIVER
Text Label 2460 1480 0    50   ~ 0
PUMP_POWER
Text Label 2450 1580 0    50   ~ 0
PUMP_POWER
Text Label 2420 1980 0    50   ~ 0
PUMP_POWER
Text Label 2430 2080 0    50   ~ 0
PUMP_POWER
Text Label 4850 1430 0    50   ~ 0
DIGITAL
Wire Wire Line
	4820 1430 5150 1430
Wire Wire Line
	4820 1530 5140 1530
Wire Wire Line
	4820 1630 5140 1630
Wire Wire Line
	4820 1730 5140 1730
Wire Wire Line
	4820 1830 5140 1830
Text Label 4850 1530 0    50   ~ 0
DIGITAL
Text Label 4850 1630 0    50   ~ 0
DIGITAL
Text Label 4850 1730 0    50   ~ 0
DIGITAL
Text Label 4850 1830 0    50   ~ 0
DIGITAL
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 67E30C26
P 1550 1810
F 0 "JP?" H 1550 1995 50  0000 C CNN
F 1 "Jumper_NO_Small" H 1400 1900 50  0000 C CNN
F 2 "" H 1550 1810 50  0001 C CNN
F 3 "~" H 1550 1810 50  0001 C CNN
	1    1550 1810
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 67E3150B
P 2140 1820
F 0 "JP?" H 2140 2005 50  0000 C CNN
F 1 "Jumper_NO_Small" H 2140 1914 50  0000 C CNN
F 2 "" H 2140 1820 50  0001 C CNN
F 3 "~" H 2140 1820 50  0001 C CNN
	1    2140 1820
	1    0    0    -1  
$EndComp
Wire Wire Line
	3020 1480 1450 1480
Wire Wire Line
	930  1580 2040 1580
Wire Wire Line
	3000 1980 1650 1980
Wire Wire Line
	950  2080 2240 2080
Wire Wire Line
	1450 1810 1450 1480
Connection ~ 1450 1480
Wire Wire Line
	1450 1480 930  1480
Wire Wire Line
	1650 1810 1650 1980
Connection ~ 1650 1980
Wire Wire Line
	1650 1980 950  1980
Wire Wire Line
	2040 1820 2040 1580
Connection ~ 2040 1580
Wire Wire Line
	2040 1580 3020 1580
Wire Wire Line
	2240 1820 2240 2080
Connection ~ 2240 2080
Wire Wire Line
	2240 2080 3040 2080
Text Notes 2470 1760 0    50   ~ 0
MOSTKOWANIE
$Comp
L power:+3V3 #PWR?
U 1 1 67E398B8
P 6080 820
F 0 "#PWR?" H 6080 670 50  0001 C CNN
F 1 "+3V3" H 6095 993 50  0000 C CNN
F 2 "" H 6080 820 50  0001 C CNN
F 3 "" H 6080 820 50  0001 C CNN
	1    6080 820 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67E3A3D8
P 6080 1530
F 0 "#PWR?" H 6080 1280 50  0001 C CNN
F 1 "GND" H 6085 1357 50  0000 C CNN
F 2 "" H 6080 1530 50  0001 C CNN
F 3 "" H 6080 1530 50  0001 C CNN
	1    6080 1530
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 67E3B4B9
P 6080 1180
F 0 "C?" H 6195 1226 50  0000 L CNN
F 1 "100n" H 6195 1135 50  0000 L CNN
F 2 "" H 6118 1030 50  0001 C CNN
F 3 "~" H 6080 1180 50  0001 C CNN
	1    6080 1180
	1    0    0    -1  
$EndComp
Wire Wire Line
	6080 820  6080 1030
Wire Wire Line
	6080 1330 6080 1530
Text GLabel 3880 1430 0    50   Input ~ 0
VM
Wire Wire Line
	4010 1430 3880 1430
Text GLabel 6650 910  0    50   Input ~ 0
VM
$Comp
L Device:D_Schottky D?
U 1 1 67E41C38
P 7400 1150
F 0 "D?" V 7354 1230 50  0000 L CNN
F 1 "D_Schottky 6,8 V" V 7445 1230 50  0000 L CNN
F 2 "" H 7400 1150 50  0001 C CNN
F 3 "~" H 7400 1150 50  0001 C CNN
	1    7400 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 67E428F8
P 7400 1570
F 0 "R?" H 7470 1616 50  0000 L CNN
F 1 "100k" H 7470 1525 50  0000 L CNN
F 2 "" V 7330 1570 50  0001 C CNN
F 3 "~" H 7400 1570 50  0001 C CNN
	1    7400 1570
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67E42C3E
P 8100 1140
F 0 "R?" H 8170 1186 50  0000 L CNN
F 1 "1" H 8170 1095 50  0000 L CNN
F 2 "" V 8030 1140 50  0001 C CNN
F 3 "~" H 8100 1140 50  0001 C CNN
	1    8100 1140
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 67E4304B
P 8100 1540
F 0 "C?" H 8215 1586 50  0000 L CNN
F 1 "10u" H 8215 1495 50  0000 L CNN
F 2 "" H 8138 1390 50  0001 C CNN
F 3 "~" H 8100 1540 50  0001 C CNN
	1    8100 1540
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 67E439CE
P 8500 1150
F 0 "C?" H 8615 1196 50  0000 L CNN
F 1 "100n" H 8615 1105 50  0000 L CNN
F 2 "" H 8538 1000 50  0001 C CNN
F 3 "~" H 8500 1150 50  0001 C CNN
	1    8500 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67E32591
P 4420 2420
F 0 "#PWR?" H 4420 2170 50  0001 C CNN
F 1 "GND" H 4425 2247 50  0000 C CNN
F 2 "" H 4420 2420 50  0001 C CNN
F 3 "" H 4420 2420 50  0001 C CNN
	1    4420 2420
	1    0    0    -1  
$EndComp
Wire Wire Line
	4420 2220 4420 2260
$Comp
L power:GND #PWR?
U 1 1 67E33375
P 7400 1810
F 0 "#PWR?" H 7400 1560 50  0001 C CNN
F 1 "GND" H 7405 1637 50  0000 C CNN
F 2 "" H 7400 1810 50  0001 C CNN
F 3 "" H 7400 1810 50  0001 C CNN
	1    7400 1810
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67E3374B
P 8100 1820
F 0 "#PWR?" H 8100 1570 50  0001 C CNN
F 1 "GND" H 8105 1647 50  0000 C CNN
F 2 "" H 8100 1820 50  0001 C CNN
F 3 "" H 8100 1820 50  0001 C CNN
	1    8100 1820
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67E339E3
P 8500 1820
F 0 "#PWR?" H 8500 1570 50  0001 C CNN
F 1 "GND" H 8505 1647 50  0000 C CNN
F 2 "" H 8500 1820 50  0001 C CNN
F 3 "" H 8500 1820 50  0001 C CNN
	1    8500 1820
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1300 8500 1820
Wire Wire Line
	8100 1690 8100 1820
Wire Wire Line
	8100 1290 8100 1390
Wire Wire Line
	7400 1300 7400 1420
Wire Wire Line
	7400 1720 7400 1810
Wire Wire Line
	4820 1970 4820 2260
Wire Wire Line
	4820 2260 4420 2260
Connection ~ 4420 2260
Wire Wire Line
	4420 2260 4420 2420
$Comp
L Device:Q_PMOS_GSD Q?
U 1 1 67E3DE47
P 7080 1010
F 0 "Q?" V 7422 1010 50  0000 C CNN
F 1 "Q_PMOS_GSD" V 7331 1010 50  0000 C CNN
F 2 "" H 7280 1110 50  0001 C CNN
F 3 "~" H 7080 1010 50  0001 C CNN
	1    7080 1010
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
