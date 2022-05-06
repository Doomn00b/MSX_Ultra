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
L 74xx:74LS688 U2
U 1 1 5D24214F
P 3950 3500
F 0 "U2" H 4494 3546 50  0000 L CNN
F 1 "74LS688" H 4494 3455 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 3950 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS688" H 3950 3500 50  0001 C CNN
	1    3950 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J2
U 1 1 5D243AE7
P 5850 3400
F 0 "J2" H 5900 3917 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 5900 3826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 5850 3400 50  0001 C CNN
F 3 "~" H 5850 3400 50  0001 C CNN
	1    5850 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 5D24690A
P 2250 5850
F 0 "#PWR02" H 2250 5700 50  0001 C CNN
F 1 "VCC" V 2268 5977 50  0000 L CNN
F 2 "" H 2250 5850 50  0001 C CNN
F 3 "" H 2250 5850 50  0001 C CNN
	1    2250 5850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D2482CD
P 2250 5450
F 0 "#PWR01" H 2250 5200 50  0001 C CNN
F 1 "GND" V 2255 5322 50  0000 R CNN
F 2 "" H 2250 5450 50  0001 C CNN
F 3 "" H 2250 5450 50  0001 C CNN
	1    2250 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D24A39B
P 3950 4700
F 0 "#PWR08" H 3950 4450 50  0001 C CNN
F 1 "GND" H 3955 4527 50  0000 C CNN
F 2 "" H 3950 4700 50  0001 C CNN
F 3 "" H 3950 4700 50  0001 C CNN
	1    3950 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5D24A8BC
P 3950 2300
F 0 "#PWR07" H 3950 2150 50  0001 C CNN
F 1 "VCC" H 3967 2473 50  0000 C CNN
F 2 "" H 3950 2300 50  0001 C CNN
F 3 "" H 3950 2300 50  0001 C CNN
	1    3950 2300
	1    0    0    -1  
$EndComp
Text GLabel 3450 3200 0    50   Input ~ 0
IORQ_
Text GLabel 2250 4050 2    50   Input ~ 0
IORQ_
Text GLabel 6150 3400 2    50   Input ~ 0
A0
Text GLabel 6150 3200 2    50   Input ~ 0
RD_
Text GLabel 6150 3100 2    50   Input ~ 0
WR_
Text GLabel 6150 3300 2    50   Input ~ 0
CS_
$Comp
L power:GND #PWR014
U 1 1 5D2519F2
P 6150 3800
F 0 "#PWR014" H 6150 3550 50  0001 C CNN
F 1 "GND" V 6155 3672 50  0000 R CNN
F 2 "" H 6150 3800 50  0001 C CNN
F 3 "" H 6150 3800 50  0001 C CNN
	1    6150 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR013
U 1 1 5D252457
P 6150 3600
F 0 "#PWR013" H 6150 3450 50  0001 C CNN
F 1 "VCC" V 6167 3728 50  0000 L CNN
F 2 "" H 6150 3600 50  0001 C CNN
F 3 "" H 6150 3600 50  0001 C CNN
	1    6150 3600
	0    1    1    0   
$EndComp
Text GLabel 4450 2600 2    50   Input ~ 0
CS_
Text GLabel 1050 2250 0    50   Input ~ 0
A0
Text GLabel 2250 4650 2    50   Input ~ 0
RD_
Text GLabel 2250 4450 2    50   Input ~ 0
WR_
Text GLabel 3450 2600 0    50   Input ~ 0
A1
Text GLabel 3450 2700 0    50   Input ~ 0
A2
Text GLabel 3450 2800 0    50   Input ~ 0
A3
Text GLabel 3450 2900 0    50   Input ~ 0
A5
Text GLabel 3450 3000 0    50   Input ~ 0
A6
Text GLabel 3450 3100 0    50   Input ~ 0
A7
Text GLabel 3450 3300 0    50   Input ~ 0
A4
$Comp
L power:VCC #PWR05
U 1 1 5D259292
P 3450 4200
F 0 "#PWR05" H 3450 4050 50  0001 C CNN
F 1 "VCC" V 3468 4327 50  0000 L CNN
F 2 "" H 3450 4200 50  0001 C CNN
F 3 "" H 3450 4200 50  0001 C CNN
	1    3450 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 3800 3450 3700
