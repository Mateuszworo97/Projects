EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 9
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
L Device:CP C16
U 1 1 67F97715
P 1410 2290
F 0 "C16" H 1528 2336 50  0000 L CNN
F 1 "10uF(25V)" H 1528 2245 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-6032-15_Kemet-U" H 1448 2140 50  0001 C CNN
F 3 "~" H 1410 2290 50  0001 C CNN
	1    1410 2290
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0207
U 1 1 67F97C0A
P 2230 2650
F 0 "#PWR0207" H 2230 2400 50  0001 C CNN
F 1 "GND" H 2235 2477 50  0000 C CNN
F 2 "" H 2230 2650 50  0001 C CNN
F 3 "" H 2230 2650 50  0001 C CNN
	1    2230 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0208
U 1 1 67F9830C
P 2920 2520
F 0 "#PWR0208" H 2920 2270 50  0001 C CNN
F 1 "GND" H 2925 2347 50  0000 C CNN
F 2 "" H 2920 2520 50  0001 C CNN
F 3 "" H 2920 2520 50  0001 C CNN
	1    2920 2520
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0209
U 1 1 67F9876B
P 1410 2570
F 0 "#PWR0209" H 1410 2320 50  0001 C CNN
F 1 "GND" H 1415 2397 50  0000 C CNN
F 2 "" H 1410 2570 50  0001 C CNN
F 3 "" H 1410 2570 50  0001 C CNN
	1    1410 2570
	1    0    0    -1  
$EndComp
Wire Wire Line
	1410 2570 1410 2440
$Comp
L Device:CP C17
U 1 1 67F99DBD
P 2920 2330
F 0 "C17" H 3038 2376 50  0000 L CNN
F 1 "10uF(25V)" H 3038 2285 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-6032-15_Kemet-U" H 2958 2180 50  0001 C CNN
F 3 "~" H 2920 2330 50  0001 C CNN
	1    2920 2330
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D6
U 1 1 67F9ACDF
P 3100 2050
F 0 "D6" H 3100 1843 50  0000 C CNN
F 1 "D_Small" H 3100 1934 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" V 3100 2050 50  0001 C CNN
F 3 "~" V 3100 2050 50  0001 C CNN
	1    3100 2050
	-1   0    0    1   
$EndComp
$Comp
L power:+5VA #PWR0211
U 1 1 67F9ED82
P 3470 2050
F 0 "#PWR0211" H 3470 1900 50  0001 C CNN
F 1 "+5VA" H 3485 2223 50  0000 C CNN
F 2 "" H 3470 2050 50  0001 C CNN
F 3 "" H 3470 2050 50  0001 C CNN
	1    3470 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 67FA01B7
P 3850 2520
F 0 "J5" H 3958 2801 50  0000 C CNN
F 1 "Conn_01x03_Male" H 3900 2140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3850 2520 50  0001 C CNN
F 3 "~" H 3850 2520 50  0001 C CNN
	1    3850 2520
	1    0    0    -1  
$EndComp
Connection ~ 2920 2050
Wire Wire Line
	2920 2050 3000 2050
Wire Wire Line
	1000 2050 1410 2050
Wire Wire Line
	1410 2140 1410 2050
Connection ~ 1410 2050
Wire Wire Line
	3470 2050 3200 2050
Wire Wire Line
	3470 2050 4150 2050
Wire Wire Line
	4150 2050 4150 2420
Wire Wire Line
	4150 2420 4050 2420
Connection ~ 3470 2050
$Comp
L power:+5V #PWR0212
U 1 1 67FA3965
P 4770 2680
F 0 "#PWR0212" H 4770 2530 50  0001 C CNN
F 1 "+5V" H 4785 2853 50  0000 C CNN
F 2 "" H 4770 2680 50  0001 C CNN
F 3 "" H 4770 2680 50  0001 C CNN
	1    4770 2680
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2520 4390 2520
Wire Wire Line
	4390 2520 4390 2700
Wire Wire Line
	4390 2700 4540 2700
Wire Wire Line
	4770 2700 4770 2680
Wire Wire Line
	4770 2700 4980 2700
