EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L Switch:SW_Push_Dual SW?
U 1 1 67E57DF4
P 1690 5290
F 0 "SW?" V 1736 5002 50  0000 R CNN
F 1 "SW_Push_Dual" V 1500 5890 50  0000 R CNN
F 2 "" H 1690 5490 50  0001 C CNN
F 3 "~" H 1690 5490 50  0001 C CNN
	1    1690 5290
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 67E58DD1
P 1690 4780
F 0 "R?" H 1760 4826 50  0000 L CNN
F 1 "R" H 1760 4735 50  0000 L CNN
F 2 "" V 1620 4780 50  0001 C CNN
F 3 "~" H 1690 4780 50  0001 C CNN
	1    1690 4780
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67E58F23
P 1240 5670
F 0 "R?" V 1033 5670 50  0000 C CNN
F 1 "R" V 1124 5670 50  0000 C CNN
F 2 "" V 1170 5670 50  0001 C CNN
F 3 "~" H 1240 5670 50  0001 C CNN
	1    1240 5670
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 67E59970
P 900 5300
F 0 "C?" H 1015 5346 50  0000 L CNN
F 1 "C" H 1015 5255 50  0000 L CNN
F 2 "" H 938 5150 50  0001 C CNN
F 3 "~" H 900 5300 50  0001 C CNN
	1    900  5300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP17
U 1 1 67E5AD17
P 2430 5000
F 0 "JP17" H 2430 5235 50  0000 C CNN
F 1 "Jumper_2_Open" H 2430 4850 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 2430 5000 50  0001 C CNN
F 3 "~" H 2430 5000 50  0001 C CNN
	1    2430 5000
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F4:STM32F411RETx U?
U 1 1 67E5B943
P 5470 3600
F 0 "U?" H 5470 1711 50  0000 C CNN
F 1 "STM32F411RETx" H 5470 1620 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 4870 1900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00115249.pdf" H 5470 3600 50  0001 C CNN
	1    5470 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 67E6E023
P 1690 4290
F 0 "#PWR?" H 1690 4140 50  0001 C CNN
F 1 "+3.3V" H 1705 4463 50  0000 C CNN
F 2 "" H 1690 4290 50  0001 C CNN
F 3 "" H 1690 4290 50  0001 C CNN
	1    1690 4290
	1    0    0    -1  
$EndComp
Wire Wire Line
	1690 5090 1690 5000
Wire Wire Line
	1690 4630 1690 4290
Wire Wire Line
	1490 5090 1490 5000
Wire Wire Line
	1490 5000 1690 5000
Connection ~ 1690 5000
Wire Wire Line
	1690 5000 1690 4930
$Comp
L power:GND #PWR?
U 1 1 67E6F472
P 1690 5810
F 0 "#PWR?" H 1690 5560 50  0001 C CNN
F 1 "GND" H 1695 5637 50  0000 C CNN
F 2 "" H 1690 5810 50  0001 C CNN
F 3 "" H 1690 5810 50  0001 C CNN
	1    1690 5810
	1    0    0    -1  
$EndComp
Wire Wire Line
	1690 5490 1690 5670
Wire Wire Line
	1490 5490 1490 5670
Wire Wire Line
	1490 5670 1690 5670
Connection ~ 1690 5670
Wire Wire Line
	1690 5670 1690 5810
Wire Wire Line
	1090 5670 900  5670
Wire Wire Line
	900  5670 900  5450
Wire Wire Line
	1490 5000 900  5000
Wire Wire Line
	900  5000 900  5150
Connection ~ 1490 5000
Wire Wire Line
	1690 5000 2230 5000
Wire Wire Line
	4770 5000 2630 5000
$Comp
L Device:Crystal_GND23_Small Y?
U 1 1 67E82DBE
P 3360 5450
F 0 "Y?" V 3314 5594 50  0000 L CNN
F 1 "Crystal_GND23_Small" V 3380 4490 50  0000 L CNN
F 2 "ApiaryWaterDispensingSystem:ABS25-32768KHZ-6-T_Abracon" H 3360 5450 50  0001 C CNN
F 3 "~" H 3360 5450 50  0001 C CNN
	1    3360 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 67E84A86
P 3820 5100
F 0 "R34" V 3930 4890 50  0000 L CNN
F 1 "0" V 3930 5190 50  0000 L CNN
F 2 "" V 3750 5100 50  0001 C CNN
F 3 "~" H 3820 5100 50  0001 C CNN
	1    3820 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R36
U 1 1 67E86969
P 3810 5800
F 0 "R36" V 3920 5590 50  0000 L CNN
F 1 "0" V 3920 5890 50  0000 L CNN
F 2 "" V 3740 5800 50  0001 C CNN
F 3 "~" H 3810 5800 50  0001 C CNN
	1    3810 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	3970 5100 4770 5100
Wire Wire Line
	4770 5200 4220 5200
Wire Wire Line
	4220 5200 4220 5800
Wire Wire Line
	4220 5800 3960 5800
$Comp
L Device:C C31
U 1 1 67E89150
P 3100 5100
F 0 "C31" V 3230 4890 50  0000 L CNN
F 1 "4.3pF" V 3230 5110 50  0000 L CNN
F 2 "" H 3138 4950 50  0001 C CNN
F 3 "~" H 3100 5100 50  0001 C CNN
	1    3100 5100
	0    1    1    0   
$EndComp
$Comp
L Device:C C32
U 1 1 67E8A35F
P 3050 5800
F 0 "C32" V 3190 5630 50  0000 L CNN
F 1 "4.3pF" V 3190 5870 50  0000 L CNN
F 2 "" H 3088 5650 50  0001 C CNN
F 3 "~" H 3050 5800 50  0001 C CNN
	1    3050 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67E8C2FD
P 2810 5310
F 0 "#PWR?" H 2810 5060 50  0001 C CNN
F 1 "GND" H 2640 5260 50  0000 C CNN
F 2 "" H 2810 5310 50  0001 C CNN
F 3 "" H 2810 5310 50  0001 C CNN
	1    2810 5310
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67E8C650
P 2800 6020
F 0 "#PWR?" H 2800 5770 50  0001 C CNN
F 1 "GND" H 2805 5847 50  0000 C CNN
F 2 "" H 2800 6020 50  0001 C CNN
F 3 "" H 2800 6020 50  0001 C CNN
	1    2800 6020
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5100 2810 5100
Wire Wire Line
	2810 5100 2810 5310
Wire Wire Line
	2800 6020 2800 5800
Wire Wire Line
	2800 5800 2900 5800
Wire Wire Line
	3250 5100 3360 5100
Wire Wire Line
	3200 5800 3360 5800
Wire Wire Line
	3360 5550 3360 5800
Connection ~ 3360 5800
Wire Wire Line
	3360 5800 3660 5800
Wire Wire Line
	3360 5360 3360 5350
Connection ~ 3360 5100
Wire Wire Line
	3360 5100 3670 5100
Connection ~ 3360 5350
Wire Wire Line
	3360 5350 3360 5100
$EndSCHEMATC
