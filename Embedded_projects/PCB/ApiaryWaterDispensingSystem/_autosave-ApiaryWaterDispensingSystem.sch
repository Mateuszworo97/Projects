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
Text Notes 1950 900  0    118  ~ 0
ARDUINO HEADER\n
Wire Notes Line
	600  600  600  7700
Wire Notes Line
	600  7700 2550 7700
Text Notes 5350 850  0    118  ~ 0
I2C\n
Text Notes 7400 1200 0    79   ~ 0
BH1750
Text Notes 8750 1150 0    79   ~ 0
SSD1306
Text Notes 5700 2350 0    79   ~ 0
INA219 PV VOLTAGE
Text Notes 7400 2350 0    79   ~ 0
INA219 BATTERY VOLTAGE
Text Notes 1800 5050 0    79   ~ 0
SD CARD
Text Notes 10050 1200 0    79   ~ 0
RTC DS3231
$Comp
L Connector:Conn_01x06_Female J5
U 1 1 667C045D
P 6350 2700
F 0 "J5" H 6450 2950 50  0000 L CNN
F 1 "INA219 PV" H 5850 2300 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 6350 2700 50  0001 C CNN
F 3 "~" H 6350 2700 50  0001 C CNN
	1    6350 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J6
U 1 1 667C0A7B
P 8250 2700
F 0 "J6" H 8400 2950 50  0000 L CNN
F 1 "INA219 Battery" H 7750 2300 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 8250 2700 50  0001 C CNN
F 3 "~" H 8250 2700 50  0001 C CNN
	1    8250 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J2
U 1 1 667C1F21
P 7700 1600
F 0 "J2" H 7800 1900 50  0000 L CNN
F 1 "BH1750" H 7450 1200 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 7700 1600 50  0001 C CNN
F 3 "~" H 7700 1600 50  0001 C CNN
	1    7700 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 667C2E35
P 9050 1500
F 0 "J3" H 9150 1700 50  0000 L CNN
F 1 "OLED" H 8850 1050 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 9050 1500 50  0001 C CNN
F 3 "~" H 9050 1500 50  0001 C CNN
	1    9050 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J1
U 1 1 667BFC92
P 6350 1600
F 0 "J1" H 6500 1900 50  0000 L CNN
F 1 "BME280" H 6100 1200 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 6350 1600 50  0001 C CNN
F 3 "~" H 6350 1600 50  0001 C CNN
	1    6350 1600
	1    0    0    -1  
$EndComp
Text Notes 6050 1200 0    79   ~ 0
BME280
Text Notes 5750 3450 0    79   ~ 0
DRV8835 - Motor controller
Text Notes 7900 3450 0    79   ~ 0
PUMP CONNECTOR
Text Notes 9750 2400 0    79   ~ 0
I2C CONNECTOR
Text Notes 9650 3400 0    79   ~ 0
BOOST CONVERTER
Text Notes 2900 4750 0    79   ~ 0
BUTTONS
$Comp
L power:+3.3V #PWR016
U 1 1 667D7083
P 5850 1350
F 0 "#PWR016" H 5850 1200 50  0001 C CNN
F 1 "+3.3V" H 5650 1350 50  0000 C CNN
F 2 "" H 5850 1350 50  0001 C CNN
F 3 "" H 5850 1350 50  0001 C CNN
	1    5850 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 667D7C2A
P 5600 1500
F 0 "#PWR014" H 5600 1250 50  0001 C CNN
F 1 "GND" H 5450 1500 50  0000 C CNN
F 2 "" H 5600 1500 50  0001 C CNN
F 3 "" H 5600 1500 50  0001 C CNN
	1    5600 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1400 5850 1400
Wire Wire Line
	5850 1400 5850 1350
Wire Wire Line
	5600 1500 6150 1500
Text GLabel 6050 1600 0    50   Input ~ 0
SCL
Text GLabel 6050 1700 0    50   Input ~ 0
SDA
Wire Wire Line
	6150 1600 6050 1600
Wire Wire Line
	6150 1700 6050 1700
$Comp
L power:+3.3V #PWR019
U 1 1 667DA42B
P 7150 1350
F 0 "#PWR019" H 7150 1200 50  0001 C CNN
F 1 "+3.3V" H 6950 1350 50  0000 C CNN
F 2 "" H 7150 1350 50  0001 C CNN
F 3 "" H 7150 1350 50  0001 C CNN
	1    7150 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 667DA82E
P 6850 1500
F 0 "#PWR018" H 6850 1250 50  0001 C CNN
F 1 "GND" H 6700 1500 50  0000 C CNN
F 2 "" H 6850 1500 50  0001 C CNN
F 3 "" H 6850 1500 50  0001 C CNN
	1    6850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1400 7150 1400
Wire Wire Line
	7150 1400 7150 1350
Wire Wire Line
	7500 1500 6850 1500
Text GLabel 7350 1600 0    50   Input ~ 0
SCL
Text GLabel 7350 1700 0    50   Input ~ 0
SDA
Wire Wire Line
	7500 1600 7350 1600
Wire Wire Line
	7350 1700 7500 1700