Connection ~ 4770 2700
$Comp
L Jumper:Jumper_2_Open JP67
U 1 1 67FA53C3
P 2720 3440
F 0 "JP67" H 2720 3675 50  0000 C CNN
F 1 "Jumper_2_Open" H 2720 3584 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 2720 3440 50  0001 C CNN
F 3 "~" H 2720 3440 50  0001 C CNN
	1    2720 3440
	1    0    0    -1  
$EndComp
$Comp
L ApiaryWaterDispensingSystem:STS7PF30L U9
U 1 1 67FAB112
P 2730 3920
F 0 "U9" H 3104 3886 50  0000 L CNN
F 1 "STS7PF30L" H 3104 3795 50  0000 L CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 2730 3920 50  0001 C CNN
F 3 "" H 2730 3920 50  0001 C CNN
	1    2730 3920
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 67FACB38
P 1990 4030
F 0 "R28" H 2060 4076 50  0000 L CNN
F 1 "4k7" H 2060 3985 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1920 4030 50  0001 C CNN
F 3 "~" H 1990 4030 50  0001 C CNN
	1    1990 4030
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 67FB060E
P 5400 3170
F 0 "C20" H 5515 3216 50  0000 L CNN
F 1 "100n" H 5515 3125 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5438 3020 50  0001 C CNN
F 3 "~" H 5400 3170 50  0001 C CNN
	1    5400 3170
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 67FB1275
P 4980 3020
F 0 "C21" H 5095 3066 50  0000 L CNN
F 1 "1uF_X5R" H 5095 2975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5018 2870 50  0001 C CNN
F 3 "~" H 4980 3020 50  0001 C CNN
	1    4980 3020
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 67FB189D
P 6800 2950
F 0 "C18" H 6915 2996 50  0000 L CNN
F 1 "1uF_X5R_0603" H 6220 2730 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6838 2800 50  0001 C CNN
F 3 "~" H 6800 2950 50  0001 C CNN
	1    6800 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 67FB2098
P 7200 3150
F 0 "C19" H 7315 3196 50  0000 L CNN
F 1 "100nF" H 7315 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7238 3000 50  0001 C CNN
F 3 "~" H 7200 3150 50  0001 C CNN
	1    7200 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 67FB298A
P 4540 2920
F 0 "R32" H 4610 2966 50  0000 L CNN
F 1 "4k7" H 4610 2875 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4470 2920 50  0001 C CNN
F 3 "~" H 4540 2920 50  0001 C CNN
	1    4540 2920
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 67FB2F5D
P 4540 3290
F 0 "D7" V 4579 3172 50  0000 R CNN
F 1 "LED" V 4488 3172 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 4540 3290 50  0001 C CNN
F 3 "~" H 4540 3290 50  0001 C CNN
	1    4540 3290
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4540 2770 4540 2700
Connection ~ 4540 2700
Wire Wire Line
	4540 2700 4770 2700
Wire Wire Line
	4540 3140 4540 3070
$Comp
L power:GND #PWR0214
U 1 1 67FB45A3
P 4540 3570
F 0 "#PWR0214" H 4540 3320 50  0001 C CNN
F 1 "GND" H 4545 3397 50  0000 C CNN
F 2 "" H 4540 3570 50  0001 C CNN
F 3 "" H 4540 3570 50  0001 C CNN
	1    4540 3570
	1    0    0    -1  
$EndComp
Wire Wire Line
	4540 3570 4540 3440
$Comp
L power:GND #PWR0215
U 1 1 67FB4FC3
P 4980 3260
F 0 "#PWR0215" H 4980 3010 50  0001 C CNN
F 1 "GND" H 4985 3087 50  0000 C CNN
F 2 "" H 4980 3260 50  0001 C CNN
F 3 "" H 4980 3260 50  0001 C CNN
	1    4980 3260
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0216
U 1 1 67FB558B
P 5400 3410
F 0 "#PWR0216" H 5400 3160 50  0001 C CNN
F 1 "GND" H 5405 3237 50  0000 C CNN
F 2 "" H 5400 3410 50  0001 C CNN
F 3 "" H 5400 3410 50  0001 C CNN
	1    5400 3410
	1    0    0    -1  
$EndComp
Wire Wire Line
	4980 2870 4980 2700
