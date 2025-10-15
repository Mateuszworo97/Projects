EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
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
P 860 2550
F 0 "POMPA_1" H 778 2225 50  0000 C CNN
F 1 "Conn_01x02" H 778 2316 50  0000 C CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 860 2550 50  0001 C CNN
F 3 "~" H 860 2550 50  0001 C CNN
	1    860  2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 2500 3150 2450
Wire Wire Line
	3150 2600 3150 2550
$Comp
L library-ApiaryWater:drv8835 U?
U 1 1 67E33780
P 4550 2700
F 0 "U?" H 4360 3170 50  0000 C CNN
F 1 "drv8835" H 4760 3180 50  0000 C CNN
F 2 "" H 4550 2700 50  0001 C CNN
F 3 "" H 4550 2700 50  0001 C CNN
	1    4550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2500 4140 2500
Wire Wire Line
	3150 2600 4140 2600
$Comp
L Connector_Generic:Conn_01x02 POMPA_2
U 1 1 67E20A22
P 880 3050
F 0 "POMPA_2" H 798 2725 50  0000 C CNN
F 1 "Conn_01x02" H 798 2816 50  0000 C CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 880 3050 50  0001 C CNN
F 3 "~" H 880 3050 50  0001 C CNN
	1    880  3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4140 2700 3130 2700
Wire Wire Line
	3130 2700 3130 2950
Wire Wire Line
	4140 2800 3170 2800
Wire Wire Line
	3170 2800 3170 3050
Text GLabel 5280 2400 2    50   Input ~ 0
BENABLE
Text GLabel 5270 2500 2    50   Input ~ 0
BPHASE
Text GLabel 5270 2600 2    50   Input ~ 0
AENBL
Text GLabel 5270 2700 2    50   Input ~ 0
APHASE
Text GLabel 5270 2800 2    50   Input ~ 0
MODE
Text HLabel 890  1000 0    50   Input ~ 0
APHASE
Text HLabel 890  790  0    50   Input ~ 0
BPHASE
Text HLabel 890  900  0    50   Input ~ 0
AENABLE
Text HLabel 890  700  0    50   Input ~ 0
BENABLE
Text HLabel 890  1100 0    50   Input ~ 0
MODE
Text GLabel 1090 700  2    50   Input ~ 0
BENABLE
Text GLabel 1090 790  2    50   Input ~ 0
BPHASE
Text GLabel 1090 900  2    50   Input ~ 0
AENABLE
Text GLabel 1090 1000 2    50   Input ~ 0
APHASE
Text GLabel 1090 1100 2    50   Input ~ 0
MODE
Wire Wire Line
	1090 700  890  700 
Wire Wire Line
	1090 790  890  790 
Wire Wire Line
	1090 900  890  900 
Wire Wire Line
	1090 1000 890  1000
Wire Wire Line
	1090 1100 890  1100
Text Notes 3610 710  0    118  ~ 0
DRIVER
Text Label 2590 2450 0    50   ~ 0
PUMP_POWER
Text Label 2580 2550 0    50   ~ 0
PUMP_POWER
Text Label 2550 2950 0    50   ~ 0
PUMP_POWER
Text Label 2560 3050 0    50   ~ 0
PUMP_POWER
Text Label 4980 2400 0    50   ~ 0
DIGITAL
Wire Wire Line
	4950 2400 5280 2400
Wire Wire Line
	4950 2500 5270 2500
Wire Wire Line
	4950 2600 5270 2600
Wire Wire Line
	4950 2700 5270 2700
Wire Wire Line
	4950 2800 5270 2800
Text Label 4980 2500 0    50   ~ 0
DIGITAL
Text Label 4980 2600 0    50   ~ 0
DIGITAL
Text Label 4980 2700 0    50   ~ 0
DIGITAL
Text Label 4980 2800 0    50   ~ 0
DIGITAL
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 67E30C26
P 1680 2780
F 0 "JP?" H 1680 2965 50  0000 C CNN
F 1 "Jumper_NO_Small" H 1530 2870 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 1680 2780 50  0001 C CNN
F 3 "~" H 1680 2780 50  0001 C CNN
	1    1680 2780
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 67E3150B
P 2270 2790
F 0 "JP?" H 2270 2975 50  0000 C CNN
F 1 "Jumper_NO_Small" H 2270 2884 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 2270 2790 50  0001 C CNN
F 3 "~" H 2270 2790 50  0001 C CNN
	1    2270 2790
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2450 1580 2450
Wire Wire Line
	1060 2550 2170 2550