$Comp
L power:+3.3V #PWR027
U 1 1 667DC3D9
P 8200 1500
F 0 "#PWR027" H 8200 1350 50  0001 C CNN
F 1 "+3.3V" H 8000 1500 50  0000 C CNN
F 2 "" H 8200 1500 50  0001 C CNN
F 3 "" H 8200 1500 50  0001 C CNN
	1    8200 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 667DC856
P 8500 1350
F 0 "#PWR026" H 8500 1100 50  0001 C CNN
F 1 "GND" H 8350 1350 50  0000 C CNN
F 2 "" H 8500 1350 50  0001 C CNN
F 3 "" H 8500 1350 50  0001 C CNN
	1    8500 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 1400 8500 1400
Wire Wire Line
	8500 1400 8500 1350
Wire Wire Line
	8850 1500 8200 1500
Text GLabel 8700 1600 0    50   Input ~ 0
SCL
Text GLabel 8700 1700 0    50   Input ~ 0
SDA
Wire Wire Line
	8850 1600 8700 1600
Wire Wire Line
	8850 1700 8700 1700
NoConn ~ 7500 1800
NoConn ~ 6150 1800
NoConn ~ 6150 1900
Text GLabel 10100 1350 0    50   Input ~ 0
SCL
Text GLabel 10100 1450 0    50   Input ~ 0
SDA
$Comp
L power:+3.3V #PWR033
U 1 1 667DE922
P 9800 1550
F 0 "#PWR033" H 9800 1400 50  0001 C CNN
F 1 "+3.3V" H 9650 1700 50  0000 C CNN
F 2 "" H 9800 1550 50  0001 C CNN
F 3 "" H 9800 1550 50  0001 C CNN
	1    9800 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 667DEFDE
P 9600 1700
F 0 "#PWR031" H 9600 1450 50  0001 C CNN
F 1 "GND" H 9450 1700 50  0000 C CNN
F 2 "" H 9600 1700 50  0001 C CNN
F 3 "" H 9600 1700 50  0001 C CNN
	1    9600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1650 9600 1650
Wire Wire Line
	9600 1650 9600 1700
Wire Wire Line
	10300 1550 9800 1550
Wire Wire Line
	10300 1350 10100 1350
Wire Wire Line
	10300 1450 10100 1450
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 667E14A9
P 10500 1450
F 0 "J4" H 10600 1650 50  0000 L CNN
F 1 "RTC" H 10350 950 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 10500 1450 50  0001 C CNN
F 3 "~" H 10500 1450 50  0001 C CNN
	1    10500 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 667E20BE
P 5750 2450
F 0 "#PWR015" H 5750 2300 50  0001 C CNN
F 1 "+3.3V" H 5550 2450 50  0000 C CNN
F 2 "" H 5750 2450 50  0001 C CNN
F 3 "" H 5750 2450 50  0001 C CNN
	1    5750 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 667E239F
P 2450 3250
F 0 "#PWR010" H 2450 3000 50  0001 C CNN
F 1 "GND" H 2300 3250 50  0000 C CNN
F 2 "" H 2450 3250 50  0001 C CNN
F 3 "" H 2450 3250 50  0001 C CNN
	1    2450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2600 6150 2600
Wire Wire Line
	6150 2500 5750 2500
Wire Wire Line
	5750 2500 5750 2450
Text GLabel 6000 2700 0    50   Input ~ 0
SCL
Text GLabel 6000 2800 0    50   Input ~ 0
SDA
Wire Wire Line
	6150 2700 6000 2700
Wire Wire Line
	6150 2800 6000 2800
NoConn ~ 6150 2900
NoConn ~ 6150 3000
$Comp
L power:GND #PWR023
U 1 1 667E5E80
P 7500 2600
F 0 "#PWR023" H 7500 2350 50  0001 C CNN
F 1 "GND" H 7350 2600 50  0000 C CNN
F 2 "" H 7500 2600 50  0001 C CNN
F 3 "" H 7500 2600 50  0001 C CNN
	1    7500 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR025
U 1 1 667E5A8D
P 7750 2500
F 0 "#PWR025" H 7750 2350 50  0001 C CNN
F 1 "+3.3V" H 7550 2600 50  0000 C CNN
F 2 "" H 7750 2500 50  0001 C CNN
F 3 "" H 7750 2500 50  0001 C CNN
	1    7750 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2500 7750 2500
Wire Wire Line
	8050 2600 7500 2600
Text GLabel 7900 2700 0    50   Input ~ 0
SCL
Text GLabel 7900 2800 0    50   Input ~ 0
SDA
Wire Wire Line
	8050 2800 7900 2800
Wire Wire Line
	8050 2700 7900 2700
Text GLabel 9900 2650 0    50   Input ~ 0
SCL
Text GLabel 9900 2750 0    50   Input ~ 0
SDA
Wire Wire Line
	10050 2650 9900 2650
Wire Wire Line
	10050 2750 9900 2750
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 667EC2D2
P 8650 3700
F 0 "J12" H 8730 3692 50  0000 L CNN
F 1 "PUMP" H 8550 3450 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8650 3700 50  0001 C CNN
F 3 "~" H 8650 3700 50  0001 C CNN
	1    8650 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J13