Connection ~ 4980 2700
Wire Wire Line
	4980 2700 5400 2700
Wire Wire Line
	4980 3170 4980 3260
Wire Wire Line
	5400 3410 5400 3320
Connection ~ 5400 2700
Wire Wire Line
	5400 2700 5590 2700
$Comp
L power:GND #PWR0217
U 1 1 67FB72CE
P 5890 3420
F 0 "#PWR0217" H 5890 3170 50  0001 C CNN
F 1 "GND" H 5895 3247 50  0000 C CNN
F 2 "" H 5890 3420 50  0001 C CNN
F 3 "" H 5890 3420 50  0001 C CNN
	1    5890 3420
	1    0    0    -1  
$EndComp
Wire Wire Line
	5890 3350 5890 3420
Wire Wire Line
	2600 3820 2530 3820
Wire Wire Line
	2530 3820 2460 3820
Connection ~ 2530 3820
Wire Wire Line
	2460 3820 2460 3440
Wire Wire Line
	2460 3440 2520 3440
Connection ~ 2460 3820
Wire Wire Line
	2460 3820 1990 3820
Wire Wire Line
	1990 3880 1990 3820
Connection ~ 1990 3820
Wire Wire Line
	1990 3820 1800 3820
Wire Wire Line
	2850 3820 2920 3820
Wire Wire Line
	2990 3820 2920 3820
Connection ~ 2920 3820
Wire Wire Line
	2990 3820 3060 3820
Connection ~ 2990 3820
Wire Wire Line
	3060 3820 3160 3820
Wire Wire Line
	3160 3820 3160 3440
Wire Wire Line
	3160 3440 2920 3440
Connection ~ 3060 3820
Wire Wire Line
	3160 3820 4250 3820
Wire Wire Line
	4250 3820 4250 2620
Wire Wire Line
	4250 2620 4050 2620
Connection ~ 3160 3820
Wire Wire Line
	1990 4180 1990 4340
Wire Wire Line
	1990 4340 2870 4340
Wire Wire Line
	2870 4340 2870 4180
Text HLabel 1480 4340 0    50   Output ~ 0
PWR_ENn
Wire Wire Line
	1990 4340 1480 4340
Connection ~ 1990 4340
$Comp
L power:GND #PWR0218
U 1 1 67F9802C
P 6800 3380
F 0 "#PWR0218" H 6800 3130 50  0001 C CNN
F 1 "GND" H 6805 3207 50  0000 C CNN
F 2 "" H 6800 3380 50  0001 C CNN
F 3 "" H 6800 3380 50  0001 C CNN
	1    6800 3380
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3300 7200 3340
Wire Wire Line
	7200 3340 6800 3340
Wire Wire Line
	6800 3340 6800 3100
Wire Wire Line
	6800 3340 6800 3380
Connection ~ 6800 3340
Wire Wire Line
	7200 2800 7200 3000
Wire Wire Line
	7400 2800 7200 2800
Wire Wire Line
	7800 2800 7870 2800
$Comp
L power:+3.3V #PWR0219
U 1 1 67FA03D9
P 7870 2760
F 0 "#PWR0219" H 7870 2610 50  0001 C CNN
F 1 "+3.3V" H 7710 2910 50  0000 C CNN
F 2 "" H 7870 2760 50  0001 C CNN
F 3 "" H 7870 2760 50  0001 C CNN
	1    7870 2760
	1    0    0    -1  
$EndComp
Wire Wire Line
	7870 2760 7870 2800
Connection ~ 7870 2800
$Comp
L power:VDD #PWR0238
U 1 1 6830AB4B
P 8955 2800
F 0 "#PWR0238" H 8955 2650 50  0001 C CNN
F 1 "VDD" H 8970 2973 50  0000 C CNN
F 2 "" H 8955 2800 50  0001 C CNN
F 3 "" H 8955 2800 50  0001 C CNN
	1    8955 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5VP #PWR0239
