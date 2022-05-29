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
L power:VCC #PWR02
U 1 1 5D24690A
P 2300 4750
F 0 "#PWR02" H 2300 4600 50  0001 C CNN
F 1 "VCC" V 2318 4877 50  0000 L CNN
F 2 "" H 2300 4750 50  0001 C CNN
F 3 "" H 2300 4750 50  0001 C CNN
	1    2300 4750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D2482CD
P 2300 4350
F 0 "#PWR01" H 2300 4100 50  0001 C CNN
F 1 "GND" V 2305 4222 50  0000 R CNN
F 2 "" H 2300 4350 50  0001 C CNN
F 3 "" H 2300 4350 50  0001 C CNN
	1    2300 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 5E7F708E
P 5200 5600
F 0 "C2" H 5315 5646 50  0000 L CNN
F 1 "0.1 uF" H 5315 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5238 5450 50  0001 C CNN
F 3 "~" H 5200 5600 50  0001 C CNN
	1    5200 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E7FAB1D
P 5700 5600
F 0 "C3" H 5815 5646 50  0000 L CNN
F 1 "0.1 uF" H 5815 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5738 5450 50  0001 C CNN
F 3 "~" H 5700 5600 50  0001 C CNN
	1    5700 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E7FE759
P 6200 5600
F 0 "C4" H 6315 5646 50  0000 L CNN
F 1 "0.1 uF" H 6315 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6238 5450 50  0001 C CNN
F 3 "~" H 6200 5600 50  0001 C CNN
	1    6200 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5E7FAB13
P 5700 6000
F 0 "#PWR012" H 5700 5750 50  0001 C CNN
F 1 "GND" H 5705 5827 50  0000 C CNN
F 2 "" H 5700 6000 50  0001 C CNN
F 3 "" H 5700 6000 50  0001 C CNN
	1    5700 6000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5E7FAB09
P 5700 5200
F 0 "#PWR011" H 5700 5050 50  0001 C CNN
F 1 "VCC" H 5717 5373 50  0000 C CNN
F 2 "" H 5700 5200 50  0001 C CNN
F 3 "" H 5700 5200 50  0001 C CNN
	1    5700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5850 5700 6000
Wire Wire Line
	5200 5750 5200 5850
Wire Wire Line
	5200 5850 5700 5850
Wire Wire Line
	5700 5750 5700 5850
Connection ~ 5700 5850
Wire Wire Line
	6200 5750 6200 5850
Wire Wire Line
	6200 5850 5700 5850
Wire Wire Line
	5700 5300 5700 5200
Wire Wire Line
	5700 5300 5700 5450
Connection ~ 5700 5300
Wire Wire Line
	5200 5450 5200 5300
Wire Wire Line
	5200 5300 5700 5300
Wire Wire Line
	6200 5450 6200 5300
Wire Wire Line
	6200 5300 5700 5300
$Comp
L msx-con:MSX_CON EDG1
U 1 1 5E82E456
P 1700 3750
F 0 "EDG1" H 1700 3750 45  0001 C CNN
F 1 "MSX_CON" H 1700 3750 45  0001 C CNN
F 2 "msx-usb-kicad-cpld:msx-con-MSXCART" H 1730 3900 20  0001 C CNN
F 3 "" H 1700 3750 50  0001 C CNN
	1    1700 3750
	0    -1   -1   0   
$EndComp
NoConn ~ 2300 1150
NoConn ~ 2300 1350
NoConn ~ 2300 1550
NoConn ~ 2300 1950
NoConn ~ 2300 2150
NoConn ~ 2300 2350
NoConn ~ 2300 2550
NoConn ~ 2300 3150
NoConn ~ 2300 3950
NoConn ~ 2300 4950
NoConn ~ 2300 5150
NoConn ~ 2300 5750
NoConn ~ 2300 5950
NoConn ~ 1100 5950
NoConn ~ 1100 3950
Wire Wire Line
	2300 5550 2300 5350