Wire Wire Line
	3450 3700 3450 3600
Connection ~ 3450 3700
Wire Wire Line
	3450 3600 3450 3500
Connection ~ 3450 3600
$Comp
L power:GND #PWR04
U 1 1 5D25B3BF
P 3450 3500
F 0 "#PWR04" H 3450 3250 50  0001 C CNN
F 1 "GND" V 3455 3372 50  0000 R CNN
F 2 "" H 3450 3500 50  0001 C CNN
F 3 "" H 3450 3500 50  0001 C CNN
	1    3450 3500
	0    1    1    0   
$EndComp
Connection ~ 3450 3500
Text GLabel 1050 2450 0    50   Input ~ 0
A1
Text GLabel 1050 2650 0    50   Input ~ 0
A2
Text GLabel 1050 3050 0    50   Input ~ 0
A4
Text GLabel 1050 2850 0    50   Input ~ 0
A3
Text GLabel 1050 3250 0    50   Input ~ 0
A5
Text GLabel 1050 3650 0    50   Input ~ 0
A7
Text GLabel 1050 3450 0    50   Input ~ 0
A6
Text GLabel 5650 3800 0    50   Input ~ 0
D0
Text GLabel 5650 3700 0    50   Input ~ 0
D1
Text GLabel 5650 3600 0    50   Input ~ 0
D2
Text GLabel 5650 3500 0    50   Input ~ 0
D3
Text GLabel 5650 3400 0    50   Input ~ 0
D4
Text GLabel 5650 3300 0    50   Input ~ 0
D5
Text GLabel 5650 3200 0    50   Input ~ 0
D6
Text GLabel 5650 3100 0    50   Input ~ 0
D7
Text GLabel 1050 5450 0    50   Input ~ 0
D0
Text GLabel 1050 5850 0    50   Input ~ 0
D2
Text GLabel 1050 6250 0    50   Input ~ 0
D4
Text GLabel 1050 6650 0    50   Input ~ 0
D6
Text GLabel 1050 5650 0    50   Input ~ 0
D1
Text GLabel 1050 6050 0    50   Input ~ 0
D3
Text GLabel 1050 6450 0    50   Input ~ 0
D5
Text GLabel 1050 6850 0    50   Input ~ 0
D7
Wire Wire Line
	6150 3700 6150 3800
Connection ~ 6150 3800
NoConn ~ 6150 3500
Wire Wire Line
	3450 3900 3450 3800
Connection ~ 3450 3800
Wire Wire Line
	3450 4000 3450 3900
Connection ~ 3450 3900
Wire Wire Line
	3450 4100 3450 4000
Connection ~ 3450 4000
$Comp
L power:GND #PWR06
U 1 1 5D4D6C52
P 3450 4400
F 0 "#PWR06" H 3450 4150 50  0001 C CNN
F 1 "GND" V 3455 4272 50  0000 R CNN
F 2 "" H 3450 4400 50  0001 C CNN
F 3 "" H 3450 4400 50  0001 C CNN
	1    3450 4400
	0    1    1    0   
$EndComp
Text GLabel 2250 3850 2    50   Input ~ 0
BUSDIR_
Text GLabel 4250 1700 2    50   Input ~ 0
BUSDIR_
Text GLabel 3650 1600 0    50   Input ~ 0
CS_
Text GLabel 3650 1800 0    50   Input ~ 0
RD_
$Comp
L power:VCC #PWR09
U 1 1 5D5138BF
P 5250 1050
F 0 "#PWR09" H 5250 900 50  0001 C CNN
F 1 "VCC" H 5267 1223 50  0000 C CNN
F 2 "" H 5250 1050 50  0001 C CNN
F 3 "" H 5250 1050 50  0001 C CNN
	1    5250 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5D514275
P 5250 2150
F 0 "#PWR010" H 5250 1900 50  0001 C CNN
F 1 "GND" H 5255 1977 50  0000 C CNN
F 2 "" H 5250 2150 50  0001 C CNN
F 3 "" H 5250 2150 50  0001 C CNN
	1    5250 2150
	1    0    0    -1  
