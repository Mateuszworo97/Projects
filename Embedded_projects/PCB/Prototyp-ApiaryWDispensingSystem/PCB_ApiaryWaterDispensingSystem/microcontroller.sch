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
P 8490 4200
F 0 "SW?" V 8536 3912 50  0000 R CNN
F 1 "SW_Push_Dual" V 8445 3912 50  0000 R CNN
F 2 "" H 8490 4400 50  0001 C CNN
F 3 "~" H 8490 4400 50  0001 C CNN
	1    8490 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 67E58DD1
P 8520 3540
F 0 "R?" H 8590 3586 50  0000 L CNN
F 1 "R" H 8590 3495 50  0000 L CNN
F 2 "" V 8450 3540 50  0001 C CNN
F 3 "~" H 8520 3540 50  0001 C CNN
	1    8520 3540
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 67E58F23
P 8860 4710
F 0 "R?" V 8653 4710 50  0000 C CNN
F 1 "R" V 8744 4710 50  0000 C CNN
F 2 "" V 8790 4710 50  0001 C CNN
F 3 "~" H 8860 4710 50  0001 C CNN
	1    8860 4710
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 67E59970
P 9550 4150
F 0 "C?" H 9665 4196 50  0000 L CNN
F 1 "C" H 9665 4105 50  0000 L CNN
F 2 "" H 9588 4000 50  0001 C CNN
F 3 "~" H 9550 4150 50  0001 C CNN
	1    9550 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67E5A081
P 9470 4910
F 0 "#PWR?" H 9470 4660 50  0001 C CNN
F 1 "GND" H 9475 4737 50  0000 C CNN
F 2 "" H 9470 4910 50  0001 C CNN
F 3 "" H 9470 4910 50  0001 C CNN
	1    9470 4910
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP17
U 1 1 67E5AD17
P 7950 3880
F 0 "JP17" H 7950 4115 50  0000 C CNN
F 1 "Jumper_2_Open" H 7950 4024 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7950 3880 50  0001 C CNN
F 3 "~" H 7950 3880 50  0001 C CNN
	1    7950 3880
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F4:STM32F411RETx U?
U 1 1 67E5B943
P 2730 3780
F 0 "U?" H 2730 1891 50  0000 C CNN
F 1 "STM32F411RETx" H 2730 1800 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 2130 2080 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00115249.pdf" H 2730 3780 50  0001 C CNN
	1    2730 3780
	1    0    0    -1  
$EndComp
$EndSCHEMATC