U 1 1 667ECFC2
P 10500 3750
F 0 "J13" H 10580 3792 50  0000 L CNN
F 1 "BOOST" H 10400 3500 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10500 3750 50  0001 C CNN
F 3 "~" H 10500 3750 50  0001 C CNN
	1    10500 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J15
U 1 1 667CFE08
P 2100 5650
F 0 "J15" H 2250 6100 50  0000 L CNN
F 1 "SD CARD" H 1800 5100 50  0000 L CNN
F 2 "" H 2100 5650 50  0001 C CNN
F 3 "~" H 2100 5650 50  0001 C CNN
	1    2100 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 667FC4A0
P 1350 5350
F 0 "#PWR01" H 1350 5100 50  0001 C CNN
F 1 "GND" H 1200 5350 50  0000 C CNN
F 2 "" H 1350 5350 50  0001 C CNN
F 3 "" H 1350 5350 50  0001 C CNN
	1    1350 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 667FC7C8
P 1450 6050
F 0 "#PWR02" H 1450 5900 50  0001 C CNN
F 1 "+3.3V" H 1250 6050 50  0000 C CNN
F 2 "" H 1450 6050 50  0001 C CNN
F 3 "" H 1450 6050 50  0001 C CNN
	1    1450 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5350 1350 5350
Wire Wire Line
	1900 6050 1450 6050
Text GLabel 1700 5650 0    50   Input ~ 0
SPI3_MOSI
Text GLabel 1700 5750 0    50   Input ~ 0
SPI3_SCK
Text GLabel 1700 5850 0    50   Input ~ 0
SPI3_MISO
Wire Wire Line
	1900 5850 1700 5850
Wire Wire Line
	1900 5750 1700 5750
Wire Wire Line
	1900 5650 1700 5650
$Comp
L Connector:Conn_01x07_Female J9
U 1 1 66807218
P 6150 4000
F 0 "J9" H 6250 4400 50  0000 L CNN
F 1 "DRV8835 Control" H 5700 3550 50  0000 L CNN
F 2 "" H 6150 4000 50  0001 C CNN
F 3 "~" H 6150 4000 50  0001 C CNN
	1    6150 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x07_Female J11
U 1 1 668086AE
P 6900 4000
F 0 "J11" H 7050 4400 50  0000 L CNN
F 1 "DRV8835 PUMP" H 6550 3550 50  0000 L CNN
F 2 "" H 6900 4000 50  0001 C CNN
F 3 "~" H 6900 4000 50  0001 C CNN
	1    6900 4000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR020
U 1 1 668097CA
P 7350 3700
F 0 "#PWR020" H 7350 3450 50  0001 C CNN
F 1 "GND1" H 7250 3550 50  0000 C CNN
F 2 "" H 7350 3700 50  0001 C CNN
F 3 "" H 7350 3700 50  0001 C CNN
	1    7350 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 3700 7350 3700
$Comp
L power:GND #PWR011
U 1 1 66812BFB
P 5550 3600
F 0 "#PWR011" H 5550 3350 50  0001 C CNN
F 1 "GND" H 5400 3600 50  0000 C CNN
F 2 "" H 5550 3600 50  0001 C CNN
F 3 "" H 5550 3600 50  0001 C CNN
	1    5550 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 3700 5550 3700
$Comp
L power:+3.3V #PWR09
U 1 1 66814686
P 5350 3750
F 0 "#PWR09" H 5350 3600 50  0001 C CNN
F 1 "+3.3V" H 5150 3750 50  0000 C CNN
F 2 "" H 5350 3750 50  0001 C CNN
F 3 "" H 5350 3750 50  0001 C CNN
	1    5350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3600 5550 3700
Wire Wire Line
	5950 3800 5350 3800
Wire Wire Line
	5350 3800 5350 3750
Text GLabel 5750 4300 0    50   Input ~ 0
MODE
Text GLabel 5800 4200 0    50   Input ~ 0
APHASE
Text GLabel 5800 4100 0    50   Input ~ 0
AENABLE
Wire Wire Line
	5950 4100 5800 4100
Wire Wire Line
	5950 4200 5800 4200
Wire Wire Line
	5950 4300 5750 4300
NoConn ~ 5950 3900
NoConn ~ 5950 4000
$Comp
L power:+6V #PWR024
U 1 1 668224A6
P 7650 3800
F 0 "#PWR024" H 7650 3650 50  0001 C CNN
F 1 "+6V" H 7750 3800 50  0000 C CNN
F 2 "" H 7650 3800 50  0001 C CNN
F 3 "" H 7650 3800 50  0001 C CNN
	1    7650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3800 7100 3800
$Comp
L power:+6V #PWR034
U 1 1 668265BF
P 9900 3650
F 0 "#PWR034" H 9900 3500 50  0001 C CNN
F 1 "+6V" H 9750 3750 50  0000 C CNN
F 2 "" H 9900 3650 50  0001 C CNN
F 3 "" H 9900 3650 50  0001 C CNN
	1    9900 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR037
