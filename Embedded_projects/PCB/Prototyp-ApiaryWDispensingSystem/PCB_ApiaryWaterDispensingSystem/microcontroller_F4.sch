EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
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
L Switch:SW_Push_Dual SW1
U 1 1 67E57DF4
P 1510 5450
F 0 "SW1" V 1556 5162 50  0000 R CNN
F 1 "SW_Push_Dual" V 1260 6050 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 1510 5650 50  0001 C CNN
F 3 "~" H 1510 5650 50  0001 C CNN
	1    1510 5450
	0    1    -1   0   
$EndComp
$Comp
L Device:R R30
U 1 1 67E58DD1
P 1510 4940
F 0 "R30" H 1580 4986 50  0000 L CNN
F 1 "4k7" H 1580 4895 50  0000 L CNN
F 2 "" V 1440 4940 50  0001 C CNN
F 3 "~" H 1510 4940 50  0001 C CNN
	1    1510 4940
	1    0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 67E58F23
P 1060 5830
F 0 "R29" V 853 5830 50  0000 C CNN
F 1 "100" V 944 5830 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 990 5830 50  0001 C CNN
F 3 "~" H 1060 5830 50  0001 C CNN
	1    1060 5830
	0    1    1    0   
$EndComp
$Comp
L Device:C C15
U 1 1 67E59970
P 720 5460
F 0 "C15" H 835 5506 50  0000 L CNN
F 1 "100nF" H 835 5415 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 758 5310 50  0001 C CNN
F 3 "~" H 720 5460 50  0001 C CNN
	1    720  5460
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP17
U 1 1 67E5AD17
P 1970 5160
F 0 "JP17" H 1970 5395 50  0000 C CNN
F 1 "Jumper_2_Open" H 1970 5010 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 1970 5160 50  0001 C CNN
F 3 "~" H 1970 5160 50  0001 C CNN
	1    1970 5160
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F4:STM32F411RETx U?
U 1 1 67E5B943
P 5010 3760
F 0 "U?" H 4430 1970 50  0000 C CNN
F 1 "STM32F411RETx" H 5680 1970 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 4410 2060 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00115249.pdf" H 5010 3760 50  0001 C CNN
	1    5010 3760
	1    0    0    -1  
$EndComp
Wire Wire Line
	1510 5250 1510 5160
Wire Wire Line
	1310 5250 1310 5160
Wire Wire Line
	1310 5160 1510 5160
Connection ~ 1510 5160
Wire Wire Line
	1510 5160 1510 5090
$Comp
L power:GND #PWR0102
U 1 1 67E6F472
P 1510 5970
F 0 "#PWR0102" H 1510 5720 50  0001 C CNN
F 1 "GND" H 1515 5797 50  0000 C CNN
F 2 "" H 1510 5970 50  0001 C CNN
F 3 "" H 1510 5970 50  0001 C CNN
	1    1510 5970
	1    0    0    -1  
$EndComp
Wire Wire Line
	1510 5650 1510 5830
Wire Wire Line
	1310 5650 1310 5830
Wire Wire Line
	1310 5830 1510 5830
Connection ~ 1510 5830
Wire Wire Line
	1510 5830 1510 5970
Wire Wire Line
	910  5830 720  5830
Wire Wire Line
	720  5830 720  5610
Wire Wire Line
	1310 5160 720  5160
Wire Wire Line
	720  5160 720  5310
Connection ~ 1310 5160
Wire Wire Line
	4310 5160 2170 5160
$Comp
L Device:Crystal_GND23_Small Y2
U 1 1 67E82DBE
P 2900 5610
F 0 "Y2" V 2854 5754 50  0000 L CNN
F 1 "Crystal_GND23_Small" V 2920 4650 50  0000 L CNN
F 2 "ApiaryWaterDispensingSystem:ABS25-32768KHZ-6-T_Abracon" H 2900 5610 50  0001 C CNN
F 3 "~" H 2900 5610 50  0001 C CNN
	1    2900 5610
	0    1    1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 67E84A86
P 3360 5260
F 0 "R34" V 3470 5050 50  0000 L CNN
F 1 "0" V 3470 5350 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3290 5260 50  0001 C CNN
F 3 "~" H 3360 5260 50  0001 C CNN
	1    3360 5260
	0    1    1    0   
$EndComp
$Comp
L Device:R R36
U 1 1 67E86969
P 3350 5960
F 0 "R36" V 3460 5750 50  0000 L CNN
F 1 "0" V 3460 6050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3280 5960 50  0001 C CNN
F 3 "~" H 3350 5960 50  0001 C CNN
	1    3350 5960
	0    1    1    0   
$EndComp
Wire Wire Line
	3510 5260 4310 5260
Wire Wire Line
	4310 5360 3760 5360
Wire Wire Line
	3760 5360 3760 5960
Wire Wire Line
	3760 5960 3500 5960
$Comp
L Device:C C31
U 1 1 67E89150
P 2640 5260
F 0 "C31" V 2770 5050 50  0000 L CNN
F 1 "4.3pF" V 2770 5270 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2678 5110 50  0001 C CNN
F 3 "~" H 2640 5260 50  0001 C CNN
	1    2640 5260
	0    1    1    0   
$EndComp
$Comp
L Device:C C32
U 1 1 67E8A35F
P 2590 5960
F 0 "C32" V 2730 5790 50  0000 L CNN
F 1 "4.3pF" V 2730 6030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2628 5810 50  0001 C CNN
F 3 "~" H 2590 5960 50  0001 C CNN
	1    2590 5960
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 67E8C2FD
P 2350 5470
F 0 "#PWR0103" H 2350 5220 50  0001 C CNN
F 1 "GND" H 2180 5420 50  0000 C CNN
F 2 "" H 2350 5470 50  0001 C CNN
F 3 "" H 2350 5470 50  0001 C CNN
	1    2350 5470
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 67E8C650
P 2340 6180
F 0 "#PWR0104" H 2340 5930 50  0001 C CNN
F 1 "GND" H 2345 6007 50  0000 C CNN
F 2 "" H 2340 6180 50  0001 C CNN
F 3 "" H 2340 6180 50  0001 C CNN
	1    2340 6180
	1    0    0    -1  
$EndComp
Wire Wire Line
	2490 5260 2350 5260
Wire Wire Line
	2350 5260 2350 5470
Wire Wire Line
	2340 6180 2340 5960
Wire Wire Line
	2340 5960 2440 5960
Wire Wire Line
	2790 5260 2900 5260
Wire Wire Line
	2740 5960 2900 5960
Wire Wire Line
	2900 5710 2900 5960
Connection ~ 2900 5960
Wire Wire Line
	2900 5960 3200 5960
Wire Wire Line
	2900 5520 2900 5510
Connection ~ 2900 5260
Wire Wire Line
	2900 5260 3210 5260
Connection ~ 2900 5510
Wire Wire Line
	2900 5510 2900 5260
Text GLabel 4080 5060 0    50   Input ~ 0
PC12
Text GLabel 4080 4960 0    50   Input ~ 0
PC11
Text GLabel 4080 4860 0    50   Input ~ 0
PC10
Text GLabel 4080 4760 0    50   Input ~ 0
PC9
Text GLabel 4080 4660 0    50   Input ~ 0
PC8
Wire Wire Line
	4310 4660 4080 4660
Wire Wire Line
	4080 4760 4310 4760
Wire Wire Line
	4310 4860 4080 4860
Wire Wire Line
	4310 4960 4080 4960
Wire Wire Line
	4310 5060 4080 5060
Text GLabel 4080 4560 0    50   Input ~ 0
PC7
Text GLabel 4080 4460 0    50   Input ~ 0
PC6
Text GLabel 4080 4360 0    50   Input ~ 0
PC5
Text GLabel 4080 4260 0    50   Input ~ 0
PC4
Text GLabel 4080 4160 0    50   Input ~ 0
PC3
Text GLabel 4080 4060 0    50   Input ~ 0
PC2
Text GLabel 4080 3860 0    50   Input ~ 0
PC0
Text GLabel 4080 3960 0    50   Input ~ 0
PC1
Wire Wire Line
	4310 4560 4080 4560
Wire Wire Line
	4310 4460 4080 4460
Wire Wire Line
	4310 4360 4080 4360
Wire Wire Line
	4310 4260 4080 4260
Wire Wire Line
	4310 4160 4080 4160
Wire Wire Line
	4310 4060 4080 4060
Wire Wire Line
	4310 3960 4080 3960
Wire Wire Line
	4310 3860 4080 3860
Text GLabel 4080 3660 0    50   Input ~ 0
PD2
Wire Wire Line
	4310 3660 4080 3660
$Comp
L Device:Crystal Y3
U 1 1 67E98A65
P 2690 3430
F 0 "Y3" V 2644 3561 50  0000 L CNN
F 1 "Crystal" V 2735 3561 50  0000 L CNN
F 2 "Crystal:Resonator-2Pin_W8.0mm_H3.5mm" H 2690 3430 50  0001 C CNN
F 3 "~" H 2690 3430 50  0001 C CNN
	1    2690 3430
	0    1    1    0   
$EndComp
$Comp
L Device:R R35
U 1 1 67E9BBA2
P 3310 3260
F 0 "R35" V 3410 3070 50  0000 L CNN
F 1 "R" V 3410 3360 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" V 3240 3260 50  0001 C CNN
F 3 "~" H 3310 3260 50  0001 C CNN
	1    3310 3260
	0    1    1    0   
$EndComp
$Comp
L Device:R R37
U 1 1 67E9C750
P 3310 3660
F 0 "R37" V 3430 3470 50  0000 L CNN
F 1 "R" V 3440 3770 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" V 3240 3660 50  0001 C CNN
F 3 "~" H 3310 3660 50  0001 C CNN
	1    3310 3660
	0    1    1    0   