Wire Wire Line
	2300 4750 2300 4550
Wire Wire Line
	2300 4150 2300 4350
Connection ~ 2300 4750
Connection ~ 2300 4350
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J2
U 1 1 5D243AE7
P 9000 1750
F 0 "J2" H 9050 2267 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 9050 2176 50  0000 C CNN
F 2 "msx-usb-kicad-cpld:PinHeader_2x08_P2.54mm_Vertical" H 9000 1750 50  0001 C CNN
F 3 "~" H 9000 1750 50  0001 C CNN
	1    9000 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5D2519F2
P 9300 2150
F 0 "#PWR014" H 9300 1900 50  0001 C CNN
F 1 "GND" V 9305 2022 50  0000 R CNN
F 2 "" H 9300 2150 50  0001 C CNN
F 3 "" H 9300 2150 50  0001 C CNN
	1    9300 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 2050 9300 2150
Connection ~ 9300 2150
NoConn ~ 9300 1850
$Comp
L EPM7064_(44-PLCC):EPM7032_7064 U1
U 1 1 5E86BBA0
P 5600 2950
F 0 "U1" H 5600 4753 60  0000 C CNN
F 1 "EPM7032_7064" H 5600 4647 60  0000 C CNN
F 2 "msx-usb-kicad-cpld:PLCC44" H 5600 2950 60  0001 C CNN
F 3 "" H 5600 2950 60  0000 C CNN
	1    5600 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E848649
P 1700 7500
F 0 "#PWR0102" H 1700 7250 50  0001 C CNN
F 1 "GND" H 1705 7327 50  0000 C CNN
F 2 "" H 1700 7500 50  0001 C CNN
F 3 "" H 1700 7500 50  0001 C CNN
	1    1700 7500
	1    0    0    -1  
$EndComp
NoConn ~ 2200 6600
NoConn ~ 2200 6700
Wire Wire Line
	5500 4550 5600 4550
Connection ~ 5600 4550
Wire Wire Line
	5600 4550 5700 4550
Connection ~ 5700 4550
Wire Wire Line
	5700 4550 5850 4550
$Comp
L power:GND #PWR0103
U 1 1 5E84AE0F
P 5850 4550
F 0 "#PWR0103" H 5850 4300 50  0001 C CNN
F 1 "GND" H 5855 4377 50  0000 C CNN
F 2 "" H 5850 4550 50  0001 C CNN
F 3 "" H 5850 4550 50  0001 C CNN
	1    5850 4550
	1    0    0    -1  
$EndComp
Connection ~ 5850 4550
Wire Wire Line
	5550 1350 5650 1350
Connection ~ 5650 1350
Wire Wire Line
	5650 1350 5750 1350
Connection ~ 5750 1350
Wire Wire Line
	5750 1350 5850 1350
$Comp
L power:VCC #PWR0104
U 1 1 5E84BF99
P 5850 1100
F 0 "#PWR0104" H 5850 950 50  0001 C CNN
F 1 "VCC" H 5867 1273 50  0000 C CNN
F 2 "" H 5850 1100 50  0001 C CNN
F 3 "" H 5850 1100 50  0001 C CNN
	1    5850 1100
	1    0    0    -1  
$EndComp
Connection ~ 5850 1350
Wire Wire Line
	5850 1100 5850 1350
$Comp
L Device:C C1
U 1 1 5E84DCA7
P 4700 5600
F 0 "C1" H 4815 5646 50  0000 L CNN
F 1 "100 uF" H 4815 5555 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.4" H 4738 5450 50  0001 C CNN
F 3 "~" H 4700 5600 50  0001 C CNN
	1    4700 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5450 4700 5300
Wire Wire Line
	4700 5300 5200 5300
Connection ~ 5200 5300
Wire Wire Line
	5200 5850 4700 5850
Wire Wire Line
	4700 5850 4700 5750