U 1 1 66826915
P 10100 4850
F 0 "#PWR037" H 10100 4600 50  0001 C CNN
F 1 "GND1" H 10000 4700 50  0000 C CNN
F 2 "" H 10100 4850 50  0001 C CNN
F 3 "" H 10100 4850 50  0001 C CNN
	1    10100 4850
	1    0    0    -1  
$EndComp
Text GLabel 8250 3700 0    50   Input ~ 0
AOUT2
Text GLabel 7350 4200 2    50   Input ~ 0
AOUT1
Wire Wire Line
	7350 4100 7100 4100
Wire Wire Line
	7100 4200 7350 4200
Text GLabel 7350 4100 2    50   Input ~ 0
AOUT2
Text GLabel 8250 3800 0    50   Input ~ 0
AOUT1
Wire Wire Line
	8450 3700 8250 3700
Wire Wire Line
	8450 3800 8250 3800
Wire Wire Line
	10300 3650 10200 3650
$Comp
L power:+5V #PWR036
U 1 1 668378C5
P 10100 4600
F 0 "#PWR036" H 10100 4450 50  0001 C CNN
F 1 "+5V" H 9950 4750 50  0000 C CNN
F 2 "" H 10100 4600 50  0001 C CNN
F 3 "" H 10100 4600 50  0001 C CNN
	1    10100 4600
	1    0    0    -1  
$EndComp
Text Notes 9750 4300 0    79   ~ 0
POWER CONNECTOR
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 6683AD16
P 10550 4700
F 0 "J14" H 10630 4692 50  0000 L CNN
F 1 "POWER_5V" H 10350 4450 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10550 4700 50  0001 C CNN
F 3 "~" H 10550 4700 50  0001 C CNN
	1    10550 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 4800 10100 4800
Wire Wire Line
	10100 4800 10100 4850
Wire Wire Line
	10350 4700 10100 4700
Wire Wire Line
	10100 4700 10100 4600
$Comp
L power:GND1 #PWR032
U 1 1 66842D03
P 9750 3750
F 0 "#PWR032" H 9750 3500 50  0001 C CNN
F 1 "GND1" H 9500 3700 50  0000 C CNN
F 2 "" H 9750 3750 50  0001 C CNN
F 3 "" H 9750 3750 50  0001 C CNN
	1    9750 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR035
U 1 1 66843189
P 10050 3850
F 0 "#PWR035" H 10050 3700 50  0001 C CNN
F 1 "+5V" H 10200 3950 50  0000 C CNN
F 2 "" H 10050 3850 50  0001 C CNN
F 3 "" H 10050 3850 50  0001 C CNN
	1    10050 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	10300 3850 10050 3850
Wire Wire Line
	9750 3750 10300 3750
NoConn ~ 7100 3900
NoConn ~ 7100 4000
NoConn ~ 7100 4300
Wire Notes Line
	5000 600  5000 4500
Wire Notes Line
	5000 3250 11100 3250
Wire Notes Line
	11100 3250 11100 600 
Wire Notes Line
	600  600  11100 600 
Text Label 7100 4100 0    20   ~ 0
pump_power
Text Label 7100 4200 0    20   ~ 0
pump_power
NoConn ~ 8050 2900
NoConn ~ 8050 3000
Text Label 8300 3700 0    20   ~ 0
pump_power
Text Label 8300 3800 0    20   ~ 0
pump_power
Text Label 6100 1600 0    20   ~ 0
I2C
Text Label 6100 1700 0    20   ~ 0
I2C
Text Label 7400 1600 0    20   ~ 0
I2C
Text Label 7400 1700 0    20   ~ 0
I2C
Text Label 8750 1600 0    20   ~ 0
I2C
Text Label 8750 1700 0    20   ~ 0
I2C
Text Label 7950 2700 0    20   ~ 0
I2C
Text Label 7950 2800 0    20   ~ 0
I2C
Text Label 6050 2700 0    20   ~ 0
I2C
Text Label 6050 2800 0    20   ~ 0
I2C
Text Label 10200 1350 0    20   ~ 0
I2C
Text Label 10200 1450 0    20   ~ 0
I2C
Text Label 9950 2650 0    20   ~ 0
I2C
Text Label 9950 2750 0    20   ~ 0
I2C
Text Label 1800 5650 0    20   ~ 0
SPI3
Text Label 1800 5750 0    20   ~ 0
SPI3
Text Label 1800 5850 0    20   ~ 0
SPI3
Wire Notes Line
	7850 4500 7850 3250
Text Label 10000 1550 0    20   ~ 0
POWER_3V3
Text Label 8550 1500 0    20   ~ 0
POWER_3V3
Text Label 7250 1400 0    20   ~ 0
POWER_3V3
Text Label 5950 1400 0    20   ~ 0
POWER_3V3
Text Label 5950 2500 0    20   ~ 0
POWER_3V3
Text Label 7850 2500 0    20   ~ 0
POWER_3V3
Text Label 5500 3800 0    20   ~ 0
POWER_3V3
Text Label 10000 3650 0    20   ~ 0
POWER_6V
Text Label 10150 4700 0    20   ~ 0
POWER_5V
Text Label 10100 3850 0    20   ~ 0
POWER_5V
$Comp
L Device:R R4
U 1 1 6687D09B
P 4200 5200
F 0 "R4" H 4270 5246 50  0000 L CNN
F 1 "10k" H 4270 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4130 5200 50  0001 C CNN
F 3 "~" H 4200 5200 50  0001 C CNN
	1    4200 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 6687D9CC