$EndComp
$Comp
L Device:C C34
U 1 1 67E9D7D8
P 2110 3660
F 0 "C34" V 2240 3450 50  0000 L CNN
F 1 "4.3pF" V 2240 3670 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2148 3510 50  0001 C CNN
F 3 "~" H 2110 3660 50  0001 C CNN
	1    2110 3660
	0    1    1    0   
$EndComp
Wire Wire Line
	4310 3360 3730 3360
Wire Wire Line
	3730 3360 3730 3260
Wire Wire Line
	3730 3260 3700 3260
Wire Wire Line
	3160 3260 2690 3260
Wire Wire Line
	2690 3260 2690 3280
Wire Wire Line
	2690 3260 2280 3260
Connection ~ 2690 3260
Wire Wire Line
	4310 3460 3720 3460
Wire Wire Line
	3720 3460 3720 3660
Wire Wire Line
	3720 3660 3460 3660
Wire Wire Line
	2690 3580 2690 3660
Wire Wire Line
	2690 3660 3160 3660
Wire Wire Line
	2690 3660 2260 3660
Connection ~ 2690 3660
$Comp
L power:GND #PWR0105
U 1 1 67EA66E5
P 1590 3330
F 0 "#PWR0105" H 1590 3080 50  0001 C CNN
F 1 "GND" H 1420 3280 50  0000 C CNN
F 2 "" H 1590 3330 50  0001 C CNN
F 3 "" H 1590 3330 50  0001 C CNN
	1    1590 3330
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 67EA71FB
P 1610 3670
F 0 "#PWR0106" H 1610 3420 50  0001 C CNN
F 1 "GND" H 1440 3620 50  0000 C CNN
F 2 "" H 1610 3670 50  0001 C CNN
F 3 "" H 1610 3670 50  0001 C CNN
	1    1610 3670
	1    0    0    -1  
$EndComp
Wire Wire Line
	1960 3660 1610 3660
Wire Wire Line
	1610 3660 1610 3670
Wire Wire Line
	1980 3260 1590 3260
Wire Wire Line
	1590 3260 1590 3330
$Comp
L Jumper:Jumper_2_Open JP50
U 1 1 67EAB10E
P 2760 2930
F 0 "JP50" H 2760 3165 50  0000 C CNN
F 1 "Jumper_2_Open" H 2760 2780 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 2760 2930 50  0001 C CNN
F 3 "~" H 2760 2930 50  0001 C CNN
	1    2760 2930
	1    0    0    -1  
$EndComp
Text GLabel 2250 2930 0    50   BiDi ~ 0
MCO
Wire Wire Line
	2560 2930 2250 2930
Wire Wire Line
	2960 2930 3700 2930
Wire Wire Line
	3700 2930 3700 3260
Connection ~ 3700 3260
Wire Wire Line
	3700 3260 3460 3260
$Comp
L Device:C C26
U 1 1 67EAE946
P 3500 2660
F 0 "C26" V 3630 2450 50  0000 L CNN
F 1 "4.7uF" V 3630 2670 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3538 2510 50  0001 C CNN
F 3 "~" H 3500 2660 50  0001 C CNN
	1    3500 2660
	0    1    1    0   
$EndComp
Text Notes 1010 2580 0    50   ~ 0
Ceramic capacitor (low ESR,ESR < 1 ohm)
Wire Wire Line
	3350 2660 3110 2660
Wire Wire Line
	4310 2660 3650 2660
$Comp
L power:VDDA #PWR0107
U 1 1 67EB7A93
P 1900 8830
F 0 "#PWR0107" H 1900 8680 50  0001 C CNN
F 1 "VDDA" H 1915 9003 50  0000 C CNN
F 2 "" H 1900 8830 50  0001 C CNN
F 3 "" H 1900 8830 50  0001 C CNN
	1    1900 8830
	1    0    0    -1  
$EndComp
$Comp
L Device:C C30
U 1 1 67EB7F10
P 1900 9100
F 0 "C30" H 1990 9240 50  0000 L CNN
F 1 "100nF" H 1640 9230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1938 8950 50  0001 C CNN
F 3 "~" H 1900 9100 50  0001 C CNN
	1    1900 9100
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR0108
U 1 1 67EB896C
P 1900 9430
F 0 "#PWR0108" H 1900 9180 50  0001 C CNN
F 1 "GNDA" H 1905 9257 50  0000 C CNN
F 2 "" H 1900 9430 50  0001 C CNN
F 3 "" H 1900 9430 50  0001 C CNN
	1    1900 9430
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 8830 1900 8950
Wire Wire Line
	1900 9250 1900 9430
$Comp
L power:GND #PWR0109
U 1 1 67EBE434
P 1370 9780
F 0 "#PWR0109" H 1370 9530 50  0001 C CNN
F 1 "GND" H 1375 9607 50  0000 C CNN
F 2 "" H 1370 9780 50  0001 C CNN
F 3 "" H 1370 9780 50  0001 C CNN
	1    1370 9780
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0110
U 1 1 67EBF91F
P 2120 9810
F 0 "#PWR0110" H 2120 9560 50  0001 C CNN
F 1 "GNDA" H 2125 9637 50  0000 C CNN
F 2 "" H 2120 9810 50  0001 C CNN
F 3 "" H 2120 9810 50  0001 C CNN
	1    2120 9810
	1    0    0    -1  
$EndComp
Wire Wire Line
	1370 9700 1370 9780
$Comp
L Device:R R33
U 1 1 67EC18D8
P 3490 2460
F 0 "R33" V 3590 2270 50  0000 L CNN
F 1 "10k" V 3590 2560 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3420 2460 50  0001 C CNN
F 3 "~" H 3490 2460 50  0001 C CNN
	1    3490 2460
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4310 2460 3730 2460
Text GLabel 3630 2220 0    50   BiDi ~ 0
BOOT0
Wire Wire Line
	3630 2220 3730 2220
Wire Wire Line
	3730 2220 3730 2460
Connection ~ 3730 2460
Wire Wire Line
	3730 2460 3640 2460
$Comp
L power:GND #PWR0111
U 1 1 67EC5FCC
P 3110 2460
F 0 "#PWR0111" H 3110 2210 50  0001 C CNN
F 1 "GND" H 2940 2420 50  0000 C CNN
F 2 "" H 3110 2460 50  0001 C CNN
F 3 "" H 3110 2460 50  0001 C CNN
	1    3110 2460
	1    0    0    -1  
$EndComp
Wire Wire Line
	3110 2460 3340 2460
$Comp
L Device:C C29
U 1 1 67EC8E62
P 3750 1700
F 0 "C29" H 3870 1800 50  0000 L CNN
F 1 "1 uF_X5R_0603" H 3160 1820 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3788 1550 50  0001 C CNN
F 3 "~" H 3750 1700 50  0001 C CNN
	1    3750 1700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 67EC99C5
P 3750 1930
F 0 "#PWR0112" H 3750 1680 50  0001 C CNN
F 1 "GND" H 3755 1757 50  0000 C CNN
F 2 "" H 3750 1930 50  0001 C CNN
F 3 "" H 3750 1930 50  0001 C CNN
	1    3750 1930
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1930 3750 1850
$Comp
L Jumper:Jumper_2_Open JP45
U 1 1 67ECC056
P 3320 1550
F 0 "JP45" H 3320 1785 50  0000 C CNN
F 1 "Jumper_2_Open" H 3320 1400 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 3320 1550 50  0001 C CNN
F 3 "~" H 3320 1550 50  0001 C CNN
	1    3320 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4810 2060 4810 1550
Wire Wire Line
	4810 1550 3750 1550
Wire Wire Line
	3750 1550 3520 1550
Connection ~ 3750 1550
$Comp
L power:VDD #PWR0113
U 1 1 67ED1297
P 2850 1550
F 0 "#PWR0113" H 2850 1400 50  0001 C CNN
F 1 "VDD" H 2865 1723 50  0000 C CNN
F 2 "" H 2850 1550 50  0001 C CNN
F 3 "" H 2850 1550 50  0001 C CNN
	1    2850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1550 3120 1550
$Comp
L Jumper:Jumper_2_Open JP47
U 1 1 67ED416A
P 4200 1100
F 0 "JP47" H 4200 1240 50  0000 C CNN
F 1 "Jumper_2_Open" H 4290 950 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4200 1100 50  0001 C CNN
F 3 "~" H 4200 1100 50  0001 C CNN
	1    4200 1100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP43
U 1 1 67ED4C0E
P 4200 810
F 0 "JP43" H 4200 950 50  0000 C CNN
F 1 "Jumper_2_Open" H 4290 660 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4200 810 50  0001 C CNN
F 3 "~" H 4200 810 50  0001 C CNN
	1    4200 810 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1100 3960 1100
Wire Wire Line
	3960 1100 3960 1330
Text GLabel 4610 1100 2    50   Input ~ 0
PF5
Wire Wire Line
	4610 1100 4400 1100
Wire Wire Line
	4000 810  3960 810 
Wire Wire Line
	3960 810  3960 1100
Connection ~ 3960 1100
$Comp
L Jumper:Jumper_2_Open JP30
U 1 1 67EDC521
P 5500 1230
F 0 "JP30" H 5500 1370 50  0000 C CNN
F 1 "Jumper_2_Open" H 5590 1080 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 5500 1230 50  0001 C CNN
F 3 "~" H 5500 1230 50  0001 C CNN
	1    5500 1230
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP31
U 1 1 67EDCBA9
P 5500 1020
F 0 "JP31" H 5500 1160 50  0000 C CNN
F 1 "Jumper_2_Open" H 5590 870 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 5500 1020 50  0001 C CNN
F 3 "~" H 5500 1020 50  0001 C CNN
	1    5500 1020
	1    0    0    -1  