Connection ~ 5200 5850
NoConn ~ 4450 1750
NoConn ~ 4450 1850
$Comp
L power:VCC #PWR0101
U 1 1 5E8479A5
P 1600 6300
F 0 "#PWR0101" H 1600 6150 50  0001 C CNN
F 1 "VCC" H 1617 6473 50  0000 C CNN
F 2 "" H 1600 6300 50  0001 C CNN
F 3 "" H 1600 6300 50  0001 C CNN
	1    1600 6300
	1    0    0    -1  
$EndComp
NoConn ~ 1700 6300
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6201A435
P 2300 4550
F 0 "#FLG0101" H 2300 4625 50  0001 C CNN
F 1 "PWR_FLAG" V 2300 4678 50  0001 L CNN
F 2 "" H 2300 4550 50  0001 C CNN
F 3 "~" H 2300 4550 50  0001 C CNN
	1    2300 4550
	0    1    1    0   
$EndComp
Connection ~ 2300 4550
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6201C15B
P 2300 4350
F 0 "#FLG0102" H 2300 4425 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 4523 50  0001 C CNN
F 2 "" H 2300 4350 50  0001 C CNN
F 3 "~" H 2300 4350 50  0001 C CNN
	1    2300 4350
	-1   0    0    1   
$EndComp
Text Notes 6150 1450 0    50   ~ 0
ATF1502AS-10AU44
Text Label 8600 5300 2    50   ~ 0
WR_
Text Label 8600 5500 2    50   ~ 0
SLTSL_
Text Label 8600 5600 2    50   ~ 0
RD_
Text Label 9550 3300 2    50   ~ 0
D0
Wire Wire Line
	9400 3300 9550 3300
Wire Wire Line
	9400 3400 9550 3400
Wire Wire Line
	9400 3500 9550 3500
Wire Wire Line
	9400 3600 9550 3600
Wire Wire Line
	9400 3700 9550 3700
Wire Wire Line
	9400 3800 9550 3800
Wire Wire Line
	9400 3900 9550 3900
Wire Wire Line
	9400 4000 9550 4000
Text Label 8350 3600 0    50   ~ 0
A3
Text Label 8350 3700 0    50   ~ 0
A4
Text Label 8350 3800 0    50   ~ 0
A5
Text Label 8350 3900 0    50   ~ 0
A6
Text Label 8350 4000 0    50   ~ 0
A7
Text Label 8350 4100 0    50   ~ 0
A8
Text Label 8350 4200 0    50   ~ 0
A9
Text Label 8350 4300 0    50   ~ 0
A10
Text Label 8350 4400 0    50   ~ 0
A11
Text Label 8350 4500 0    50   ~ 0
A12
Text Label 8350 3300 0    50   ~ 0
A0
Text Label 8350 3400 0    50   ~ 0
A1
Text Label 8350 3500 0    50   ~ 0
A2
Wire Wire Line
	8350 3300 8600 3300
Wire Wire Line
	8350 3400 8600 3400
Wire Wire Line
	8350 3500 8600 3500
Wire Wire Line
	8350 3600 8600 3600
Wire Wire Line
	8350 3700 8600 3700
Wire Wire Line
	8350 3800 8600 3800
Wire Wire Line
	8350 3900 8600 3900
Wire Wire Line
	8350 4000 8600 4000
Wire Wire Line
	8350 4100 8600 4100
Wire Wire Line
	8350 4200 8600 4200
Wire Wire Line
	8350 4300 8600 4300
Wire Wire Line
	8350 4400 8600 4400
Wire Wire Line
	8350 4500 8600 4500
Wire Wire Line
	8350 4600 8600 4600
Wire Wire Line
	8350 4700 8600 4700
Wire Wire Line
	8350 4800 8600 4800
Wire Wire Line
	8350 4900 8600 4900
Wire Wire Line
	8350 5000 8600 5000
Wire Wire Line
	8350 5100 8600 5100