P 4200 4950
F 0 "#PWR06" H 4200 4800 50  0001 C CNN
F 1 "+3.3V" H 4000 4950 50  0000 C CNN
F 2 "" H 4200 4950 50  0001 C CNN
F 3 "" H 4200 4950 50  0001 C CNN
	1    4200 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6687EFF7
P 3600 5600
F 0 "R2" H 3670 5646 50  0000 L CNN
F 1 "1k" H 3670 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3530 5600 50  0001 C CNN
F 3 "~" H 3600 5600 50  0001 C CNN
	1    3600 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6687FA84
P 3600 6050
F 0 "C1" H 3715 6096 50  0000 L CNN
F 1 "100n" H 3715 6005 50  0000 L CNN
F 2 "" H 3638 5900 50  0001 C CNN
F 3 "~" H 3600 6050 50  0001 C CNN
	1    3600 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4950 4200 5050
Wire Wire Line
	3600 5450 4200 5450
Wire Wire Line
	4200 5350 4200 5450
Connection ~ 4200 5450
Wire Wire Line
	4200 5450 4200 5550
$Comp
L power:GND #PWR04
U 1 1 66895FA4
P 3600 6350
F 0 "#PWR04" H 3600 6100 50  0001 C CNN
F 1 "GND" H 3450 6350 50  0000 C CNN
F 2 "" H 3600 6350 50  0001 C CNN
F 3 "" H 3600 6350 50  0001 C CNN
	1    3600 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6200 3600 6350
Wire Wire Line
	3600 5750 3600 5900
Text GLabel 3350 5450 0    50   Output ~ 0
COUNTER_UP
Wire Wire Line
	3600 5450 3350 5450
Connection ~ 3600 5450
$Comp
L power:GND #PWR07
U 1 1 668A2E30
P 4200 6350
F 0 "#PWR07" H 4200 6100 50  0001 C CNN
F 1 "GND" H 4050 6350 50  0000 C CNN
F 2 "" H 4200 6350 50  0001 C CNN
F 3 "" H 4200 6350 50  0001 C CNN
	1    4200 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5950 4200 6350
$Comp
L Device:R R6
U 1 1 668A5A69
P 6100 5200
F 0 "R6" H 6170 5246 50  0000 L CNN
F 1 "10k" H 6170 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6030 5200 50  0001 C CNN
F 3 "~" H 6100 5200 50  0001 C CNN
	1    6100 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 668A5A73
P 6100 4950
F 0 "#PWR012" H 6100 4800 50  0001 C CNN
F 1 "+3.3V" H 5900 4950 50  0000 C CNN
F 2 "" H 6100 4950 50  0001 C CNN
F 3 "" H 6100 4950 50  0001 C CNN
	1    6100 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 668A5A7D
P 5500 5600
F 0 "R5" H 5570 5646 50  0000 L CNN
F 1 "1k" H 5570 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5430 5600 50  0001 C CNN
F 3 "~" H 5500 5600 50  0001 C CNN
	1    5500 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 668A5A87
P 5500 6050
F 0 "C2" H 5615 6096 50  0000 L CNN
F 1 "100n" H 5615 6005 50  0000 L CNN
F 2 "" H 5538 5900 50  0001 C CNN
F 3 "~" H 5500 6050 50  0001 C CNN
	1    5500 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4950 6100 5050
Wire Wire Line
	5500 5450 6100 5450
Wire Wire Line
	6100 5350 6100 5450
Connection ~ 6100 5450
Wire Wire Line
	6100 5450 6100 5550
$Comp
L power:GND #PWR08
U 1 1 668A5A96
P 5500 6350
F 0 "#PWR08" H 5500 6100 50  0001 C CNN
F 1 "GND" H 5350 6350 50  0000 C CNN
F 2 "" H 5500 6350 50  0001 C CNN
F 3 "" H 5500 6350 50  0001 C CNN
	1    5500 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6200 5500 6350
Wire Wire Line
	5500 5750 5500 5900
Text GLabel 5250 5450 0    50   Output ~ 0
COUNTER_DOWN
Wire Wire Line
	5500 5450 5250 5450
Connection ~ 5500 5450
$Comp
L power:GND #PWR013
U 1 1 668A5AA5
P 6100 6350
F 0 "#PWR013" H 6100 6100 50  0001 C CNN
F 1 "GND" H 5950 6350 50  0000 C CNN
F 2 "" H 6100 6350 50  0001 C CNN
F 3 "" H 6100 6350 50  0001 C CNN
	1    6100 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5950 6100 6350