$EndComp
Wire Wire Line
	5110 1020 5300 1020
Wire Wire Line
	5110 1230 5300 1230
Wire Wire Line
	5110 1230 5110 1020
Wire Wire Line
	5110 2060 5110 1230
Connection ~ 5110 1230
Wire Wire Line
	4910 1330 4910 2060
Text GLabel 5930 1230 2    50   Input ~ 0
PF7
Wire Wire Line
	5700 1230 5930 1230
Text GLabel 4500 810  2    50   Input ~ 0
W-L1-VDD
Text GLabel 5010 1930 1    50   Input ~ 0
W-L1-VDD
Text GLabel 5210 1940 1    50   Input ~ 0
L1-VDD
Wire Wire Line
	4500 810  4400 810 
Wire Wire Line
	5010 2060 5010 1930
Wire Wire Line
	5210 2060 5210 1940
Wire Wire Line
	5210 1940 5200 1940
$Comp
L Jumper:Jumper_2_Open JP57
U 1 1 67F0F6B0
P 5520 1490
F 0 "JP57" H 5520 1630 50  0000 C CNN
F 1 "Jumper_2_Open" H 5610 1340 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 5520 1490 50  0001 C CNN
F 3 "~" H 5520 1490 50  0001 C CNN
	1    5520 1490
	1    0    0    -1  
$EndComp
Wire Wire Line
	5310 2060 5310 1880
Wire Wire Line
	5310 1490 5320 1490
$Comp
L Device:L L?
U 1 1 67F1388C
P 6000 1490
F 0 "L?" V 5930 1600 50  0000 C CNN
F 1 "L" V 5920 1370 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 6000 1490 50  0001 C CNN
F 3 "~" H 6000 1490 50  0001 C CNN
	1    6000 1490
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0114
U 1 1 67F1485C
P 6410 1430
F 0 "#PWR0114" H 6410 1280 50  0001 C CNN
F 1 "VDD" H 6425 1603 50  0000 C CNN
F 2 "" H 6410 1430 50  0001 C CNN
F 3 "" H 6410 1430 50  0001 C CNN
	1    6410 1430
	1    0    0    -1  
$EndComp
Text GLabel 6400 1630 2    50   Output ~ 0
W-L1-VDD
Wire Wire Line
	6150 1490 6290 1490
Wire Wire Line
	6290 1490 6290 1630
Wire Wire Line
	6290 1630 6400 1630
Wire Wire Line
	6290 1490 6410 1490
Wire Wire Line
	6410 1490 6410 1430
Connection ~ 6290 1490
Wire Wire Line
	5850 1490 5720 1490
Text GLabel 5840 2260 2    50   Input ~ 0
PA0
Text GLabel 5840 2360 2    50   Input ~ 0
PA1
Wire Wire Line
	5840 2260 5710 2260
Wire Wire Line
	5710 2360 5840 2360
$Comp
L Jumper:Jumper_2_Open JP63
U 1 1 67F2585D
P 6300 2460
F 0 "JP63" H 6570 2530 50  0000 C CNN
F 1 "Jumper_2_Open" H 6390 2310 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6300 2460 50  0001 C CNN
F 3 "~" H 6300 2460 50  0001 C CNN
	1    6300 2460
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP62
U 1 1 67F265D2
P 6310 2560
F 0 "JP62" H 6590 2610 50  0000 C CNN
F 1 "Jumper_2_Open" H 6400 2410 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6310 2560 50  0001 C CNN
F 3 "~" H 6310 2560 50  0001 C CNN
	1    6310 2560
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP61
U 1 1 67F278BD
P 6310 2660
F 0 "JP61" H 6590 2710 50  0000 C CNN
F 1 "Jumper_2_Open" H 6400 2510 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6310 2660 50  0001 C CNN
F 3 "~" H 6310 2660 50  0001 C CNN
	1    6310 2660
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR0115
U 1 1 67F2CACF
P 7200 2660
F 0 "#PWR0115" H 7200 2510 50  0001 C CNN
F 1 "VDDA" H 7360 2670 50  0000 C CNN
F 2 "" H 7200 2660 50  0001 C CNN
F 3 "" H 7200 2660 50  0001 C CNN
	1    7200 2660
	1    0    0    -1  
$EndComp
Wire Wire Line
	5710 2560 6050 2560
Wire Wire Line
	6050 2560 6050 2660
Wire Wire Line
	6050 2660 6110 2660
Wire Wire Line
	6110 2560 6050 2560
Connection ~ 6050 2560
Wire Wire Line
	6100 2460 5710 2460
Text GLabel 6900 2560 2    50   Input ~ 0
PA3
Text GLabel 6900 2460 2    50   Input ~ 0
PA2
Wire Wire Line
	6900 2460 6500 2460
Wire Wire Line
	6510 2560 6900 2560
Wire Wire Line
	6510 2660 7200 2660
Text GLabel 5840 1020 2    50   Input ~ 0
W-L1-VDD
Wire Wire Line
	5840 1020 5700 1020
Text GLabel 5830 2660 2    50   Input ~ 0
PA4
Wire Wire Line
	5830 2660 5710 2660
Text GLabel 5830 2760 2    50   Input ~ 0
PA5
Text GLabel 5830 2860 2    50   Input ~ 0
PA6
Wire Wire Line
	5830 2760 5710 2760
Wire Wire Line
	5830 2860 5710 2860
Text GLabel 5830 2960 2    50   Input ~ 0
PA7
Text GLabel 5830 3060 2    50   Input ~ 0
PA8
Wire Wire Line
	5830 2960 5710 2960
Wire Wire Line
	5710 3060 5830 3060
Text GLabel 5830 3160 2    50   Input ~ 0
PA9
Wire Wire Line
	5830 3160 5710 3160
Text GLabel 5830 3260 2    50   Input ~ 0
PA10
Text GLabel 5830 3360 2    50   Input ~ 0
PA11
Text GLabel 5830 3460 2    50   Input ~ 0
PA12
Wire Wire Line
	5830 3260 5710 3260
Wire Wire Line
	5830 3360 5710 3360
Wire Wire Line
	5830 3460 5710 3460
Text GLabel 5830 3560 2    50   Input ~ 0
PA13
Text GLabel 5830 3660 2    50   Input ~ 0
PA14
Text GLabel 5830 3760 2    50   Input ~ 0
PA15
Wire Wire Line
	5830 3560 5710 3560
Wire Wire Line
	5830 3660 5710 3660
Wire Wire Line
	5830 3760 5710 3760
Text GLabel 5850 3960 2    50   Input ~ 0
PB0
Text GLabel 5850 4160 2    50   Input ~ 0
PB2
Text GLabel 5870 4260 2    50   Input ~ 0
PB3
Wire Wire Line
	5850 3960 5710 3960
Wire Wire Line
	5850 4160 5710 4160
Text GLabel 5850 4360 2    50   Input ~ 0
PB4
Text GLabel 5850 4460 2    50   Input ~ 0
PB5
Text GLabel 5850 4560 2    50   Input ~ 0
PB6
Text GLabel 5850 4660 2    50   Input ~ 0
PB7
Text GLabel 5850 4760 2    50   Input ~ 0
PB8
Text GLabel 5850 4860 2    50   Input ~ 0
PB9
Text GLabel 5850 4960 2    50   Input ~ 0
PB10
Wire Wire Line
	5850 4360 5710 4360
Wire Wire Line
	5710 4460 5850 4460
Wire Wire Line
	5850 4560 5710 4560
Wire Wire Line
	5710 4660 5850 4660
Wire Wire Line
	5850 4760 5710 4760
Wire Wire Line
	5710 4860 5850 4860
Wire Wire Line
	5710 4960 5850 4960
$Comp
L Jumper:Jumper_2_Open JP34
U 1 1 67FCA9C1
P 7020 5060
F 0 "JP34" H 7200 5130 50  0000 C CNN
F 1 "Jumper_2_Open" H 7110 4910 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7020 5060 50  0001 C CNN
F 3 "~" H 7020 5060 50  0001 C CNN
	1    7020 5060
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP37
U 1 1 67FCBCAB
P 7020 5210
F 0 "JP37" H 7200 5270 50  0000 C CNN
F 1 "Jumper_2_Open" H 7110 5060 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7020 5210 50  0001 C CNN
F 3 "~" H 7020 5210 50  0001 C CNN
	1    7020 5210
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP27
U 1 1 67FD1D10
P 7020 5350
F 0 "JP27" H 7210 5400 50  0000 C CNN
F 1 "Jumper_2_Open" H 7110 5200 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7020 5350 50  0001 C CNN
F 3 "~" H 7020 5350 50  0001 C CNN
	1    7020 5350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP26
U 1 1 67FD2122
P 7020 5500
F 0 "JP26" H 7200 5550 50  0000 C CNN
F 1 "Jumper_2_Open" H 7110 5350 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7020 5500 50  0001 C CNN
F 3 "~" H 7020 5500 50  0001 C CNN
	1    7020 5500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP23
U 1 1 67FF7A62
P 7020 5640
F 0 "JP23" H 7200 5680 50  0000 C CNN
F 1 "Jumper_2_Open" H 7110 5490 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7020 5640 50  0001 C CNN
F 3 "~" H 7020 5640 50  0001 C CNN
	1    7020 5640
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP22
U 1 1 67FF7EA0
P 7020 5790
F 0 "JP22" H 7200 5840 50  0000 C CNN
F 1 "Jumper_2_Open" H 7110 5640 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7020 5790 50  0001 C CNN
F 3 "~" H 7020 5790 50  0001 C CNN
	1    7020 5790
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP19
U 1 1 67FF7EAA
P 7020 5930
F 0 "JP19" H 7200 5980 50  0000 C CNN
F 1 "Jumper_2_Open" H 7110 5780 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7020 5930 50  0001 C CNN
F 3 "~" H 7020 5930 50  0001 C CNN
	1    7020 5930
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP18
U 1 1 67FF7EB4
P 7020 6080
F 0 "JP18" H 7200 6130 50  0000 C CNN
F 1 "Jumper_2_Open" H 7110 5930 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7020 6080 50  0001 C CNN
F 3 "~" H 7020 6080 50  0001 C CNN
	1    7020 6080
	1    0    0    -1  