Wire Wire Line
	3130 2950 1780 2950
Wire Wire Line
	1080 3050 2370 3050
Wire Wire Line
	1580 2780 1580 2450
Connection ~ 1580 2450
Wire Wire Line
	1580 2450 1060 2450
Wire Wire Line
	1780 2780 1780 2950
Connection ~ 1780 2950
Wire Wire Line
	1780 2950 1080 2950
Wire Wire Line
	2170 2790 2170 2550
Connection ~ 2170 2550
Wire Wire Line
	2170 2550 3150 2550
Wire Wire Line
	2370 2790 2370 3050
Connection ~ 2370 3050
Wire Wire Line
	2370 3050 3170 3050
Text Notes 2600 2730 0    50   ~ 0
MOSTKOWANIE
$Comp
L power:GND #PWR0166
U 1 1 67E3A3D8
P 4820 1980
F 0 "#PWR0166" H 4820 1730 50  0001 C CNN
F 1 "GND" H 4825 1807 50  0000 C CNN
F 2 "" H 4820 1980 50  0001 C CNN
F 3 "" H 4820 1980 50  0001 C CNN
	1    4820 1980
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 67E3B4B9
P 4820 1720
F 0 "C?" H 4935 1766 50  0000 L CNN
F 1 "100n" H 4935 1675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4858 1570 50  0001 C CNN
F 3 "~" H 4820 1720 50  0001 C CNN
	1    4820 1720
	1    0    0    -1  
$EndComp
Text GLabel 4010 2400 0    50   Input ~ 0
VM
Wire Wire Line
	4140 2400 4010 2400
Text GLabel 8620 910  2    50   Input ~ 0
VM
$Comp
L Device:D_Schottky D?
U 1 1 67E41C38
P 7400 1150
F 0 "D?" V 7354 1230 50  0000 L CNN
F 1 "D_Schottky 6,8 V SMAZ6V8" V 7430 -270 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 7400 1150 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric" V 7330 1570 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric" V 8030 1140 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8138 1390 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8538 1000 50  0001 C CNN
F 3 "~" H 8500 1150 50  0001 C CNN
	1    8500 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 67E32591
P 4550 3390
F 0 "#PWR0167" H 4550 3140 50  0001 C CNN
F 1 "GND" H 4555 3217 50  0000 C CNN
F 2 "" H 4550 3390 50  0001 C CNN
F 3 "" H 4550 3390 50  0001 C CNN
	1    4550 3390
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3190 4550 3230
Wire Wire Line
	8100 1290 8100 1390
Wire Wire Line
	7400 1300 7400 1360
Wire Wire Line
	4950 2940 4950 3230
Wire Wire Line
	4950 3230 4550 3230
Connection ~ 4550 3230
Wire Wire Line
	4550 3230 4550 3390
$Comp
L Device:Q_PMOS_GSD Q?
U 1 1 67E3DE47
P 7080 1010
F 0 "Q?" V 7422 1010 50  0000 C CNN
F 1 "Q_PMOS_GSD" V 7331 1010 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7280 1110 50  0001 C CNN
F 3 "~" H 7080 1010 50  0001 C CNN
	1    7080 1010
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7080 1210 7080 1360
Wire Wire Line
	7080 1360 7400 1360
Connection ~ 7400 1360
Wire Wire Line
	7400 1360 7400 1420
Wire Wire Line
	7280 910  7400 910 
Wire Wire Line
	7400 910  7400 1000
Wire Wire Line
	7400 910  8100 910 
Wire Wire Line
	8100 910  8100 990 
Connection ~ 7400 910 
Wire Wire Line
	8100 910  8500 910 
Wire Wire Line
	8500 910  8500 1000
Connection ~ 8100 910 
Wire Wire Line
	8620 910  8500 910 
Connection ~ 8500 910 
Text GLabel 6540 910  0    50   Input ~ 0
VIN
Wire Wire Line
	6540 910  6880 910 
$Comp
L Connector_Generic:Conn_01x02 Wejscie_zasilania_pomp?
U 1 1 67FB261B
P 880 3690
F 0 "Wejscie_zasilania_pomp?" H 640 3370 50  0000 C CNN
F 1 "Conn_01x02" H 798 3456 50  0000 C CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 880 3690 50  0001 C CNN
F 3 "~" H 880 3690 50  0001 C CNN
	1    880  3690
	-1   0    0    1   
