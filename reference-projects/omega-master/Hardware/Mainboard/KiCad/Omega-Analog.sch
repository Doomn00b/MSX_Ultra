EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
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
L Device:R R10
U 1 1 5BF9B713
P 1750 1700
F 0 "R10" V 1830 1700 50  0000 C CNN
F 1 "20k" V 1750 1700 50  0000 C CNN
F 2 "My_Components:Res_762" V 1680 1700 50  0001 C CNN
F 3 "" H 1750 1700 50  0001 C CNN
	1    1750 1700
	0    1    1    0   
$EndComp
Text Label 700  1700 0    60   ~ 0
KEY_CLICK
Text HLabel 10600 800  2    60   Input ~ 0
SLT1_SND
Text HLabel 10600 900  2    60   Input ~ 0
SLT2_SND
Text Label 10200 800  0    60   ~ 0
SLT1_SND
Text Label 10200 900  0    60   ~ 0
SLT2_SND
Text HLabel 10600 1000 2    60   Input ~ 0
KEY_CLICK
Text Label 10200 1000 0    60   ~ 0
KEY_CLICK
Wire Wire Line
	10200 800  10600 800 
Wire Wire Line
	10200 900  10600 900 
Wire Wire Line
	10200 1000 10600 1000
Wire Wire Line
	10200 1300 10600 1300
Text Label 10200 1300 0    60   ~ 0
CAS_MOT
Wire Wire Line
	10200 1400 10600 1400
Text Label 10200 1400 0    60   ~ 0
CAS_OUT
Text HLabel 10600 1300 2    60   Input ~ 0
CAS_MOT
Text HLabel 10600 1400 2    60   Input ~ 0
CAS_OUT
Text Label 1600 4500 0    60   ~ 0
CAS_OUT
Text Label 1000 3800 0    60   ~ 0
CAS_MOT
Wire Wire Line
	10200 1100 10650 1100
Text Label 10200 1100 0    60   ~ 0
PSG_SND
Text HLabel 10650 1100 2    60   Input ~ 0
PSG_SND
Wire Wire Line
	10200 1500 10600 1500
Text Label 10200 1500 0    60   ~ 0
CAS_IN
Text HLabel 10600 1500 2    60   Output ~ 0
CAS_IN
Wire Wire Line
	7000 4900 7100 4900
$Comp
L power:GND #PWR082
U 1 1 5BFD350B
P 7100 5100
F 0 "#PWR082" H 7100 4850 50  0001 C CNN
F 1 "GND" H 7100 4950 50  0000 C CNN
F 2 "" H 7100 5100 50  0001 C CNN
F 3 "" H 7100 5100 50  0001 C CNN
	1    7100 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4700 2600 4700
Wire Wire Line
	2600 4700 2600 4100
Wire Wire Line
	3600 4700 4000 4700
Wire Wire Line
	4000 4700 4000 3300
NoConn ~ 7100 4100
NoConn ~ 7200 4100
Wire Wire Line
	4000 3300 3700 3300
Wire Wire Line
	2600 4100 3800 4100
Wire Wire Line
	3800 4100 3800 3600
Wire Wire Line
	3800 3500 3700 3500
Wire Wire Line
	2800 3500 2400 3500
$Comp
L power:GND #PWR095
U 1 1 5C023DFB
P 700 7500
F 0 "#PWR095" H 700 7250 50  0001 C CNN
F 1 "GND" H 700 7350 50  0000 C CNN
F 2 "" H 700 7500 50  0001 C CNN
F 3 "" H 700 7500 50  0001 C CNN
	1    700  7500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR096
U 1 1 5C0240C4
P 800 5600
F 0 "#PWR096" H 800 5450 50  0001 C CNN
F 1 "VCC" H 800 5750 50  0000 C CNN
F 2 "" H 800 5600 50  0001 C CNN
F 3 "" H 800 5600 50  0001 C CNN
	1    800  5600
	1    0    0    -1  
$EndComp
Text HLabel 10600 1700 2    60   Output ~ 0
AUDIO
Wire Wire Line
	10600 1700 10200 1700
Text Label 10200 1700 0    60   ~ 0
AUDIO
Wire Notes Line
	550  2700 7750 2700
Wire Notes Line
	7750 5350 550  5350
Text Notes 600  5300 0    60   ~ 0
Optional: Cassete I/O
$Comp
L Omega-Mainboard-rescue:Relay_SPDT-my_components RY1
U 1 1 5C150327
P 3250 3300
F 0 "RY1" H 3000 3550 60  0000 L CNN
F 1 "Relay_5V" H 3000 2850 60  0000 L CNN
F 2 "My_Components:Relay_SPDT" H 3200 3100 60  0001 C CNN
F 3 "" H 3200 3100 60  0000 C CNN
	1    3250 3300
	1    0    0    -1  
$EndComp
NoConn ~ 3700 3200
Wire Wire Line
	3700 3600 3800 3600
Connection ~ 3800 3600
Wire Wire Line
	7100 4900 7100 5100
Wire Wire Line
	3800 3600 3800 3500
$Comp
L power:GND #PWR092
U 1 1 5BFE5DF9
P 6100 2500
F 0 "#PWR092" H 6100 2250 50  0001 C CNN
F 1 "GND" H 6100 2350 50  0000 C CNN
F 2 "" H 6100 2500 50  0001 C CNN
F 3 "" H 6100 2500 50  0001 C CNN
	1    6100 2500
	1    0    0    -1  
$EndComp
Wire Notes Line
	550  5350 550  2700
Wire Notes Line
	7750 2700 7750 5350
$Comp
L Connector:DIN-8 J6
U 1 1 5DD9BC89
P 3300 4600
F 0 "J6" H 3400 4850 50  0000 C CNN
F 1 "Cassette" H 3500 4350 50  0000 C CNN
F 2 "My_Components:Conn_DIN_8pin" H 3300 4600 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 3300 4600 50  0001 C CNN
	1    3300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4500 3000 4500
Wire Wire Line
	800  5600 800  6900
Wire Wire Line
	700  6200 700  7500
Wire Wire Line
	700  1700 1600 1700
NoConn ~ 6800 4300
NoConn ~ 7000 4100
NoConn ~ 7100 4700
NoConn ~ 7000 4700
NoConn ~ 3000 4600
NoConn ~ 3600 4600
NoConn ~ 3300 4900
NoConn ~ 3300 4300
NoConn ~ 2400 4000
Wire Wire Line
	2400 3300 2800 3300
Wire Wire Line
	2400 3300 2400 3500
Connection ~ 2400 3500
NoConn ~ 1900 1700
NoConn ~ 3600 4500
Wire Wire Line
	1000 3800 2100 3800
Wire Wire Line
	2400 3500 2400 3600
$Comp
L Transistor_BJT:2N3906 Q1
U 1 1 5BFEDABE
P 2300 3800
F 0 "Q1" H 2500 3875 50  0000 L CNN
F 1 "PN2907A" H 2500 3800 50  0000 L CNN
F 2 "My_Components:Transistor_TO92_EBC_254" H 2500 3725 50  0001 L CIN
F 3 "" H 2300 3800 50  0001 L CNN
	1    2300 3800
	1    0    0    1   
$EndComp
$EndSCHEMATC