$Comp
L power:GND #PWR018
U 1 1 5DBA29A0
P 10300 3800
F 0 "#PWR018" H 10300 3550 50  0001 C CNN
F 1 "GND" H 10305 3627 50  0000 C CNN
F 2 "" H 10300 3800 50  0001 C CNN
F 3 "" H 10300 3800 50  0001 C CNN
	1    10300 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR017
U 1 1 5DBA455B
P 10300 3200
F 0 "#PWR017" H 10300 3050 50  0001 C CNN
F 1 "VCC" H 10317 3373 50  0000 C CNN
F 2 "" H 10300 3200 50  0001 C CNN
F 3 "" H 10300 3200 50  0001 C CNN
	1    10300 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3300 10300 3200
Wire Wire Line
	10300 3800 10300 3700
$Comp
L power:VCC #PWR013
U 1 1 5D252457
P 9700 1350
F 0 "#PWR013" H 9700 1200 50  0001 C CNN
F 1 "VCC" H 9650 1500 50  0000 L CNN
F 2 "" H 9700 1350 50  0001 C CNN
F 3 "" H 9700 1350 50  0001 C CNN
	1    9700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1350 9700 1950
Wire Wire Line
	9700 1950 9300 1950
Text Label 9550 3400 2    50   ~ 0
D1
Text Label 9550 3500 2    50   ~ 0
D2
Text Label 9550 3600 2    50   ~ 0
D3
Text Label 9550 3700 2    50   ~ 0
D4
Text Label 9550 3800 2    50   ~ 0
D5
Text Label 9550 3900 2    50   ~ 0
D6
Text Label 9550 4000 2    50   ~ 0
D7
Text Label 8650 2150 0    50   ~ 0
D0
Text Label 8650 2050 0    50   ~ 0
D1
Text Label 8650 1950 0    50   ~ 0
D2
Text Label 8650 1850 0    50   ~ 0
D3
Text Label 8650 1750 0    50   ~ 0
D4
Text Label 8650 1650 0    50   ~ 0
D5
Text Label 8650 1550 0    50   ~ 0
D6
Text Label 8650 1450 0    50   ~ 0
D7
Wire Wire Line
	8800 2150 8650 2150
Wire Wire Line
	8800 2050 8650 2050
Wire Wire Line
	8800 1950 8650 1950
Wire Wire Line
	8800 1850 8650 1850
Wire Wire Line
	8800 1750 8650 1750
Wire Wire Line
	8800 1650 8650 1650
Wire Wire Line
	8800 1550 8650 1550
Wire Wire Line
	8800 1450 8650 1450
Text Label 9500 1450 2    50   ~ 0
WR_
Wire Wire Line
	9500 1450 9300 1450
Text Label 9500 1550 2    50   ~ 0
RD_
Wire Wire Line
	9500 1550 9300 1550
Text Label 9550 1750 2    50   ~ 0
A0
Wire Wire Line
	9550 1750 9300 1750
Text Label 850  1150 0    50   ~ 0
A0
Text Label 850  1350 0    50   ~ 0
A1
Text Label 850  1550 0    50   ~ 0
A2
Wire Wire Line
	850  1150 1100 1150
Wire Wire Line
	850  1350 1100 1350
Wire Wire Line
	850  1550 1100 1550
Text Label 850  4150 0    50   ~ 0
A15
Wire Wire Line
	850  4150 1100 4150
Text Label 850  1750 0    50   ~ 0
A3
Text Label 850  1950 0    50   ~ 0
A4
Text Label 850  2150 0    50   ~ 0
A5
Text Label 850  2350 0    50   ~ 0
A6
Text Label 850  2550 0    50   ~ 0
A7
Text Label 850  2750 0    50   ~ 0
A8
Text Label 850  2950 0    50   ~ 0
A9
Text Label 850  3150 0    50   ~ 0
A10
Text Label 850  3350 0    50   ~ 0
A11
Text Label 850  3550 0    50   ~ 0
A12
Text Label 850  3750 0    50   ~ 0
A13
Wire Wire Line
	850  1750 1100 1750