$EndComp
Text GLabel 10100 1950 2    50   Input ~ 0
D0
Text GLabel 10100 2050 2    50   Input ~ 0
D1
Text GLabel 10100 2150 2    50   Input ~ 0
D2
Text GLabel 10100 2250 2    50   Input ~ 0
D3
Text GLabel 10100 2350 2    50   Input ~ 0
D4
Text GLabel 10100 2450 2    50   Input ~ 0
D5
Text GLabel 10100 2550 2    50   Input ~ 0
D6
Text GLabel 10100 2650 2    50   Input ~ 0
D7
Text GLabel 8900 1950 0    50   Input ~ 0
A0
Text GLabel 8900 2050 0    50   Input ~ 0
A1
Text GLabel 8900 2150 0    50   Input ~ 0
A2
Text GLabel 8900 2250 0    50   Input ~ 0
A3
Text GLabel 8900 2350 0    50   Input ~ 0
A4
Text GLabel 8900 2450 0    50   Input ~ 0
A5
Text GLabel 8900 2550 0    50   Input ~ 0
A6
Text GLabel 8900 2650 0    50   Input ~ 0
A7
Text GLabel 8900 2750 0    50   Input ~ 0
A8
Text GLabel 8900 2850 0    50   Input ~ 0
A9
Text GLabel 8900 2950 0    50   Input ~ 0
A10
Text GLabel 8900 3050 0    50   Input ~ 0
A11
Text GLabel 8900 3150 0    50   Input ~ 0
A12
$Comp
L 74xx_IEEE:74LS670 U3
U 1 1 5DB8E9EF
P 7750 3100
F 0 "U3" H 7750 3866 50  0000 C CNN
F 1 "74LS670" H 7750 3775 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 7750 3100 50  0001 C CNN
F 3 "" H 7750 3100 50  0001 C CNN
	1    7750 3100
	1    0    0    -1  
$EndComp
$Comp
L Memory_Flash:SST39SF040 U5
U 1 1 5DB86845
P 9500 3150
F 0 "U5" H 9500 4631 50  0000 L CNN
F 1 "SST39SF040" H 9500 4540 50  0000 L CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket" H 9500 3450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 9500 3450 50  0001 C CNN
	1    9500 3150
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:74LS670 U4
U 1 1 5DB9E92E
P 7750 4600
F 0 "U4" H 7750 5366 50  0000 C CNN
F 1 "74LS670" H 7750 5275 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 7750 4600 50  0001 C CNN
F 3 "" H 7750 4600 50  0001 C CNN
	1    7750 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3250 8900 3250
Wire Wire Line
	8300 3350 8900 3350
Wire Wire Line
	8300 3450 8900 3450
Wire Wire Line
	8300 3550 8900 3550
Wire Wire Line
	8300 3650 8900 3650
Wire Wire Line
	8400 3750 8900 3750
$Comp
L power:GND #PWR018
U 1 1 5DBA29A0
P 9500 4500
F 0 "#PWR018" H 9500 4250 50  0001 C CNN
F 1 "GND" H 9505 4327 50  0000 C CNN
F 2 "" H 9500 4500 50  0001 C CNN
F 3 "" H 9500 4500 50  0001 C CNN
	1    9500 4500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR017
U 1 1 5DBA455B
P 9500 1450
F 0 "#PWR017" H 9500 1300 50  0001 C CNN
F 1 "VCC" H 9517 1623 50  0000 C CNN
F 2 "" H 9500 1450 50  0001 C CNN
F 3 "" H 9500 1450 50  0001 C CNN
	1    9500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1850 9500 1450
Text GLabel 2250 2850 2    50   Input ~ 0
SLTSL_
Text GLabel 6200 1750 0    50   Input ~ 0
WR_
Text GLabel 6200 1950 0    50   Input ~ 0
SLTSL_
Wire Wire Line
	6800 1850 6900 1850
Wire Wire Line
	6900 1850 6900 3000
Wire Wire Line
	6900 3000 7200 3000