$Comp
L Device:R R8
U 1 1 668ACE93
P 7600 5200
F 0 "R8" H 7670 5246 50  0000 L CNN
F 1 "10k" H 7670 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7530 5200 50  0001 C CNN
F 3 "~" H 7600 5200 50  0001 C CNN
	1    7600 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR021
U 1 1 668ACE9D
P 7600 4950
F 0 "#PWR021" H 7600 4800 50  0001 C CNN
F 1 "+3.3V" H 7400 4950 50  0000 C CNN
F 2 "" H 7600 4950 50  0001 C CNN
F 3 "" H 7600 4950 50  0001 C CNN
	1    7600 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 668ACEA7
P 7000 5600
F 0 "R7" H 7070 5646 50  0000 L CNN
F 1 "1k" H 7070 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6930 5600 50  0001 C CNN
F 3 "~" H 7000 5600 50  0001 C CNN
	1    7000 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 668ACEB1
P 7000 6050
F 0 "C3" H 7115 6096 50  0000 L CNN
F 1 "100n" H 7115 6005 50  0000 L CNN
F 2 "" H 7038 5900 50  0001 C CNN
F 3 "~" H 7000 6050 50  0001 C CNN
	1    7000 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4950 7600 5050
Wire Wire Line
	7000 5450 7600 5450
Wire Wire Line
	7600 5350 7600 5450
Connection ~ 7600 5450
Wire Wire Line
	7600 5450 7600 5550
$Comp
L power:GND #PWR017
U 1 1 668ACEC0
P 7000 6350
F 0 "#PWR017" H 7000 6100 50  0001 C CNN
F 1 "GND" H 6850 6350 50  0000 C CNN
F 2 "" H 7000 6350 50  0001 C CNN
F 3 "" H 7000 6350 50  0001 C CNN
	1    7000 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 6200 7000 6350
Wire Wire Line
	7000 5750 7000 5900
Text GLabel 6750 5450 0    50   Output ~ 0
OPTION
Wire Wire Line
	7000 5450 6750 5450
Connection ~ 7000 5450
$Comp
L power:GND #PWR022
U 1 1 668ACECF
P 7600 6350
F 0 "#PWR022" H 7600 6100 50  0001 C CNN
F 1 "GND" H 7450 6350 50  0000 C CNN
F 2 "" H 7600 6350 50  0001 C CNN
F 3 "" H 7600 6350 50  0001 C CNN
	1    7600 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5950 7600 6350
$Comp
L Device:R R10
U 1 1 668B33E2
P 9400 5200
F 0 "R10" H 9470 5246 50  0000 L CNN
F 1 "10k" H 9470 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9330 5200 50  0001 C CNN
F 3 "~" H 9400 5200 50  0001 C CNN
	1    9400 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR029
U 1 1 668B33EC
P 9400 4950
F 0 "#PWR029" H 9400 4800 50  0001 C CNN
F 1 "+3.3V" H 9200 4950 50  0000 C CNN
F 2 "" H 9400 4950 50  0001 C CNN
F 3 "" H 9400 4950 50  0001 C CNN
	1    9400 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 668B33F6
P 8800 5600
F 0 "R9" H 8870 5646 50  0000 L CNN
F 1 "1k" H 8870 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8730 5600 50  0001 C CNN
F 3 "~" H 8800 5600 50  0001 C CNN
	1    8800 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 668B3400
P 8800 6050
F 0 "C4" H 8915 6096 50  0000 L CNN
F 1 "100n" H 8915 6005 50  0000 L CNN
F 2 "" H 8838 5900 50  0001 C CNN
F 3 "~" H 8800 6050 50  0001 C CNN
	1    8800 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4950 9400 5050
Wire Wire Line
	8800 5450 9400 5450
Wire Wire Line
	9400 5350 9400 5450
Connection ~ 9400 5450
Wire Wire Line
	9400 5450 9400 5550
$Comp
L power:GND #PWR028
U 1 1 668B340F
P 8800 6350
F 0 "#PWR028" H 8800 6100 50  0001 C CNN
F 1 "GND" H 8650 6350 50  0000 C CNN
F 2 "" H 8800 6350 50  0001 C CNN
F 3 "" H 8800 6350 50  0001 C CNN
	1    8800 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 6200 8800 6350
Wire Wire Line
	8800 5750 8800 5900
Text GLabel 8550 5450 0    50   Output ~ 0
USER_ACTIVATED
Wire Wire Line
	8800 5450 8550 5450
Connection ~ 8800 5450
$Comp
L power:GND #PWR030
U 1 1 668B341E
P 9400 6350
F 0 "#PWR030" H 9400 6100 50  0001 C CNN
F 1 "GND" H 9250 6350 50  0000 C CNN
F 2 "" H 9400 6350 50  0001 C CNN
F 3 "" H 9400 6350 50  0001 C CNN
	1    9400 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5950 9400 6350
Text Notes 900  4800 0    118  ~ 0
SPI
Wire Notes Line
	2550 4500 2550 6450
Wire Notes Line
	2550 6450 600  6450
Wire Notes Line
	600  4500 7850 4500