Wire Wire Line
	850  1950 1100 1950
Wire Wire Line
	850  2150 1100 2150
Wire Wire Line
	850  2350 1100 2350
Wire Wire Line
	850  2550 1100 2550
Wire Wire Line
	850  2750 1100 2750
Wire Wire Line
	850  2950 1100 2950
Wire Wire Line
	850  3150 1100 3150
Wire Wire Line
	850  3350 1100 3350
Wire Wire Line
	850  3550 1100 3550
Wire Wire Line
	850  3750 1100 3750
Text Label 2200 6800 0    50   ~ 0
TCK
Text Label 2200 6900 0    50   ~ 0
TMS
Text Label 2200 7000 0    50   ~ 0
TDO
Text Label 2200 7100 0    50   ~ 0
TDI
Text Label 4250 4000 0    50   ~ 0
TCK
Text Label 4250 3900 0    50   ~ 0
TMS
Text Label 4250 4100 0    50   ~ 0
TDO
Text Label 4250 3800 0    50   ~ 0
TDI
Wire Wire Line
	4250 3800 4450 3800
Wire Wire Line
	4250 3900 4450 3900
Wire Wire Line
	4250 4000 4450 4000
Wire Wire Line
	4250 4100 4450 4100
Text Label 4200 3050 0    50   ~ 0
A12
Wire Wire Line
	4200 3050 4450 3050
Text Label 4200 3500 0    50   ~ 0
A4
Wire Wire Line
	4200 3500 4450 3500
Text Label 4200 3350 0    50   ~ 0
A5
Wire Wire Line
	4200 3350 4450 3350
Text Label 4200 3250 0    50   ~ 0
A6
Wire Wire Line
	4200 3250 4450 3250
Text Label 4200 3150 0    50   ~ 0
A7
Wire Wire Line
	4200 3150 4450 3150
$Comp
L MSX_USB:AM29f040-lrj U5
U 2 1 6205FA00
P 10300 3500
F 0 "U5" H 10300 3650 50  0000 L CNN
F 1 "AM29f040-lrj" H 10300 3350 50  0000 L CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 12000 4000 50  0001 C CNN
F 3 "https://datasheet.octopart.com/AM29F040-90JC-AMD-datasheet-18512040.pdf" H 10300 3800 50  0001 C CNN
F 4 "AMD" H 11500 4200 50  0001 C CNN "Manufacturer"
F 5 "AM29f040" H 11600 4100 50  0001 C CNN "MPN"
	2    10300 3500
	1    0    0    -1  
$EndComp
$Comp
L MSX_USB:AM29f040-lrj U5
U 1 1 6205E603
P 9000 4500
F 0 "U5" H 9000 5967 50  0000 C CNN
F 1 "AM29f040-lrj" H 9000 5876 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 10700 5000 50  0001 C CNN
F 3 "https://datasheet.octopart.com/AM29F040-90JC-AMD-datasheet-18512040.pdf" H 9000 4800 50  0001 C CNN
F 4 "AMD" H 10200 5200 50  0001 C CNN "Manufacturer"
F 5 "AM29f040" H 10300 5100 50  0001 C CNN "MPN"
	1    9000 4500
	1    0    0    -1  
$EndComp
Text Label 7000 3350 2    50   ~ 0
A0
Wire Wire Line
	7000 3350 6750 3350
Text Label 7000 3450 2    50   ~ 0
A1
Wire Wire Line
	7000 3450 6750 3450
Text Label 7000 3650 2    50   ~ 0
A2
Text Label 7000 3800 2    50   ~ 0
A3
Wire Wire Line
	7000 3650 6750 3650
Wire Wire Line
	7000 3800 6750 3800
Text Label 7000 3250 2    50   ~ 0
A15
Wire Wire Line
	7000 3250 6750 3250