$EndComp
Wire Wire Line
	6820 5210 6590 5210
Wire Wire Line
	6590 5210 6590 5060
Wire Wire Line
	6590 5060 6820 5060
Wire Wire Line
	6520 5160 6520 5350
Wire Wire Line
	6520 5350 6820 5350
Wire Wire Line
	6820 5500 6520 5500
Wire Wire Line
	6520 5500 6520 5350
Connection ~ 6520 5350
Wire Wire Line
	6820 5640 6410 5640
Wire Wire Line
	6410 5640 6410 5260
Wire Wire Line
	6820 5790 6410 5790
Wire Wire Line
	6410 5790 6410 5640
Connection ~ 6410 5640
Wire Wire Line
	7220 5930 7410 5930
Wire Wire Line
	7410 5930 7410 5790
Wire Wire Line
	7410 5790 7220 5790
Wire Wire Line
	6340 5930 6820 5930
Text GLabel 7480 6080 2    50   Input ~ 0
PD8
Text GLabel 7500 5790 2    50   Input ~ 0
PB15
Wire Wire Line
	7410 5790 7500 5790
Connection ~ 7410 5790
Wire Wire Line
	7480 6080 7220 6080
Wire Wire Line
	7220 5640 7370 5640
Wire Wire Line
	7370 5640 7370 5500
Wire Wire Line
	7370 5500 7220 5500
Text GLabel 7510 5500 2    50   Input ~ 0
PB14
Wire Wire Line
	7510 5500 7370 5500
Connection ~ 7370 5500
Text GLabel 7500 5210 2    50   Input ~ 0
PB12
Text GLabel 7510 5350 2    50   Input ~ 0
PB13
Wire Wire Line
	7510 5350 7220 5350
Wire Wire Line
	7500 5210 7220 5210
$Comp
L power:GND #PWR0117
U 1 1 68084505
P 3110 2750
F 0 "#PWR0117" H 3110 2500 50  0001 C CNN
F 1 "GND" H 2940 2710 50  0000 C CNN
F 2 "" H 3110 2750 50  0001 C CNN
F 3 "" H 3110 2750 50  0001 C CNN
	1    3110 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3110 2660 3110 2750
Wire Wire Line
	6820 6080 6340 6080
Wire Wire Line
	6340 5360 6340 5930
Connection ~ 6340 5930
Wire Wire Line
	6340 5930 6340 6080
$Comp
L Jumper:Jumper_2_Open JP59
U 1 1 6809C0F7
P 4190 5910
F 0 "JP59" H 4370 5980 50  0000 C CNN
F 1 "Jumper_2_Open" H 4280 5760 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4190 5910 50  0001 C CNN
F 3 "~" H 4190 5910 50  0001 C CNN
	1    4190 5910
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP58
U 1 1 6809C7A4
P 4190 6080
F 0 "JP58" H 4370 6150 50  0000 C CNN
F 1 "Jumper_2_Open" H 4280 5930 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4190 6080 50  0001 C CNN
F 3 "~" H 4190 6080 50  0001 C CNN
	1    4190 6080
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP53
U 1 1 6809D211
P 4190 6250
F 0 "JP53" H 4370 6320 50  0000 C CNN
F 1 "Jumper_2_Open" H 4280 6100 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4190 6250 50  0001 C CNN
F 3 "~" H 4190 6250 50  0001 C CNN
	1    4190 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 6809E2CA
P 3840 6250
F 0 "#PWR0118" H 3840 6000 50  0001 C CNN
F 1 "GND" H 3845 6077 50  0000 C CNN
F 2 "" H 3840 6250 50  0001 C CNN
F 3 "" H 3840 6250 50  0001 C CNN
	1    3840 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3990 6250 3840 6250
Text GLabel 3960 6080 0    50   Input ~ 0
PF4
Text GLabel 3960 5910 0    50   Input ~ 0
PA3
Wire Wire Line
	3960 5910 3990 5910
Wire Wire Line
	3960 6080 3990 6080
Wire Wire Line
	4810 5560 4810 5910
Wire Wire Line
	4810 5910 4610 5910
Wire Wire Line
	4390 6080 4610 6080
Connection ~ 4610 5910
Wire Wire Line
	4610 5910 4390 5910
Wire Wire Line
	4390 6250 4610 6250
Wire Wire Line
	4610 5910 4610 6080
Connection ~ 4610 6080
Wire Wire Line
	4610 6080 4610 6250
$Comp
L Jumper:Jumper_2_Open JP38
U 1 1 680D0158
P 4530 6780
F 0 "JP38" H 4710 6850 50  0000 C CNN
F 1 "Jumper_2_Open" H 4620 6630 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 4530 6780 50  0001 C CNN
F 3 "~" H 4530 6780 50  0001 C CNN
	1    4530 6780
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 680D049C
P 4530 6490
F 0 "C25" V 4660 6280 50  0000 L CNN
F 1 "2.2uF" V 4660 6500 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4568 6340 50  0001 C CNN
F 3 "~" H 4530 6490 50  0001 C CNN
	1    4530 6490
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 680D13BD
P 4050 6490
F 0 "#PWR0119" H 4050 6240 50  0001 C CNN
F 1 "GND" H 4055 6317 50  0000 C CNN
F 2 "" H 4050 6490 50  0001 C CNN
F 3 "" H 4050 6490 50  0001 C CNN
	1    4050 6490
	1    0    0    -1  
$EndComp
Wire Wire Line
	4380 6490 4230 6490
Wire Wire Line
	4910 6490 4680 6490
Wire Wire Line
	4730 6780 4910 6780
Wire Wire Line
	4910 5560 4910 6490
Connection ~ 4910 6490
Wire Wire Line
	4910 6490 4910 6780
Wire Wire Line
	4330 6780 4230 6780
Wire Wire Line
	4230 6780 4230 6490
Connection ~ 4230 6490
Wire Wire Line
	4230 6490 4050 6490
Wire Wire Line
	5110 6900 4230 6900
Wire Wire Line
	4230 6900 4230 6780
Connection ~ 4230 6780
Text Notes 5410 7100 2    50   ~ 0
Ceramic low ESR
$Comp
L Device:C C22
U 1 1 68102255
P 5520 6090
F 0 "C22" V 5650 5880 50  0000 L CNN
F 1 "2.2uF" V 5650 6100 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5558 5940 50  0001 C CNN
F 3 "~" H 5520 6090 50  0001 C CNN
	1    5520 6090
	0    1    1    0   
$EndComp
$Comp
L Jumper:Jumper_2_Open JP33
U 1 1 681028F8
P 5510 6390
F 0 "JP33" H 5690 6460 50  0000 C CNN
F 1 "Jumper_2_Open" H 5600 6240 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 5510 6390 50  0001 C CNN
F 3 "~" H 5510 6390 50  0001 C CNN
	1    5510 6390
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP32
U 1 1 68103134
P 5520 6570
F 0 "JP32" H 5700 6640 50  0000 C CNN
F 1 "Jumper_2_Open" H 5610 6420 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 5520 6570 50  0001 C CNN
F 3 "~" H 5520 6570 50  0001 C CNN
	1    5520 6570
	1    0    0    -1  
$EndComp
Wire Wire Line
	5010 5560 5010 6090
Wire Wire Line
	5010 6390 5310 6390
Wire Wire Line
	5370 6090 5010 6090
Connection ~ 5010 6090
Wire Wire Line
	5010 6090 5010 6390
Wire Wire Line
	5010 6390 5010 6570
Wire Wire Line
	5010 6570 5320 6570
Connection ~ 5010 6390
$Comp
L power:GND #PWR0120
U 1 1 6812281A
P 5910 6090
F 0 "#PWR0120" H 5910 5840 50  0001 C CNN
F 1 "GND" H 5915 5917 50  0000 C CNN
F 2 "" H 5910 6090 50  0001 C CNN
F 3 "" H 5910 6090 50  0001 C CNN
	1    5910 6090
	1    0    0    -1  
$EndComp
Wire Wire Line
	5710 6390 5810 6390
Wire Wire Line
	5810 6390 5810 6090
Wire Wire Line
	5670 6090 5810 6090
Connection ~ 5810 6090
Wire Wire Line
	5810 6090 5910 6090
Text GLabel 5900 6570 2    50   Input ~ 0
PF6
Wire Wire Line
	5900 6570 5720 6570
Text Notes 6040 5940 2    50   ~ 0
Ceramic low ESR
$Comp
L power:GNDA #PWR0121
U 1 1 6814EFF6
P 5210 5730
F 0 "#PWR0121" H 5210 5480 50  0001 C CNN
F 1 "GNDA" H 5215 5557 50  0000 C CNN
F 2 "" H 5210 5730 50  0001 C CNN
F 3 "" H 5210 5730 50  0001 C CNN
	1    5210 5730
	1    0    0    -1  
$EndComp
Wire Wire Line
	5210 5560 5210 5730
Wire Wire Line
	5110 5560 5110 6900