U 1 1 68379F03
P 1800 3620
F 0 "#PWR0239" H 1800 3470 50  0001 C CNN
F 1 "+5VP" H 1815 3793 50  0000 C CNN
F 2 "" H 1800 3620 50  0001 C CNN
F 3 "" H 1800 3620 50  0001 C CNN
	1    1800 3620
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3620 1800 3820
$Comp
L Regulator_Linear:LD1117S50TR_SOT223 U8
U 1 1 68332228
P 2230 2050
F 0 "U8" H 2230 2292 50  0000 C CNN
F 1 "LD1117S50TR_SOT223" H 2230 2201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2230 2250 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 2330 1800 50  0001 C CNN
	1    2230 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2530 2050 2920 2050
Wire Wire Line
	1410 2050 1930 2050
Wire Wire Line
	2230 2350 2230 2650
Wire Wire Line
	2920 2050 2920 2180
Wire Wire Line
	2920 2480 2920 2520
Text HLabel 1115 920  0    50   Output ~ 0
PWR_ENn
Text GLabel 1285 920  2    50   Output ~ 0
PWR_ENn
Wire Wire Line
	1285 920  1115 920 
Text Notes 925  2375 0    50   ~ 0
good
$Comp
L Jumper:Jumper_2_Open JP68
U 1 1 67F9CBCE
P 7600 2800
F 0 "JP68" H 7470 2920 50  0000 C CNN
F 1 "Jumper_2_Open" H 7560 2630 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7600 2800 50  0001 C CNN
F 3 "~" H 7600 2800 50  0001 C CNN
	1    7600 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J6
U 1 1 68EED7C1
P 8520 2800
F 0 "J6" H 8570 3017 50  0000 C CNN
F 1 "Conn_02x01" H 8570 2926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8520 2800 50  0001 C CNN
F 3 "~" H 8520 2800 50  0001 C CNN
	1    8520 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7870 2800 8320 2800
Wire Wire Line
	8955 2800 8820 2800
$Comp
L Connector_Generic:Conn_01x02 J18
U 1 1 68ED6183
P 640 2150
F 0 "J18" H 558 1825 50  0000 C CNN
F 1 "Conn_01x02" H 558 1916 50  0000 C CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Vertical" H 640 2150 50  0001 C CNN
F 3 "~" H 640 2150 50  0001 C CNN
	1    640  2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 2050 840  2050
Connection ~ 1000 2050
$Comp
L power:GND #PWR027
U 1 1 68ED818B
P 895 2150
F 0 "#PWR027" H 895 1900 50  0001 C CNN
F 1 "GND" H 900 1977 50  0000 C CNN
F 2 "" H 895 2150 50  0001 C CNN
F 3 "" H 895 2150 50  0001 C CNN
	1    895  2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	895  2150 840  2150
Text GLabel 1285 1050 2    50   Output ~ 0
VM
Text HLabel 1115 1050 0    50   Output ~ 0
VM
Wire Wire Line
	1285 1050 1115 1050
Text GLabel 915  1755 0    50   Output ~ 0
VM
Wire Wire Line
	915  1755 1000 1755
Wire Wire Line
	1000 1755 1000 2050
$Comp
L ApiaryWaterDispensingSystem:LD39050PU33 U12
U 1 1 69136F8C
P 5910 2700
F 0 "U12" H 5930 3065 50  0000 C CNN
F 1 "LD39050PU33" H 5930 2974 50  0000 C CNN
F 2 "Package_SON:WSON-6-1EP_3x3mm_P0.95mm" H 5910 2700 50  0001 C CNN
F 3 "" H 5910 2700 50  0001 C CNN
	1    5910 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6270 2700 6800 2700
Wire Wire Line
	6800 2700 6800 2800
Wire Wire Line
	6800 2700 7200 2700
Wire Wire Line
	7200 2700 7200 2800
Connection ~ 6800 2700
Connection ~ 7200 2800
NoConn ~ 6270 2600
NoConn ~ 6270 2800
Wire Wire Line
	5400 2700 5400 2800
Wire Wire Line
	5590 2800 5400 2800
Connection ~ 5400 2800
Wire Wire Line
	5400 2800 5400 3020
Wire Wire Line
	5910 3100 5910 3205
Wire Wire Line
	5910 3350 5890 3350
Wire Wire Line
	5990 3100 5990 3205
Wire Wire Line
	5990 3205 5910 3205
Connection ~ 5910 3205
Wire Wire Line
	5910 3205 5910 3350
$EndSCHEMATC
