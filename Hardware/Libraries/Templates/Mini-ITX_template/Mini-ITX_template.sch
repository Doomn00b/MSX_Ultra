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
Text Notes 9550 1650 0    50   ~ 0
INTERNAL CONNECTORS\n---------------\nLVDS \nFlat Panel Display Brightness \nFront Panel Audio \nInternal Stereo Speakers \nDigital Microphone (Optional) \nSATA \nInternal USB \nFront Flat Panel \nFans \nConsumer Infrared Receiver (Optional) 
Wire Notes Line
	9500 1700 11100 1700
Wire Notes Line
	11100 1700 11100 650 
Wire Notes Line
	11100 650  9500 650 
Wire Notes Line
	9500 650  9500 1700
Text Notes 9550 2800 0    50   ~ 0
EXTERNAL CONNECTORS\n---------------\nDC Input (molex)\nUSB 2.0 \nUSB 3.0 \nRJ-45 LAN \nHDMI (in/out) \neSATA\nDVI-I \nAudio (A/D Line In/Out) 
Wire Notes Line
	11100 1950 9500 1950
Wire Notes Line
	9500 1950 9500 3300
Wire Notes Line
	9500 3300 11100 3300
Wire Notes Line
	11100 1950 11100 3300
Text Notes 7600 2250 0    50   ~ 0
Molex Mini-Fit Jr 5566 - 0039299243\nTE Connectivity VAL-U-LOK - 2-1586039-4
$Comp
L Connector:ATX-24 J1
U 1 1 61EAA4B3
P 1400 1550
F 0 "J1" H 1400 2217 50  0000 C CNN
F 1 "ATX-24" H 1400 2126 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-24A2_2x12_P4.20mm_Vertical" H 1400 1450 50  0001 C CNN
F 3 "https://www.intel.com/content/dam/www/public/us/en/documents/guides/power-supply-design-guide-june.pdf#page=33" H 3800 1000 50  0001 C CNN
	1    1400 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 61EAE406
P 2700 850
F 0 "#PWR0101" H 2700 700 50  0001 C CNN
F 1 "+3.3V" H 2715 1023 50  0000 C CNN
F 2 "" H 2700 850 50  0001 C CNN
F 3 "" H 2700 850 50  0001 C CNN
	1    2700 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 61EAEA0C
P 2450 850
F 0 "#PWR0102" H 2450 700 50  0001 C CNN
F 1 "+5V" H 2465 1023 50  0000 C CNN
F 2 "" H 2450 850 50  0001 C CNN
F 3 "" H 2450 850 50  0001 C CNN
	1    2450 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0103
U 1 1 61EAF58D
P 2200 850
F 0 "#PWR0103" H 2200 700 50  0001 C CNN
F 1 "+12V" H 2215 1023 50  0000 C CNN
F 2 "" H 2200 850 50  0001 C CNN
F 3 "" H 2200 850 50  0001 C CNN
	1    2200 850 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0104
U 1 1 61EAFBAC
P 2200 2250
F 0 "#PWR0104" H 2200 2350 50  0001 C CNN
F 1 "-12V" H 2215 2423 50  0000 C CNN
F 2 "" H 2200 2250 50  0001 C CNN
F 3 "" H 2200 2250 50  0001 C CNN
	1    2200 2250
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 61EB7396
P 800 7100
F 0 "#PWR0105" H 800 6950 50  0001 C CNN
F 1 "+3.3V" H 815 7273 50  0000 C CNN
F 2 "" H 800 7100 50  0001 C CNN
F 3 "" H 800 7100 50  0001 C CNN
	1    800  7100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 61EB739C
P 1100 7100
F 0 "#PWR0106" H 1100 6950 50  0001 C CNN
F 1 "+5V" H 1115 7273 50  0000 C CNN
F 2 "" H 1100 7100 50  0001 C CNN
F 3 "" H 1100 7100 50  0001 C CNN
	1    1100 7100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 61EB73A2
P 1400 7100
F 0 "#PWR0107" H 1400 6950 50  0001 C CNN
F 1 "+12V" H 1415 7273 50  0000 C CNN
F 2 "" H 1400 7100 50  0001 C CNN
F 3 "" H 1400 7100 50  0001 C CNN
	1    1400 7100
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0108
U 1 1 61EB73A8
P 1700 7100
F 0 "#PWR0108" H 1700 7200 50  0001 C CNN
F 1 "-12V" H 1715 7273 50  0000 C CNN
F 2 "" H 1700 7100 50  0001 C CNN
F 3 "" H 1700 7100 50  0001 C CNN
	1    1700 7100
	1    0    0    -1  
$EndComp
Text Notes 650  6800 0    50   ~ 0
Power-Nets
Wire Notes Line
	2300 6850 650  6850
Wire Notes Line
	650  6850 650  7350
Wire Notes Line
	650  7350 2300 7350
Wire Notes Line
	2300 7350 2300 6850
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61EB843C
P 800 7100
F 0 "#FLG0101" H 800 7175 50  0001 C CNN
F 1 "PWR_FLAG" H 800 7273 50  0001 C CNN
F 2 "" H 800 7100 50  0001 C CNN
F 3 "~" H 800 7100 50  0001 C CNN
	1    800  7100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61EB8B27