Text GLabel 7200 2600 0    50   Input ~ 0
A15
Text GLabel 7200 4100 0    50   Input ~ 0
A15
Text GLabel 7200 2700 0    50   Input ~ 0
A13
Text GLabel 7200 4200 0    50   Input ~ 0
A13
Text GLabel 7200 2800 0    50   Input ~ 0
A15
Text GLabel 7200 2900 0    50   Input ~ 0
A13
Text GLabel 7200 4300 0    50   Input ~ 0
A15
Text GLabel 7200 4400 0    50   Input ~ 0
A13
Text GLabel 7200 3250 0    50   Input ~ 0
D0
Text GLabel 7200 3350 0    50   Input ~ 0
D1
Text GLabel 7200 3450 0    50   Input ~ 0
D2
Text GLabel 7200 3550 0    50   Input ~ 0
D3
Text GLabel 7200 4750 0    50   Input ~ 0
D4
Text GLabel 7200 4850 0    50   Input ~ 0
D5
Text GLabel 7200 4950 0    50   Input ~ 0
D6
Text GLabel 7200 5050 0    50   Input ~ 0
D7
$Comp
L power:GND #PWR015
U 1 1 5DBB7136
P 7200 3100
F 0 "#PWR015" H 7200 2850 50  0001 C CNN
F 1 "GND" H 7205 2927 50  0000 C CNN
F 2 "" H 7200 3100 50  0001 C CNN
F 3 "" H 7200 3100 50  0001 C CNN
	1    7200 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5DBB82A9
P 7200 4600
F 0 "#PWR016" H 7200 4350 50  0001 C CNN
F 1 "GND" H 7205 4427 50  0000 C CNN
F 2 "" H 7200 4600 50  0001 C CNN
F 3 "" H 7200 4600 50  0001 C CNN
	1    7200 4600
	0    1    1    0   
$EndComp
Text GLabel 8900 4250 0    50   Input ~ 0
SLTSL_
Text GLabel 8900 4150 0    50   Input ~ 0
RD_
Text GLabel 8900 3950 0    50   Input ~ 0
WR_
Text GLabel 1050 5250 0    50   Input ~ 0
A15
Text GLabel 1050 4850 0    50   Input ~ 0
A13
$Comp
L Device:C C1
U 1 1 5D24B659
P 4250 5650
F 0 "C1" H 4365 5696 50  0000 L CNN
F 1 "0.1 uF" H 4365 5605 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D6.3mm_H5.0mm_P2.50mm" H 4288 5500 50  0001 C CNN
F 3 "~" H 4250 5650 50  0001 C CNN
	1    4250 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E7F708E
P 4750 5650
F 0 "C2" H 4865 5696 50  0000 L CNN
F 1 "0.1 uF" H 4865 5605 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D6.3mm_H5.0mm_P2.50mm" H 4788 5500 50  0001 C CNN
F 3 "~" H 4750 5650 50  0001 C CNN
	1    4750 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E7FAB1D
P 5250 5650
F 0 "C3" H 5365 5696 50  0000 L CNN
F 1 "0.1 uF" H 5365 5605 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D6.3mm_H5.0mm_P2.50mm" H 5288 5500 50  0001 C CNN
F 3 "~" H 5250 5650 50  0001 C CNN
	1    5250 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E7FE759
P 5750 5650
F 0 "C4" H 5865 5696 50  0000 L CNN
F 1 "0.1 uF" H 5865 5605 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D6.3mm_H5.0mm_P2.50mm" H 5788 5500 50  0001 C CNN
F 3 "~" H 5750 5650 50  0001 C CNN
	1    5750 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E80279F
P 6250 5650
F 0 "C5" H 6365 5696 50  0000 L CNN
F 1 "0.1 uF" H 6365 5605 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D6.3mm_H5.0mm_P2.50mm" H 6288 5500 50  0001 C CNN
F 3 "~" H 6250 5650 50  0001 C CNN
	1    6250 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U1
U 4 1 5DBB94CC
P 6500 1850
F 0 "U1" H 6500 2175 50  0000 C CNN
F 1 "74LS32" H 6500 2084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6500 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6500 1850 50  0001 C CNN
	4    6500 1850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U1