$Comp
L Jumper:Jumper_2_Open JP60
U 1 1 6817187B
P 1750 9700
F 0 "JP60" H 1650 9830 50  0000 C CNN
F 1 "Jumper_2_Open" H 1750 9550 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 1750 9700 50  0001 C CNN
F 3 "~" H 1750 9700 50  0001 C CNN
	1    1750 9700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 9700 1370 9700
Wire Wire Line
	1950 9700 2120 9700
Wire Wire Line
	2120 9700 2120 9810
NoConn ~ 3000 5610
NoConn ~ 2800 5610
Text GLabel 4170 2260 0    50   BiDi ~ 0
NRST
Wire Wire Line
	4170 2260 4310 2260
$Comp
L Switch:SW_Push_Dual B2
U 1 1 68018B6A
P 1720 6860
F 0 "B2" H 1766 6572 50  0000 R CNN
F 1 "SW_Push_Dual" H 1940 7080 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 1720 7060 50  0001 C CNN
F 3 "~" H 1720 7060 50  0001 C CNN
	1    1720 6860
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 68019126
P 1710 7280
F 0 "C14" V 1810 7100 50  0000 L CNN
F 1 "100n" V 1810 7320 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1748 7130 50  0001 C CNN
F 3 "~" H 1710 7280 50  0001 C CNN
	1    1710 7280
	0    1    1    0   
$EndComp
Text GLabel 930  6860 0    50   BiDi ~ 0
NRST
$Comp
L power:GND #PWR0122
U 1 1 6802E6B0
P 2030 7350
F 0 "#PWR0122" H 2030 7100 50  0001 C CNN
F 1 "GND" H 2035 7177 50  0000 C CNN
F 2 "" H 2030 7350 50  0001 C CNN
F 3 "" H 2030 7350 50  0001 C CNN
	1    2030 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1860 7280 2030 7280
Wire Wire Line
	2030 7280 2030 7350
Wire Wire Line
	1920 7060 2020 7060
Wire Wire Line
	2030 7060 2030 7280
Connection ~ 2030 7280
Wire Wire Line
	1920 6860 2020 6860
Wire Wire Line
	2020 6860 2020 7060
Connection ~ 2020 7060
Wire Wire Line
	2020 7060 2030 7060
Wire Wire Line
	930  6860 1400 6860
Wire Wire Line
	1400 7280 1560 7280
Wire Wire Line
	1520 7060 1400 7060
Connection ~ 1400 7060
Wire Wire Line
	1400 7060 1400 7280
Wire Wire Line
	1400 6860 1400 7060
Connection ~ 1400 6860
Wire Wire Line
	1400 6860 1520 6860
Wire Wire Line
	1310 5830 1210 5830
Connection ~ 1310 5830
Text HLabel 10750 4620 2    50   BiDi ~ 0
SWO
Wire Wire Line
	5710 4260 5870 4260
Text GLabel 10370 4620 0    50   Input ~ 0
PB3
Text HLabel 10740 4730 2    50   Output ~ 0
USART_TX
Text HLabel 10740 4830 2    50   Input ~ 0
USART_RX
Text HLabel 10740 4930 2    50   BiDi ~ 0
TMS
Text HLabel 10740 5030 2    50   BiDi ~ 0
TCK
Text HLabel 10740 5130 2    50   BiDi ~ 0
MCO
Text HLabel 10740 5230 2    50   BiDi ~ 0
NRST
Text HLabel 10740 5330 2    50   BiDi ~ 0
BOOT0
Text GLabel 10360 4730 0    50   Input ~ 0
PA2
Text GLabel 10360 4830 0    50   Input ~ 0
PA3
Text GLabel 10360 4930 0    50   Input ~ 0
PA13
Text GLabel 10360 5030 0    50   Input ~ 0
PA14
Text GLabel 10360 5330 0    50   BiDi ~ 0
BOOT0
Text GLabel 10360 5230 0    50   BiDi ~ 0
NRST
Wire Wire Line
	10750 4620 10370 4620
Text GLabel 10360 5130 0    50   BiDi ~ 0
MCO
Wire Wire Line
	10360 4730 10740 4730
Wire Wire Line
	10360 4830 10740 4830
Wire Wire Line
	10360 4930 10740 4930
Wire Wire Line
	10740 5030 10360 5030
Wire Wire Line
	10740 5130 10360 5130
Wire Wire Line
	10740 5230 10360 5230
Wire Wire Line
	10740 5330 10360 5330
$Comp
L Device:C C27
U 1 1 6818A7A1
P 2440 9100
F 0 "C27" H 2510 9000 50  0000 L CNN
F 1 "100nF" H 2180 9230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2478 8950 50  0001 C CNN
F 3 "~" H 2440 9100 50  0001 C CNN
	1    2440 9100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C24
U 1 1 6818AFE9
P 2730 9100
F 0 "C24" H 2800 9000 50  0000 L CNN
F 1 "100nF" H 2470 9230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2768 8950 50  0001 C CNN
F 3 "~" H 2730 9100 50  0001 C CNN
	1    2730 9100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C23
U 1 1 6818B5EE
P 3010 9100
F 0 "C23" H 3080 9000 50  0000 L CNN
F 1 "100nF" H 2750 9230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3048 8950 50  0001 C CNN
F 3 "~" H 3010 9100 50  0001 C CNN
	1    3010 9100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C28
U 1 1 6818B939
P 3280 9100
F 0 "C28" H 3350 9000 50  0000 L CNN
F 1 "100nF" H 3020 9230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3318 8950 50  0001 C CNN
F 3 "~" H 3280 9100 50  0001 C CNN
	1    3280 9100
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR0123
U 1 1 6818BB9E
P 2440 8700
F 0 "#PWR0123" H 2440 8550 50  0001 C CNN
F 1 "VDD" H 2455 8873 50  0000 C CNN
F 2 "" H 2440 8700 50  0001 C CNN
F 3 "" H 2440 8700 50  0001 C CNN
	1    2440 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2440 8950 2440 8810
Wire Wire Line
	2440 8810 2730 8810
Wire Wire Line
	2730 8810 2730 8950
Wire Wire Line
	2730 8810 3010 8810
Wire Wire Line
	3010 8810 3010 8950
Connection ~ 2730 8810
Wire Wire Line
	3010 8810 3280 8810
Wire Wire Line
	3280 8810 3280 8950
Connection ~ 3010 8810
Wire Wire Line
	2440 8810 2440 8700
Connection ~ 2440 8810
$Comp
L power:GND #PWR0124
U 1 1 681C8F0F
P 2440 9400
F 0 "#PWR0124" H 2440 9150 50  0001 C CNN
F 1 "GND" H 2445 9227 50  0000 C CNN
F 2 "" H 2440 9400 50  0001 C CNN
F 3 "" H 2440 9400 50  0001 C CNN
	1    2440 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2440 9400 2440 9300
Wire Wire Line
	2440 9300 2730 9300
Wire Wire Line
	2730 9300 2730 9250
Connection ~ 2440 9300
Wire Wire Line
	2440 9300 2440 9250
Wire Wire Line
	2730 9300 3010 9300
Wire Wire Line
	3010 9300 3010 9250
Connection ~ 2730 9300
Wire Wire Line
	3010 9300 3280 9300
Wire Wire Line
	3280 9300 3280 9250
Connection ~ 3010 9300
Text Notes 1150 6470 0    50   ~ 0
RESET BUTTON
Text Notes 710  4870 0    50   ~ 0
USER BUTTON
Text GLabel 10260 6280 0    50   Input ~ 0
PB9
Text GLabel 10260 6170 0    50   BiDi ~ 0
PB8
Text HLabel 10670 6170 2    50   BiDi ~ 0
SCL
Wire Wire Line
	10670 6170 10260 6170
Text HLabel 10670 6280 2    50   BiDi ~ 0
SDA
Wire Wire Line
	10670 6280 10260 6280
$Comp
L Device:C C33
U 1 1 67E9D29E
P 2130 3260
F 0 "C33" V 2260 3050 50  0000 L CNN
F 1 "4.3pF" V 2260 3270 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2168 3110 50  0001 C CNN
F 3 "~" H 2130 3260 50  0001 C CNN
	1    2130 3260
	0    1    1    0   
$EndComp
Text GLabel 8950 4650 0    50   Output ~ 0
PC0
Text GLabel 8950 4760 0    50   Output ~ 0
PC1
Text GLabel 8950 4870 0    50   Output ~ 0
PB0
Text GLabel 8950 4980 0    50   Output ~ 0
PC3
Text HLabel 9240 4650 2    50   Output ~ 0
B1_Button
Text HLabel 9240 4760 2    50   Output ~ 0
B2_Button
Text HLabel 9240 4870 2    50   Output ~ 0
B3_Button
Text HLabel 9240 4980 2    50   Output ~ 0
B4_Button
Wire Wire Line
	9240 4650 8950 4650
Wire Wire Line
	8950 4760 9240 4760
Wire Wire Line
	9240 4870 8950 4870
Wire Wire Line
	8950 4980 9240 4980
Text Notes 8770 4530 0    50   ~ 0
Buttons connections
Text Notes 9990 4510 0    50   ~ 0
Digital connections UART
Text Notes 8880 5240 0    50   ~ 0
SPI Connections
Text GLabel 8950 5360 0    50   Output ~ 0
PC12
Text GLabel 8950 5480 0    50   Output ~ 0
PC11
Text GLabel 8940 5610 0    50   Output ~ 0
PC10
Text GLabel 8940 5740 0    50   Output ~ 0
PB10
Text Notes 8940 5990 0    50   ~ 0
Motor Control
Text HLabel 9280 5360 2    50   Output ~ 0
SPI3_MOSI
Text HLabel 9280 5480 2    50   Output ~ 0
SPI3_MISO
Text HLabel 9270 5740 2    50   Output ~ 0
SPI3_CS
Text HLabel 9270 5610 2    50   Output ~ 0
SPI3_SCK
Wire Wire Line
	9280 5360 8950 5360