$Comp
L Connector_Generic:Conn_02x19_Odd_Even J7
U 1 1 668D57F0
P 1800 3100
F 0 "J7" H 1850 4217 50  0000 C CNN
F 1 "Conn_02x19_Odd_Even" H 1850 2050 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 1800 3100 50  0001 C CNN
F 3 "~" H 1800 3100 50  0001 C CNN
	1    1800 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 667F2916
P 3150 2150
F 0 "R1" H 3220 2196 50  0000 L CNN
F 1 "R" H 3220 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3080 2150 50  0001 C CNN
F 3 "~" H 3150 2150 50  0001 C CNN
	1    3150 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 667F2D8C
P 3450 2150
F 0 "R3" H 3520 2196 50  0000 L CNN
F 1 "R" H 3520 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3380 2150 50  0001 C CNN
F 3 "~" H 3450 2150 50  0001 C CNN
	1    3450 2150
	1    0    0    -1  
$EndComp
Text GLabel 3000 2350 0    50   Output ~ 10
SCL
Text GLabel 3000 2450 0    50   Output ~ 10
SDA
Wire Wire Line
	3750 2350 3150 2350
Wire Wire Line
	3750 2450 3450 2450
Wire Wire Line
	3150 2300 3150 2350
Connection ~ 3150 2350
Wire Wire Line
	3150 2350 3000 2350
Wire Wire Line
	3450 2300 3450 2450
Connection ~ 3450 2450
Wire Wire Line
	3450 2450 3000 2450
$Comp
L power:+3.3V #PWR03
U 1 1 667F9B60
P 3150 1950
F 0 "#PWR03" H 3150 1800 50  0001 C CNN
F 1 "+3.3V" H 3000 2050 50  0000 C CNN
F 2 "" H 3150 1950 50  0001 C CNN
F 3 "" H 3150 1950 50  0001 C CNN
	1    3150 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 667FA130
P 3450 1950
F 0 "#PWR05" H 3450 1800 50  0001 C CNN
F 1 "+3.3V" H 3600 2050 50  0000 C CNN
F 2 "" H 3450 1950 50  0001 C CNN
F 3 "" H 3450 1950 50  0001 C CNN
	1    3450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1950 3450 2000
Wire Wire Line
	3150 1950 3150 2000
Text Label 3600 2350 0    20   ~ 0
I2C
Text Label 3600 2450 0    20   ~ 0
I2C
$Comp
L Connector_Generic:Conn_02x19_Odd_Even J10
U 1 1 668C0165
P 3950 3150
F 0 "J10" H 4000 4267 50  0000 C CNN
F 1 "Conn_02x19_Odd_Even" H 3950 2100 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 3950 3150 50  0001 C CNN
F 3 "~" H 3950 3150 50  0001 C CNN
	1    3950 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J8
U 1 1 667D6500
P 10250 2650
F 0 "J8" H 10300 2750 50  0000 L CNN
F 1 "I2C" H 10200 2400 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 10250 2650 50  0001 C CNN
F 3 "~" H 10250 2650 50  0001 C CNN
	1    10250 2650
	1    0    0    -1  
$EndComp
Text GLabel 1400 2300 0    50   Output ~ 10
SPI3_MOSI
Text GLabel 2200 2200 2    50   Output ~ 10
SPI3_MISO
Text GLabel 1400 2200 0    50   Output ~ 10
SPI3_SCK
$Comp
L power:+BATT #PWR0101
U 1 1 668ED70C
P 1050 3800
F 0 "#PWR0101" H 1050 3650 50  0001 C CNN
F 1 "+BATT" H 1065 3973 50  0000 C CNN
F 2 "Battery:BatteryHolder_Keystone_106_1x20mm" H 1050 3800 50  0001 C CNN
F 3 "" H 1050 3800 50  0001 C CNN
	1    1050 3800
	1    0    0    -1  
$EndComp
Text Notes 7950 4200 0    79   ~ 0
POWER SUPPLY
$Comp
L Connector:Conn_01x02_Female J16
U 1 1 667ACA61
P 8700 4350
F 0 "J16" H 8750 4450 50  0000 L CNN
F 1 "3V3" H 8650 4100 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 8700 4350 50  0001 C CNN
F 3 "~" H 8700 4350 50  0001 C CNN
	1    8700 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 667ADF1B
P 8300 4300
F 0 "#PWR?" H 8300 4150 50  0001 C CNN
F 1 "+3.3V" H 8100 4300 50  0000 C CNN
F 2 "" H 8300 4300 50  0001 C CNN
F 3 "" H 8300 4300 50  0001 C CNN
	1    8300 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 667AE314
P 8300 4500
F 0 "#PWR?" H 8300 4250 50  0001 C CNN
F 1 "GND" H 8150 4500 50  0000 C CNN
F 2 "" H 8300 4500 50  0001 C CNN
F 3 "" H 8300 4500 50  0001 C CNN
	1    8300 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4350 8300 4350
Wire Wire Line
	8300 4350 8300 4300
Wire Wire Line
	8500 4450 8300 4450
Wire Wire Line
	8300 4450 8300 4500