U 2 1 5D4EE21D
P 3950 1700
F 0 "U1" H 3950 2025 50  0000 C CNN
F 1 "74LS32" H 3950 1934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3950 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3950 1700 50  0001 C CNN
	2    3950 1700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U1
U 5 1 5D504037
P 5250 1650
F 0 "U1" H 5250 1975 50  0000 C CNN
F 1 "74LS32" H 5250 1884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5250 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5250 1650 50  0001 C CNN
	5    5250 1650
	1    0    0    -1  
$EndComp
NoConn ~ 8300 4950
NoConn ~ 8300 5050
Text GLabel 1050 3850 0    50   Input ~ 0
A8
Text GLabel 1050 4050 0    50   Input ~ 0
A9
Text GLabel 1050 4250 0    50   Input ~ 0
A10
Text GLabel 1050 4450 0    50   Input ~ 0
A11
Text GLabel 1050 4650 0    50   Input ~ 0
A12
$Comp
L power:GND #PWR012
U 1 1 5E7FAB13
P 5250 6050
F 0 "#PWR012" H 5250 5800 50  0001 C CNN
F 1 "GND" H 5255 5877 50  0000 C CNN
F 2 "" H 5250 6050 50  0001 C CNN
F 3 "" H 5250 6050 50  0001 C CNN
	1    5250 6050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5E7FAB09
P 5250 5250
F 0 "#PWR011" H 5250 5100 50  0001 C CNN
F 1 "VCC" H 5267 5423 50  0000 C CNN
F 2 "" H 5250 5250 50  0001 C CNN
F 3 "" H 5250 5250 50  0001 C CNN
	1    5250 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5800 4250 5900
Wire Wire Line
	4250 5900 4750 5900
Wire Wire Line
	5250 5900 5250 6050
Wire Wire Line
	4750 5800 4750 5900
Connection ~ 4750 5900
Wire Wire Line
	4750 5900 5250 5900
Wire Wire Line
	5250 5800 5250 5900
Connection ~ 5250 5900
Wire Wire Line
	5750 5800 5750 5900
Wire Wire Line
	5750 5900 5250 5900
Wire Wire Line
	6250 5800 6250 5900
Wire Wire Line
	6250 5900 5750 5900
Connection ~ 5750 5900
Wire Wire Line
	4250 5500 4250 5350
Wire Wire Line
	4250 5350 4750 5350
Wire Wire Line
	5250 5350 5250 5250
Wire Wire Line
	5250 5350 5250 5500
Connection ~ 5250 5350
Wire Wire Line
	4750 5500 4750 5350
Connection ~ 4750 5350
Wire Wire Line
	4750 5350 5250 5350
Wire Wire Line
	5750 5500 5750 5350
Wire Wire Line
	5750 5350 5250 5350
Wire Wire Line
	5750 5350 6250 5350
Wire Wire Line
	6250 5350 6250 5500
Connection ~ 5750 5350
Wire Wire Line
	5250 1050 5250 1150
Wire Wire Line
	9500 4500 9500 4350
$Comp
L 74xx:74LS32 U1
U 3 1 5E85073B
P 2800 1600
F 0 "U1" H 2800 1925 50  0000 C CNN
F 1 "74LS32" H 2800 1834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2800 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2800 1600 50  0001 C CNN
	3    2800 1600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U1
U 1 1 5E852E80
P 2800 1100
F 0 "U1" H 2800 1425 50  0000 C CNN
F 1 "74LS32" H 2800 1334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2800 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2800 1100 50  0001 C CNN
	1    2800 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E85887C
P 2350 1800
F 0 "#PWR03" H 2350 1550 50  0001 C CNN
F 1 "GND" H 2355 1627 50  0000 C CNN
F 2 "" H 2350 1800 50  0001 C CNN
F 3 "" H 2350 1800 50  0001 C CNN
	1    2350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1800 2350 1700
Wire Wire Line
	2350 1700 2500 1700
Wire Wire Line
	2350 1700 2350 1500
Wire Wire Line
	2350 1500 2500 1500
Connection ~ 2350 1700
Wire Wire Line
	2350 1500 2350 1200