Wire Wire Line
	8950 5480 9280 5480
Wire Wire Line
	8940 5610 9270 5610
Wire Wire Line
	9270 5740 8940 5740
Text GLabel 8940 6090 0    50   Output ~ 0
PB6
Text GLabel 8940 6220 0    50   Output ~ 0
PA6
Text GLabel 8940 6360 0    50   Output ~ 0
PA7
Text HLabel 9310 6090 2    50   Output ~ 0
APHASE
Text HLabel 9300 6220 2    50   Output ~ 0
AENABLE
Text HLabel 9300 6360 2    50   Output ~ 0
MODE
Wire Wire Line
	8940 6090 9310 6090
Wire Wire Line
	9300 6220 8940 6220
Wire Wire Line
	8940 6360 9300 6360
Text Notes 10150 5990 0    50   ~ 0
I2C Connection
$Comp
L Jumper:Jumper_2_Open JP64
U 1 1 68300634
P 6640 4060
F 0 "JP64" H 6820 4130 50  0000 C CNN
F 1 "Jumper_2_Open" H 6730 3910 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6640 4060 50  0001 C CNN
F 3 "~" H 6640 4060 50  0001 C CNN
	1    6640 4060
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP65
U 1 1 683011B2
P 6640 4170
F 0 "JP65" H 6810 4040 50  0000 C CNN
F 1 "Jumper_2_Open" H 6730 4020 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6640 4170 50  0001 C CNN
F 3 "~" H 6640 4170 50  0001 C CNN
	1    6640 4170
	1    0    0    -1  
$EndComp
Wire Wire Line
	5710 4060 6340 4060
Wire Wire Line
	6340 4060 6340 4170
Wire Wire Line
	6340 4170 6440 4170
Connection ~ 6340 4060
Wire Wire Line
	6340 4060 6440 4060
Text GLabel 7040 4060 2    50   Input ~ 0
PB1
Wire Wire Line
	7040 4060 6840 4060
$Comp
L power:VDDA #PWR?
U 1 1 68338ECC
P 7320 4160
F 0 "#PWR?" H 7320 4010 50  0001 C CNN
F 1 "VDDA" H 7480 4170 50  0000 C CNN
F 2 "" H 7320 4160 50  0001 C CNN
F 3 "" H 7320 4160 50  0001 C CNN
	1    7320 4160
	1    0    0    -1  
$EndComp
Wire Wire Line
	6840 4170 7320 4170
Wire Wire Line
	7320 4170 7320 4160
$Comp
L power:VDD #PWR?
U 1 1 683BB922
P 1510 4350
F 0 "#PWR?" H 1510 4200 50  0001 C CNN
F 1 "VDD" H 1525 4523 50  0000 C CNN
F 2 "" H 1510 4350 50  0001 C CNN
F 3 "" H 1510 4350 50  0001 C CNN
	1    1510 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1510 4350 1510 4790
$Comp
L power:VDDA #PWR?
U 1 1 68312BD5
P 5480 1830
F 0 "#PWR?" H 5480 1680 50  0001 C CNN
F 1 "VDDA" H 5495 2003 50  0000 C CNN
F 2 "" H 5480 1830 50  0001 C CNN
F 3 "" H 5480 1830 50  0001 C CNN
	1    5480 1830
	1    0    0    -1  
$EndComp
Wire Wire Line
	5480 1830 5480 1880
Wire Wire Line
	5480 1880 5310 1880
Connection ~ 5310 1880
Wire Wire Line
	5310 1880 5310 1490
Wire Wire Line
	3960 1330 4910 1330
$Comp
L Connector_Generic:Conn_02x19_Odd_Even J7
U 1 1 68331ADD
P 8510 1700
F 0 "J7" H 8560 2817 50  0000 C CNN
F 1 "Conn_02x19_Odd_Even" H 8560 2726 50  0000 C CNN
F 2 "" H 8510 1700 50  0001 C CNN
F 3 "~" H 8510 1700 50  0001 C CNN
	1    8510 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6590 5060 5710 5060
Connection ~ 6590 5060
Wire Wire Line
	5710 5160 6520 5160
Wire Wire Line
	6410 5260 5710 5260
Wire Wire Line
	5710 5360 6340 5360
$Comp
L Connector_Generic:Conn_02x19_Odd_Even J10
U 1 1 683ACEC4
P 10240 1690
F 0 "J10" H 10290 2807 50  0000 C CNN
F 1 "Conn_02x19_Odd_Even" H 10290 2716 50  0000 C CNN
F 2 "" H 10240 1690 50  0001 C CNN
F 3 "~" H 10240 1690 50  0001 C CNN
	1    10240 1690
	1    0    0    -1  
$EndComp
Text GLabel 8130 800  0    50   Input ~ 0
PC10
Text GLabel 8970 800  2    50   Input ~ 0
PC11
Text GLabel 8130 900  0    50   Input ~ 0
PC12
Text GLabel 8970 900  2    50   Input ~ 0
PD2
$Comp
L power:VDD #PWR?
U 1 1 68381566
P 7800 990
F 0 "#PWR?" H 7800 840 50  0001 C CNN
F 1 "VDD" H 7815 1163 50  0000 C CNN
F 2 "" H 7800 990 50  0001 C CNN
F 3 "" H 7800 990 50  0001 C CNN
	1    7800 990 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8310 1000 7800 1000
Wire Wire Line
	7800 1000 7800 990 
$Comp
L power:+5VA #PWR?
U 1 1 68396774
P 9290 980
F 0 "#PWR?" H 9290 830 50  0001 C CNN
F 1 "+5VA" H 9305 1153 50  0000 C CNN
F 2 "" H 9290 980 50  0001 C CNN
F 3 "" H 9290 980 50  0001 C CNN
	1    9290 980 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9290 980  9290 1000
Wire Wire Line
	9290 1000 8810 1000
Wire Wire Line
	8970 900  8810 900 
Wire Wire Line
	8970 800  8810 800 
Wire Wire Line
	8310 900  8130 900 
Wire Wire Line
	8130 800  8310 800 
Text GLabel 8120 1100 0    50   Input ~ 0
BOOT0
Wire Wire Line
	8310 1100 8120 1100
Wire Wire Line
	7220 5060 7800 5060
$Comp
L power:VDDA #PWR0116
U 1 1 6807B1B4
P 7800 5060
F 0 "#PWR0116" H 7800 4910 50  0001 C CNN
F 1 "VDDA" H 7815 5233 50  0000 C CNN
F 2 "" H 7800 5060 50  0001 C CNN
F 3 "" H 7800 5060 50  0001 C CNN
	1    7800 5060
	1    0    0    -1  
$EndComp
Text GLabel 8120 1200 0    50   Input ~ 0
PF6
Text GLabel 8120 1300 0    50   Input ~ 0
PF7
Text GLabel 8120 1400 0    50   Input ~ 0
PA13
Text GLabel 8120 1500 0    50   Input ~ 0
PA14
Text GLabel 8120 1600 0    50   Input ~ 0
PA15
Wire Wire Line
	8310 1600 8120 1600
Wire Wire Line
	8120 1500 8310 1500
Wire Wire Line
	8310 1400 8120 1400
Wire Wire Line
	8120 1300 8310 1300
Wire Wire Line
	8310 1200 8120 1200
$Comp
L power:GND #PWR?
U 1 1 6847DF40
P 7730 1700
F 0 "#PWR?" H 7730 1450 50  0001 C CNN
F 1 "GND" H 7735 1527 50  0000 C CNN
F 2 "" H 7730 1700 50  0001 C CNN
F 3 "" H 7730 1700 50  0001 C CNN
	1    7730 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8310 1700 7730 1700
Text GLabel 8120 1800 0    50   Input ~ 0
PB7
Wire Wire Line
	8310 1800 8120 1800
Text GLabel 8120 1900 0    50   Input ~ 0
PC13
Wire Wire Line
	8310 1900 8120 1900
$Comp
L Jumper:Jumper_2_Open JP49
U 1 1 684DA5E9
P 8000 2000
F 0 "JP49" H 7750 2060 50  0000 C CNN
F 1 "Jumper_2_Open" H 8090 1850 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 8000 2000 50  0001 C CNN
F 3 "~" H 8000 2000 50  0001 C CNN
	1    8000 2000
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_2_Open JP48
U 1 1 684DACBA
P 8000 2100
F 0 "JP48" H 7750 2160 50  0000 C CNN
F 1 "Jumper_2_Open" H 8090 1950 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 8000 2100 50  0001 C CNN
F 3 "~" H 8000 2100 50  0001 C CNN
	1    8000 2100
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_2_Open JP55
U 1 1 684DAF0A
P 8000 2200
F 0 "JP55" H 7750 2260 50  0000 C CNN
F 1 "Jumper_2_Open" H 8090 2050 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 8000 2200 50  0001 C CNN
F 3 "~" H 8000 2200 50  0001 C CNN
	1    8000 2200
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_2_Open JP54
U 1 1 684DB210
P 8010 2300
F 0 "JP54" H 7770 2360 50  0000 C CNN
F 1 "Jumper_2_Open" H 8100 2150 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 8010 2300 50  0001 C CNN
F 3 "~" H 8010 2300 50  0001 C CNN
	1    8010 2300
	-1   0    0    1   
$EndComp
Text GLabel 7750 2000 0    50   Input ~ 0
PC14
Text GLabel 7720 2100 0    50   Input ~ 0
PC15
Text GLabel 7720 2200 0    50   Input ~ 0
PF0
Text GLabel 7720 2300 0    50   Input ~ 0
PF1
Wire Wire Line
	7800 2000 7750 2000