Text Label 7000 3050 2    50   ~ 0
A13
Wire Wire Line
	7000 3050 6750 3050
Text Label 950  4350 0    50   ~ 0
D0
Text Label 950  4550 0    50   ~ 0
D1
Text Label 950  4750 0    50   ~ 0
D2
Text Label 950  4950 0    50   ~ 0
D3
Text Label 950  5150 0    50   ~ 0
D4
Text Label 950  5350 0    50   ~ 0
D5
Text Label 950  5550 0    50   ~ 0
D6
Text Label 950  5750 0    50   ~ 0
D7
Wire Wire Line
	1100 4350 950  4350
Wire Wire Line
	1100 4550 950  4550
Wire Wire Line
	1100 4750 950  4750
Wire Wire Line
	1100 4950 950  4950
Wire Wire Line
	1100 5150 950  5150
Wire Wire Line
	1100 5350 950  5350
Wire Wire Line
	1100 5550 950  5550
Wire Wire Line
	1100 5750 950  5750
Text Label 4300 2950 0    50   ~ 0
D0
Text Label 4300 2850 0    50   ~ 0
D1
Wire Wire Line
	4450 2950 4300 2950
Wire Wire Line
	4450 2850 4300 2850
Text Label 4300 2700 0    50   ~ 0
D2
Text Label 4300 2600 0    50   ~ 0
D3
Text Label 4300 2500 0    50   ~ 0
D4
Text Label 4300 2400 0    50   ~ 0
D5
Wire Wire Line
	4450 2700 4300 2700
Wire Wire Line
	4450 2600 4300 2600
Wire Wire Line
	4450 2500 4300 2500
Wire Wire Line
	4450 2400 4300 2400
Text Label 6750 2150 0    50   ~ 0
WR_
Text Label 6750 1750 0    50   ~ 0
RD_
Text Label 6750 2000 0    50   ~ 0
SLTSL_
Text Label 2300 3350 0    50   ~ 0
WR_
Text Label 2300 3550 0    50   ~ 0
RD_
Text Label 2300 1750 0    50   ~ 0
SLTSL_
$Comp
L Connector:AVR-JTAG-10 J1
U 1 1 5E822CA8
P 1700 6900
F 0 "J1" H 1350 7450 50  0000 R CNB
F 1 "AVR-JTAG-10" H 1600 6350 50  0000 R CNN
F 2 "msx-usb-kicad-cpld:PinHeader_2x05_P2.54mm_Vertical" V 1550 7050 50  0001 C CNN
F 3 " ~" H 425 6350 50  0001 C CNN
	1    1700 6900
	1    0    0    -1  
$EndComp
Text Label 4450 2250 2    50   ~ 0
BUSDIR_
Text Label 4450 2100 2    50   ~ 0
CS_
Text Label 4450 1950 2    50   ~ 0
IORQ_
Text Label 9300 1650 0    50   ~ 0
CS_
Text Label 6750 1850 0    50   ~ 0
RESET_
Text Label 6750 2250 0    50   ~ 0
MA13
Text Label 6750 2450 0    50   ~ 0
MA14
Text Label 6750 2550 0    50   ~ 0
MA15
Text Label 6750 2650 0    50   ~ 0
MA16
Text Label 6750 2750 0    50   ~ 0
MA17
Text Label 6750 2850 0    50   ~ 0
MA18
Text Label 2300 3750 0    50   ~ 0
RESET_
Text Label 2300 2950 0    50   ~ 0
IORQ_
Text Label 2300 2750 0    50   ~ 0
BUSDIR_
Text Label 8350 4700 0    50   ~ 0
MA14
Text Label 8350 4800 0    50   ~ 0
MA15
Text Label 8350 4900 0    50   ~ 0
MA16
Text Label 8350 5000 0    50   ~ 0
MA17
Text Label 8350 5100 0    50   ~ 0
MA18
Text Label 8350 4600 0    50   ~ 0
MA13
$EndSCHEMATC