Wire Wire Line
	2350 1200 2500 1200
Connection ~ 2350 1500
Wire Wire Line
	2350 1200 2350 1000
Wire Wire Line
	2350 1000 2500 1000
Connection ~ 2350 1200
NoConn ~ 3100 1100
NoConn ~ 3100 1600
$Comp
L power:VCC #PWR0101
U 1 1 5E8053CA
P 7900 2250
F 0 "#PWR0101" H 7900 2100 50  0001 C CNN
F 1 "VCC" H 7917 2423 50  0000 C CNN
F 2 "" H 7900 2250 50  0001 C CNN
F 3 "" H 7900 2250 50  0001 C CNN
	1    7900 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E806165
P 7400 2250
F 0 "#PWR0102" H 7400 2000 50  0001 C CNN
F 1 "GND" H 7405 2077 50  0000 C CNN
F 2 "" H 7400 2250 50  0001 C CNN
F 3 "" H 7400 2250 50  0001 C CNN
	1    7400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2100 7900 2250
Connection ~ 7900 2250
Wire Wire Line
	7900 2250 7900 2550
Wire Wire Line
	7400 2250 7400 2200
Wire Wire Line
	7400 2200 7750 2200
Wire Wire Line
	7750 2200 7750 2550
$Comp
L power:GND #PWR0104
U 1 1 5E80EF01
P 7400 3800
F 0 "#PWR0104" H 7400 3550 50  0001 C CNN
F 1 "GND" H 7405 3627 50  0000 C CNN
F 2 "" H 7400 3800 50  0001 C CNN
F 3 "" H 7400 3800 50  0001 C CNN
	1    7400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3800 7750 3800
Wire Wire Line
	7750 3800 7750 4050
Wire Wire Line
	7900 3800 7900 3900
Connection ~ 7900 3900
Wire Wire Line
	7900 3900 7900 4050
$Comp
L power:VCC #PWR0103
U 1 1 5E80E600
P 7900 3900
F 0 "#PWR0103" H 7900 3750 50  0001 C CNN
F 1 "VCC" H 7917 4073 50  0000 C CNN
F 2 "" H 7900 3900 50  0001 C CNN
F 3 "" H 7900 3900 50  0001 C CNN
	1    7900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3650 8300 4750
Wire Wire Line
	8300 4850 8400 4850
Wire Wire Line
	8400 4850 8400 3750
$Comp
L msx-con:MSX_CON EDG1
U 1 1 5E82E456
P 1650 4850
F 0 "EDG1" H 1650 4850 45  0001 C CNN
F 1 "MSX_CON" H 1650 4850 45  0001 C CNN
F 2 "msx-con:msx-con-MSXCART" H 1680 5000 20  0001 C CNN
F 3 "" H 1650 4850 50  0001 C CNN
	1    1650 4850
	0    -1   -1   0   
$EndComp
NoConn ~ 2250 2250
NoConn ~ 2250 2450
NoConn ~ 2250 2650
NoConn ~ 2250 3050
NoConn ~ 2250 3250
NoConn ~ 2250 3450
NoConn ~ 2250 3650
NoConn ~ 2250 4250
NoConn ~ 2250 4850
NoConn ~ 2250 5050
NoConn ~ 2250 6050
NoConn ~ 2250 6250
NoConn ~ 2250 6850
NoConn ~ 2250 7050
NoConn ~ 1050 7050
NoConn ~ 1050 5050
Wire Wire Line
	2250 6650 2250 6450
Wire Wire Line
	2250 5850 2250 5650
Wire Wire Line
	2250 5250 2250 5450
Connection ~ 2250 5850
Connection ~ 2250 5450
Wire Wire Line
	7200 4500 6900 4500
Wire Wire Line
	6900 4500 6900 3000
Connection ~ 6900 3000
Text Notes 2850 5000 0    50   ~ 0
now pulls CS down when address 0x10 is selected
Text Notes 2850 5100 0    50   ~ 0
exchange A5 and A4 to select 0x20 instead
Text Notes 2850 5200 0    50   ~ 0
to make it compatible with the RookieDrive
$EndSCHEMATC