Wire Wire Line
	7720 2100 7800 2100
Wire Wire Line
	7720 2200 7800 2200
Wire Wire Line
	8310 2000 8200 2000
Wire Wire Line
	8200 2100 8310 2100
Wire Wire Line
	8310 2200 8200 2200
Wire Wire Line
	8210 2300 8310 2300
Wire Wire Line
	7720 2300 7810 2300
$Comp
L power:+BATT #PWR?
U 1 1 685AF3AF
P 7320 2400
F 0 "#PWR?" H 7320 2250 50  0001 C CNN
F 1 "+BATT" H 7335 2573 50  0000 C CNN
F 2 "" H 7320 2400 50  0001 C CNN
F 3 "" H 7320 2400 50  0001 C CNN
	1    7320 2400
	1    0    0    -1  
$EndComp
Text GLabel 7720 2500 0    50   Input ~ 0
PC2
Text GLabel 7720 2600 0    50   Input ~ 0
PC3
Wire Wire Line
	8310 2500 7720 2500
Wire Wire Line
	7720 2600 8310 2600
$Comp
L Jumper:Jumper_2_Open JP56
U 1 1 686125E2
P 9070 2500
F 0 "JP56" H 8830 2560 50  0000 C CNN
F 1 "Jumper_2_Open" H 9160 2350 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 9070 2500 50  0001 C CNN
F 3 "~" H 9070 2500 50  0001 C CNN
	1    9070 2500
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_2_Open JP51
U 1 1 68612A52
P 9070 2600
F 0 "JP51" H 8830 2660 50  0000 C CNN
F 1 "Jumper_2_Open" H 9160 2450 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 9070 2600 50  0001 C CNN
F 3 "~" H 9070 2600 50  0001 C CNN
	1    9070 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1770 5160 1510 5160
Text GLabel 9380 2500 2    50   Input ~ 0
PC1
Text GLabel 9380 2600 2    50   Input ~ 0
PC0
Wire Wire Line
	8810 2500 8870 2500
Wire Wire Line
	9380 2600 9270 2600
Wire Wire Line
	9270 2500 9380 2500
Wire Wire Line
	8870 2600 8810 2600
Text GLabel 8880 2400 2    50   Input ~ 0
PB0
Text GLabel 8880 2300 2    50   Input ~ 0
PA4
Text GLabel 8880 2200 2    50   Input ~ 0
PA1
Text GLabel 8880 2100 2    50   Input ~ 0
PA0
Wire Wire Line
	8810 2100 8880 2100
Wire Wire Line
	8880 2200 8810 2200
Wire Wire Line
	8810 2300 8880 2300
Wire Wire Line
	8880 2400 8810 2400
NoConn ~ 8810 2000
$Comp
L power:+VDC #PWR?
U 1 1 6893A7DB
P 9060 1900
F 0 "#PWR?" H 9060 1800 50  0001 C CNN
F 1 "+VDC" V 9060 2130 50  0000 L CNN
F 2 "" H 9060 1900 50  0001 C CNN
F 3 "" H 9060 1900 50  0001 C CNN
	1    9060 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	9060 1900 8810 1900
$Comp
L power:GND #PWR?
U 1 1 689738A6
P 9140 1700
F 0 "#PWR?" H 9140 1450 50  0001 C CNN
F 1 "GND" H 9280 1630 50  0000 C CNN
F 2 "" H 9140 1700 50  0001 C CNN
F 3 "" H 9140 1700 50  0001 C CNN
	1    9140 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8810 1800 8960 1800
Wire Wire Line
	8960 1800 8960 1700
Wire Wire Line
	8810 1700 8960 1700
Connection ~ 8960 1700
Wire Wire Line
	8960 1700 9140 1700
$Comp
L power:+5V #PWR?
U 1 1 689A9AF7
P 9130 1600
F 0 "#PWR?" H 9130 1450 50  0001 C CNN
F 1 "+5V" V 9145 1728 50  0000 L CNN
F 2 "" H 9130 1600 50  0001 C CNN
F 3 "" H 9130 1600 50  0001 C CNN
	1    9130 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	9130 1600 8810 1600
$Comp
L power:VDD #PWR?
U 1 1 689FB387
P 9190 1500
F 0 "#PWR?" H 9190 1350 50  0001 C CNN
F 1 "VDD" H 9205 1673 50  0000 C CNN
F 2 "" H 9190 1500 50  0001 C CNN
F 3 "" H 9190 1500 50  0001 C CNN
	1    9190 1500
	0    1    1    0   
$EndComp
Text GLabel 8970 1400 2    50   Input ~ 0
NRST
Wire Wire Line
	8810 1500 8890 1500
Wire Wire Line
	8970 1400 8810 1400
Wire Wire Line
	8810 1300 8890 1300
Wire Wire Line
	8890 1300 8890 1500
Connection ~ 8890 1500
Wire Wire Line
	8890 1500 9190 1500
NoConn ~ 8810 1200
$Comp
L power:GND #PWR?
U 1 1 68A85410
P 9020 1100
F 0 "#PWR?" H 9020 850 50  0001 C CNN
F 1 "GND" H 9160 1030 50  0000 C CNN
F 2 "" H 9020 1100 50  0001 C CNN
F 3 "" H 9020 1100 50  0001 C CNN
	1    9020 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9020 1100 8810 1100
Text GLabel 9880 790  0    50   Input ~ 0
PC9
Text GLabel 9880 890  0    50   Input ~ 0
PB8
Text GLabel 9880 990  0    50   Input ~ 0
PB9
$Comp
L power:VDDA #PWR?
U 1 1 68B2EEBA
P 9740 1090
F 0 "#PWR?" H 9740 940 50  0001 C CNN
F 1 "VDDA" V 9755 1218 50  0000 L CNN
F 2 "" H 9740 1090 50  0001 C CNN
F 3 "" H 9740 1090 50  0001 C CNN
	1    9740 1090
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10040 1090 9740 1090
$Comp
L power:GND #PWR?
U 1 1 68B4BF3F
P 9710 1190
F 0 "#PWR?" H 9710 940 50  0001 C CNN
F 1 "GND" V 9710 960 50  0000 C CNN
F 2 "" H 9710 1190 50  0001 C CNN
F 3 "" H 9710 1190 50  0001 C CNN
	1    9710 1190
	0    1    1    0   
$EndComp
Wire Wire Line
	10040 1190 9710 1190
Wire Wire Line
	10040 790  9880 790 
Wire Wire Line
	9880 890  10040 890 
Wire Wire Line
	9880 990  10040 990 
Text GLabel 9870 1290 0    50   Input ~ 0
D13
Text GLabel 9870 1390 0    50   Input ~ 0
D12
Text GLabel 9870 1490 0    50   Input ~ 0
D11
Wire Wire Line
	10040 1290 9870 1290
Wire Wire Line
	9870 1390 10040 1390
Wire Wire Line
	10040 1490 9870 1490
Text GLabel 9870 1590 0    50   Input ~ 0
PB6
Wire Wire Line
	10040 1590 9870 1590
Text GLabel 9870 1690 0    50   Input ~ 0
PC7
Text GLabel 9870 1790 0    50   Input ~ 0
PA9
Text GLabel 9870 1890 0    50   Input ~ 0
PA8
Wire Wire Line
	10040 1690 9870 1690
Wire Wire Line
	9870 1790 10040 1790
Wire Wire Line
	10040 1890 9870 1890
Text GLabel 9870 1990 0    50   Input ~ 0
PB10
Text GLabel 9870 2090 0    50   Input ~ 0
PB4
Text GLabel 9870 2190 0    50   Input ~ 0
PB5
Text GLabel 9870 2290 0    50   Input ~ 0
PB3
Text GLabel 9870 2390 0    50   Input ~ 0
PA10
Text GLabel 9870 2490 0    50   Input ~ 0
PA2
Text GLabel 9870 2590 0    50   Input ~ 0
PA3
Wire Wire Line
	10040 1990 9870 1990
Wire Wire Line
	9870 2090 10040 2090
Wire Wire Line
	10040 2190 9870 2190
Wire Wire Line
	9870 2290 10040 2290
Wire Wire Line
	10040 2390 9870 2390
Wire Wire Line
	9870 2490 10040 2490
Wire Wire Line
	10040 2590 9870 2590
Text GLabel 10620 790  2    50   Input ~ 0
PC8
Text GLabel 10620 890  2    50   Input ~ 0
PC6
Text GLabel 10620 990  2    50   Input ~ 0
PC5
$Comp
L power:+5VP #PWR?
U 1 1 68D67FDA
P 10900 1090
F 0 "#PWR?" H 10900 940 50  0001 C CNN
F 1 "+5VP" V 10915 1218 50  0000 L CNN
F 2 "" H 10900 1090 50  0001 C CNN
F 3 "" H 10900 1090 50  0001 C CNN
	1    10900 1090
	0    1    1    0   
$EndComp
Wire Wire Line
	10900 1090 10540 1090
Text GLabel 10620 1190 2    50   Input ~ 0
PD8
Text GLabel 10620 1290 2    50   Input ~ 0
PA12
Text GLabel 10620 1390 2    50   Input ~ 0
PA11
Text GLabel 10620 1490 2    50   Input ~ 0
PB12
Text GLabel 10620 1590 2    50   Input ~ 0
PB11
$Comp
L power:GND #PWR?
U 1 1 68D887A7
P 10930 1690
F 0 "#PWR?" H 10930 1440 50  0001 C CNN
F 1 "GND" V 10930 1460 50  0000 C CNN
F 2 "" H 10930 1690 50  0001 C CNN
F 3 "" H 10930 1690 50  0001 C CNN
	1    10930 1690
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10930 1690 10540 1690
Text GLabel 10620 1790 2    50   Input ~ 0
PB2
Text GLabel 10620 1890 2    50   Input ~ 0
PB1
Wire Wire Line
	10540 1790 10620 1790