P 1400 7100
F 0 "#FLG0102" H 1400 7175 50  0001 C CNN
F 1 "PWR_FLAG" H 1400 7273 50  0001 C CNN
F 2 "" H 1400 7100 50  0001 C CNN
F 3 "~" H 1400 7100 50  0001 C CNN
	1    1400 7100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61EB93DD
P 1700 7100
F 0 "#FLG0103" H 1700 7175 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 7273 50  0001 C CNN
F 2 "" H 1700 7100 50  0001 C CNN
F 3 "~" H 1700 7100 50  0001 C CNN
	1    1700 7100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 61EB98FE
P 1100 7100
F 0 "#FLG0104" H 1100 7175 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 7273 50  0001 C CNN
F 2 "" H 1100 7100 50  0001 C CNN
F 3 "~" H 1100 7100 50  0001 C CNN
	1    1100 7100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 61EBD147
P 1950 7100
F 0 "#PWR0109" H 1950 6850 50  0001 C CNN
F 1 "GND" H 1955 6927 50  0000 C CNN
F 2 "" H 1950 7100 50  0001 C CNN
F 3 "" H 1950 7100 50  0001 C CNN
	1    1950 7100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 61EBDE82
P 1950 7100
F 0 "#FLG0105" H 1950 7175 50  0001 C CNN
F 1 "PWR_FLAG" H 1950 7273 50  0001 C CNN
F 2 "" H 1950 7100 50  0001 C CNN
F 3 "~" H 1950 7100 50  0001 C CNN
	1    1950 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1950 2200 1950
Wire Wire Line
	2200 1950 2200 2250
Wire Wire Line
	1900 1350 2200 1350
Wire Wire Line
	2200 1350 2200 850 
Wire Wire Line
	1900 1450 2450 1450
Wire Wire Line
	2450 1450 2450 850 
Wire Wire Line
	1900 1550 2450 1550
Wire Wire Line
	2450 1550 2450 1450
Connection ~ 2450 1450
Wire Wire Line
	1900 1650 2700 1650
Wire Wire Line
	2700 1650 2700 850 
$Comp
L power:GND #PWR0110
U 1 1 61EC64AB
P 1400 2250
F 0 "#PWR0110" H 1400 2000 50  0001 C CNN
F 1 "GND" H 1405 2077 50  0000 C CNN
F 2 "" H 1400 2250 50  0001 C CNN
F 3 "" H 1400 2250 50  0001 C CNN
	1    1400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2150 1400 2250
NoConn ~ 900  1150
Text Notes 2650 6800 0    50   ~ 0
Mechanical
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 61ED9653
P 2750 7000
F 0 "H1" H 2850 7003 50  0000 L CNN
F 1 "MountingHole_Pad" H 2850 6958 50  0001 L CNN
F 2 "LRJ:MountingHole_3.96mm_Pad_Via" H 2750 7000 50  0001 C CNN
F 3 "~" H 2750 7000 50  0001 C CNN
	1    2750 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 61EDA0BA
P 3100 7000
F 0 "H2" H 3200 7003 50  0000 L CNN
F 1 "MountingHole_Pad" H 3200 6958 50  0001 L CNN
F 2 "LRJ:MountingHole_3.96mm_Pad_Via" H 3100 7000 50  0001 C CNN
F 3 "~" H 3100 7000 50  0001 C CNN
	1    3100 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 61EDA9DA
P 3450 7000
F 0 "H3" H 3550 7003 50  0000 L CNN
F 1 "MountingHole_Pad" H 3550 6958 50  0001 L CNN
F 2 "LRJ:MountingHole_3.96mm_Pad_Via" H 3450 7000 50  0001 C CNN
F 3 "~" H 3450 7000 50  0001 C CNN
	1    3450 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 61EDB345
P 3800 7000
F 0 "H4" H 3900 7003 50  0000 L CNN
F 1 "MountingHole_Pad" H 3900 6958 50  0001 L CNN
F 2 "LRJ:MountingHole_3.96mm_Pad_Via" H 3800 7000 50  0001 C CNN
F 3 "~" H 3800 7000 50  0001 C CNN
	1    3800 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7100 2750 7200
Wire Wire Line
	2750 7200 3100 7200
Wire Wire Line
	3100 7200 3100 7100
Wire Wire Line
	3100 7200 3300 7200
Wire Wire Line
	3450 7200 3450 7100
Connection ~ 3100 7200
Wire Wire Line
	3450 7200 3800 7200
Wire Wire Line
	3800 7200 3800 7100
Connection ~ 3450 7200
Wire Notes Line
	2650 6850 2650 7400
Wire Notes Line
	2650 7400 4050 7400
Wire Notes Line
	4050 7400 4050 6850
Wire Notes Line
	4050 6850 2650 6850
$Comp
L power:GND #PWR01
U 1 1 61EDE239
P 3300 7200
F 0 "#PWR01" H 3300 6950 50  0001 C CNN
F 1 "GND" H 3300 7050 50  0000 C CNN
F 2 "" H 3300 7200 50  0001 C CNN
F 3 "" H 3300 7200 50  0001 C CNN
	1    3300 7200
	1    0    0    -1  
$EndComp
Connection ~ 3300 7200
Wire Wire Line
	3300 7200 3450 7200
$EndSCHEMATC