$EndComp
Text GLabel 1280 3590 2    50   Input ~ 0
VIN
$Comp
L power:GND #PWR0168
U 1 1 67FB2DE8
P 1470 4520
F 0 "#PWR0168" H 1470 4270 50  0001 C CNN
F 1 "GND" H 1475 4347 50  0000 C CNN
F 2 "" H 1470 4520 50  0001 C CNN
F 3 "" H 1470 4520 50  0001 C CNN
	1    1470 4520
	1    0    0    -1  
$EndComp
Wire Wire Line
	1280 3590 1080 3590
$Comp
L power:GNDA #PWR0169
U 1 1 67FB64A8
P 7400 1900
F 0 "#PWR0169" H 7400 1650 50  0001 C CNN
F 1 "GNDA" H 7405 1727 50  0000 C CNN
F 2 "" H 7400 1900 50  0001 C CNN
F 3 "" H 7400 1900 50  0001 C CNN
	1    7400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1720 7400 1900
$Comp
L power:GNDA #PWR0170
U 1 1 67FB77D4
P 8100 1910
F 0 "#PWR0170" H 8100 1660 50  0001 C CNN
F 1 "GNDA" H 8105 1737 50  0000 C CNN
F 2 "" H 8100 1910 50  0001 C CNN
F 3 "" H 8100 1910 50  0001 C CNN
	1    8100 1910
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1690 8100 1910
$Comp
L power:GNDA #PWR0171
U 1 1 67FB8A30
P 8500 1930
F 0 "#PWR0171" H 8500 1680 50  0001 C CNN
F 1 "GNDA" H 8505 1757 50  0000 C CNN
F 2 "" H 8500 1930 50  0001 C CNN
F 3 "" H 8500 1930 50  0001 C CNN
	1    8500 1930
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1300 8500 1930
Text Notes 745  4075 0    79   ~ 0
Oddzielenie masy cześci analogowej i cyfrowej
$Comp
L power:GNDA #PWR0172
U 1 1 67FBA9F4
P 2180 4530
F 0 "#PWR0172" H 2180 4280 50  0001 C CNN
F 1 "GNDA" H 2185 4357 50  0000 C CNN
F 2 "" H 2180 4530 50  0001 C CNN
F 3 "" H 2180 4530 50  0001 C CNN
	1    2180 4530
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0173
U 1 1 67FBB59E
P 1450 3690
F 0 "#PWR0173" H 1450 3440 50  0001 C CNN
F 1 "GNDA" H 1455 3517 50  0000 C CNN
F 2 "" H 1450 3690 50  0001 C CNN
F 3 "" H 1450 3690 50  0001 C CNN
	1    1450 3690
	1    0    0    -1  
$EndComp
Wire Wire Line
	1080 3690 1450 3690
Text Notes 2560 1960 0    50   ~ 0
Digital PART
Text Notes 7350 610  0    50   ~ 0
Analog Part
Wire Wire Line
	4820 1980 4820 1870
Wire Wire Line
	4820 1570 4820 1500
Wire Wire Line
	4820 1500 4550 1500
Connection ~ 4550 1500
Wire Wire Line
	4550 1500 4550 2200
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 68EF4B8A
P 1720 4335
F 0 "J?" H 1760 4215 50  0000 C CNN
F 1 "Conn_02x01" H 1770 4461 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1720 4335 50  0001 C CNN
F 3 "~" H 1720 4335 50  0001 C CNN
	1    1720 4335
	1    0    0    -1  
$EndComp
Wire Wire Line
	1470 4335 1520 4335
Wire Wire Line
	1470 4335 1470 4520
Wire Wire Line
	2020 4335 2180 4335
Wire Wire Line
	2180 4335 2180 4530
Text Notes 5260 785  0    50   ~ 0
Tranzystor P-MOSFET FDN338P SOT23 
$Comp
L power:VDD #PWR?
U 1 1 68F93D47
P 4550 1350
F 0 "#PWR?" H 4550 1200 50  0001 C CNN
F 1 "VDD" H 4565 1523 50  0000 C CNN
F 2 "" H 4550 1350 50  0001 C CNN
F 3 "" H 4550 1350 50  0001 C CNN
	1    4550 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1350 4550 1500
Text GLabel 1090 1225 2    50   Input ~ 0
VM
Text HLabel 870  1225 0    50   Input ~ 0
VM
Wire Wire Line
	1090 1225 870  1225
$EndSCHEMATC