Wire Wire Line
	10620 1890 10540 1890
Wire Wire Line
	10540 1590 10620 1590
Wire Wire Line
	10620 1490 10540 1490
Wire Wire Line
	10540 1390 10620 1390
Wire Wire Line
	10620 1290 10540 1290
Wire Wire Line
	10540 1190 10620 1190
Wire Wire Line
	10620 990  10540 990 
Wire Wire Line
	10540 890  10620 890 
Wire Wire Line
	10620 790  10540 790 
$Comp
L power:GNDA #PWR?
U 1 1 68EF1599
P 10800 2290
F 0 "#PWR?" H 10800 2040 50  0001 C CNN
F 1 "GNDA" V 10805 2162 50  0000 R CNN
F 2 "" H 10800 2290 50  0001 C CNN
F 3 "" H 10800 2290 50  0001 C CNN
	1    10800 2290
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10800 2290 10540 2290
Text GLabel 10620 2390 2    50   Input ~ 0
PC4
Text GLabel 10620 2490 2    50   Input ~ 0
PF5
Text GLabel 10620 2590 2    50   Input ~ 0
PF4
Wire Wire Line
	10620 2390 10540 2390
Wire Wire Line
	10540 2490 10620 2490
Wire Wire Line
	10620 2590 10540 2590
Text GLabel 10610 2190 2    50   Input ~ 0
J10_CN30
Text GLabel 10610 2090 2    50   Input ~ 0
J10_CN28
Text GLabel 10610 1990 2    50   Input ~ 0
J10_CN26
Wire Wire Line
	10610 1990 10540 1990
Wire Wire Line
	10540 2090 10610 2090
Wire Wire Line
	10610 2190 10540 2190
Text GLabel 8370 3220 2    50   Input ~ 0
D13
$Comp
L Jumper:Jumper_2_Open JP42
U 1 1 6902C2E4
P 8040 3320
F 0 "JP42" H 7800 3380 50  0000 C CNN
F 1 "Jumper_2_Open" H 8130 3170 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 8040 3320 50  0001 C CNN
F 3 "~" H 8040 3320 50  0001 C CNN
	1    8040 3320
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP29
U 1 1 6902CF89
P 8740 3320
F 0 "JP29" H 8900 3380 50  0000 C CNN
F 1 "Jumper_2_Open" H 8830 3170 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 8740 3320 50  0001 C CNN
F 3 "~" H 8740 3320 50  0001 C CNN
	1    8740 3320
	1    0    0    -1  
$EndComp
Wire Wire Line
	8370 3220 8370 3320
Wire Wire Line
	8370 3320 8240 3320
Wire Wire Line
	8540 3320 8370 3320
Connection ~ 8370 3320
Text GLabel 8360 3410 2    50   Input ~ 0
D12
$Comp
L Jumper:Jumper_2_Open JP41
U 1 1 690766D1
P 8030 3510
F 0 "JP41" H 7790 3570 50  0000 C CNN
F 1 "Jumper_2_Open" H 8120 3360 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 8030 3510 50  0001 C CNN
F 3 "~" H 8030 3510 50  0001 C CNN
	1    8030 3510
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP24
U 1 1 690766DB
P 8730 3510
F 0 "JP24" H 8900 3570 50  0000 C CNN
F 1 "Jumper_2_Open" H 8820 3360 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 8730 3510 50  0001 C CNN
F 3 "~" H 8730 3510 50  0001 C CNN
	1    8730 3510
	1    0    0    -1  
$EndComp
Wire Wire Line
	8360 3410 8360 3510
Wire Wire Line
	8360 3510 8230 3510
Wire Wire Line
	8530 3510 8360 3510
Connection ~ 8360 3510
Text GLabel 8360 3580 2    50   Input ~ 0
D11
$Comp
L Jumper:Jumper_2_Open JP40
U 1 1 690C1101
P 8030 3680
F 0 "JP40" H 7790 3740 50  0000 C CNN
F 1 "Jumper_2_Open" H 8120 3530 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 8030 3680 50  0001 C CNN
F 3 "~" H 8030 3680 50  0001 C CNN
	1    8030 3680
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP20
U 1 1 690C110B
P 8730 3680
F 0 "JP20" H 8890 3750 50  0000 C CNN
F 1 "Jumper_2_Open" H 8820 3530 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 8730 3680 50  0001 C CNN
F 3 "~" H 8730 3680 50  0001 C CNN
	1    8730 3680
	1    0    0    -1  
$EndComp
Wire Wire Line
	8360 3580 8360 3680
Wire Wire Line
	8360 3680 8230 3680
Wire Wire Line
	8530 3680 8360 3680
Connection ~ 8360 3680
Text GLabel 7710 3320 0    50   Input ~ 0
PA5
Text GLabel 7710 3510 0    50   Input ~ 0
PA6
Text GLabel 7710 3680 0    50   Input ~ 0
PA7
Wire Wire Line
	7840 3320 7710 3320
Wire Wire Line
	7830 3510 7710 3510
Wire Wire Line
	7830 3680 7710 3680
Text GLabel 9050 3320 2    50   Input ~ 0
PB13
Text GLabel 9050 3510 2    50   Input ~ 0
PB14
Text GLabel 9050 3680 2    50   Input ~ 0
PB15
Wire Wire Line
	9050 3320 8940 3320
Wire Wire Line
	8930 3510 9050 3510
Wire Wire Line
	9050 3680 8930 3680
Text GLabel 9870 3330 0    50   Input ~ 0
J10_CN26
Text GLabel 9870 3440 0    50   Input ~ 0
J10_CN28
Text GLabel 9870 3690 0    50   Input ~ 0
J10_CN30
$Comp
L Jumper:Jumper_2_Open JP25
U 1 1 6923DFC1
P 10560 3150
F 0 "JP25" H 10320 3210 50  0000 C CNN
F 1 "Jumper_2_Open" H 10650 3000 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 10560 3150 50  0001 C CNN
F 3 "~" H 10560 3150 50  0001 C CNN
	1    10560 3150
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP36
U 1 1 6923EFA6
P 10560 3240
F 0 "JP36" H 10360 3350 50  0000 C CNN
F 1 "Jumper_2_Open" H 10650 3090 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 10560 3240 50  0001 C CNN
F 3 "~" H 10560 3240 50  0001 C CNN
	1    10560 3240
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_2_Open JP28
U 1 1 6926670E
P 10560 3420
F 0 "JP28" H 10320 3480 50  0000 C CNN
F 1 "Jumper_2_Open" H 10650 3270 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 10560 3420 50  0001 C CNN
F 3 "~" H 10560 3420 50  0001 C CNN
	1    10560 3420
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP39
U 1 1 692670FE
P 10560 3510
F 0 "JP39" H 10360 3620 50  0000 C CNN
F 1 "Jumper_2_Open" H 10650 3360 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 10560 3510 50  0001 C CNN
F 3 "~" H 10560 3510 50  0001 C CNN
	1    10560 3510
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_2_Open JP35
U 1 1 6928DFDB
P 10570 3690
F 0 "JP35" H 10330 3750 50  0000 C CNN
F 1 "Jumper_2_Open" H 10660 3540 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 10570 3690 50  0001 C CNN
F 3 "~" H 10570 3690 50  0001 C CNN
	1    10570 3690
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP44
U 1 1 6928EA0D
P 10570 3780
F 0 "JP44" H 10390 3890 50  0000 C CNN
F 1 "Jumper_2_Open" H 10660 3630 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 10570 3780 50  0001 C CNN
F 3 "~" H 10570 3780 50  0001 C CNN
	1    10570 3780
	-1   0    0    1   
$EndComp
Wire Wire Line
	9870 3330 10200 3330
Wire Wire Line
	10200 3150 10360 3150
Wire Wire Line
	10360 3240 10200 3240
Wire Wire Line
	10200 3150 10200 3240
Connection ~ 10200 3240
Wire Wire Line
	10200 3240 10200 3330
Text GLabel 10870 3150 2    50   Input ~ 0
PB15
Text GLabel 10870 3240 2    50   Input ~ 0
PA7
Text GLabel 10880 3420 2    50   Input ~ 0
PB14
Text GLabel 10880 3510 2    50   Input ~ 0
PA6
Text GLabel 10890 3780 2    50   Input ~ 0
PA5
Text GLabel 10890 3690 2    50   Input ~ 0
PB13
Wire Wire Line
	10870 3150 10760 3150
Wire Wire Line
	10870 3240 10760 3240
Wire Wire Line
	10880 3420 10760 3420
Wire Wire Line
	10880 3510 10760 3510
Wire Wire Line
	10890 3690 10770 3690
Wire Wire Line
	10890 3780 10770 3780
Wire Wire Line
	10360 3420 10130 3420
Wire Wire Line
	10130 3420 10130 3440
Wire Wire Line
	10130 3440 10100 3440
Wire Wire Line
	10360 3510 10100 3510
Wire Wire Line
	10100 3510 10100 3440
Connection ~ 10100 3440
Wire Wire Line
	10100 3440 9870 3440
Wire Wire Line
	10370 3690 10200 3690
Wire Wire Line
	10370 3780 10200 3780
Wire Wire Line
	10200 3780 10200 3690
Connection ~ 10200 3690
Wire Wire Line
	10200 3690 9870 3690
Text Notes 10280 4100 0    50   ~ 0
JP25, JP28, JP35, \nOpen only for F302
Text Notes 10230 2970 0    50   ~ 0
JP20, JP24, JP29, \nOpen only for F302
Wire Wire Line
	7320 2400 8310 2400
$EndSCHEMATC