$Comp
L Switch:SW_Push SW1
U 1 1 667C875C
P 4200 5750
F 0 "SW1" V 4246 5702 50  0000 R CNN
F 1 "SW_Push" V 4155 5702 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 4200 5950 50  0001 C CNN
F 3 "~" H 4200 5950 50  0001 C CNN
	1    4200 5750
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 667C9119
P 6100 5750
F 0 "SW2" V 6146 5702 50  0000 R CNN
F 1 "SW_Push" V 6055 5702 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6100 5950 50  0001 C CNN
F 3 "~" H 6100 5950 50  0001 C CNN
	1    6100 5750
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 667C965E
P 7600 5750
F 0 "SW3" V 7646 5702 50  0000 R CNN
F 1 "SW_Push" V 7555 5702 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 7600 5950 50  0001 C CNN
F 3 "~" H 7600 5950 50  0001 C CNN
	1    7600 5750
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 667C9C4F
P 9400 5750
F 0 "SW4" V 9446 5702 50  0000 R CNN
F 1 "SW_Push" V 9355 5702 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 9400 5950 50  0001 C CNN
F 3 "~" H 9400 5950 50  0001 C CNN
	1    9400 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 2200 2100 2200
Wire Wire Line
	1600 2200 1400 2200
Wire Wire Line
	1600 2300 1400 2300
$Comp
L power:+3.3V #PWR?
U 1 1 667D8266
P 2400 2850
F 0 "#PWR?" H 2400 2700 50  0001 C CNN
F 1 "+3.3V" H 2250 2950 50  0000 C CNN
F 2 "" H 2400 2850 50  0001 C CNN
F 3 "" H 2400 2850 50  0001 C CNN
	1    2400 2850
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 667E0DE7
P 2500 2900
F 0 "#FLG?" H 2500 2975 50  0001 C CNN
F 1 "PWR_FLAG" H 2750 3050 50  0000 C CNN
F 2 "" H 2500 2900 50  0001 C CNN
F 3 "~" H 2500 2900 50  0001 C CNN
	1    2500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2850 2400 2900
Wire Wire Line
	2100 2900 2500 2900
$Comp
L power:PWR_FLAG #FLG?
U 1 1 667E9DBF
P 2550 3200
F 0 "#FLG?" H 2550 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 3350 50  0000 C CNN
F 2 "" H 2550 3200 50  0001 C CNN
F 3 "~" H 2550 3200 50  0001 C CNN
	1    2550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3250 2450 3200
Wire Wire Line
	2100 3200 2550 3200
$Comp
L power:PWR_FLAG #FLG?
U 1 1 667F2BCD
P 9950 4700
F 0 "#FLG?" H 9950 4775 50  0001 C CNN
F 1 "PWR_FLAG" H 9700 4800 50  0000 C CNN
F 2 "" H 9950 4700 50  0001 C CNN
F 3 "~" H 9950 4700 50  0001 C CNN
	1    9950 4700
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 667F3A1F
P 9950 4800
F 0 "#FLG?" H 9950 4875 50  0001 C CNN
F 1 "PWR_FLAG" H 10200 4850 50  0000 C CNN
F 2 "" H 9950 4800 50  0001 C CNN
F 3 "~" H 9950 4800 50  0001 C CNN
	1    9950 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	10100 4700 9950 4700
Connection ~ 10100 4700
Wire Wire Line
	10100 4800 9950 4800
Connection ~ 10100 4800
$Comp
L power:PWR_FLAG #FLG?
U 1 1 667FBF36
P 10200 3550
F 0 "#FLG?" H 10200 3625 50  0001 C CNN
F 1 "PWR_FLAG" H 10450 3650 50  0000 C CNN
F 2 "" H 10200 3550 50  0001 C CNN
F 3 "~" H 10200 3550 50  0001 C CNN
	1    10200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 3550 10200 3650
Connection ~ 10200 3650
Wire Wire Line
	10200 3650 9900 3650
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6680057F
P 800 3800
F 0 "#FLG?" H 800 3875 50  0001 C CNN
F 1 "PWR_FLAG" H 800 3700 50  0000 C CNN
F 2 "" H 800 3800 50  0001 C CNN
F 3 "~" H 800 3800 50  0001 C CNN
	1    800  3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3800 1600 3800
Wire Wire Line
	800  3800 1050 3800
Connection ~ 1050 3800
Text GLabel 2300 4000 2    50   Input ~ 10
COUNTER_UP
Text GLabel 2300 3900 2    50   Input ~ 10
COUNTER_DOWN
Text GLabel 2300 3800 2    50   Input ~ 10
OPTION
Text GLabel 1500 4000 0    50   Input ~ 10
USER_ACTIVATED
Wire Wire Line
	1600 4000 1500 4000
Wire Wire Line
	2300 3900 2100 3900
Wire Wire Line
	2300 4000 2100 4000
Wire Wire Line
	2300 3800 2100 3800
Text GLabel 3200 3400 0    50   Input ~ 0
AENABLE
Text GLabel 3150 3500 0    50   Input ~ 0
APHASE
Text GLabel 3150 3650 0    50   Input ~ 0
MODE
$EndSCHEMATC
