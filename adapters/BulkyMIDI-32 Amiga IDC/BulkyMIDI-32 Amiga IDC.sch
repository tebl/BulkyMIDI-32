EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BulkyMIDI-32 Amiga (IDC)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "DB25."
Comment4 "Amiga serial to MIDI adapter, board design uses an IDC-connector in place of female"
$EndDescr
$Comp
L Device:C_Small C1
U 1 1 5F0DF157
P 5550 6825
F 0 "C1" H 5642 6871 50  0000 L CNN
F 1 "100nF" H 5642 6780 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5550 6825 50  0001 C CNN
F 3 "~" H 5550 6825 50  0001 C CNN
	1    5550 6825
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5FBA783C
P 5125 6200
F 0 "#PWR020" H 5125 6050 50  0001 C CNN
F 1 "+5V" H 5125 6340 50  0000 C CNN
F 2 "" H 5125 6200 50  0000 C CNN
F 3 "" H 5125 6200 50  0000 C CNN
	1    5125 6200
	1    0    0    -1  
$EndComp
$Comp
L Connector:DIN-5_180degree J2
U 1 1 5FBFBE67
P 8375 4675
F 0 "J2" H 8375 4308 50  0000 C CNN
F 1 "MIDI OUT" H 8375 4399 50  0000 C CNN
F 2 "BulkyMIDI-32:DIN5_MIDI" H 8375 4675 50  0001 C CNN
F 3 "" H 8375 4675 50  0001 C CNN
	1    8375 4675
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 5FD00C6D
P 9025 4350
F 0 "#PWR0119" H 9025 4200 50  0001 C CNN
F 1 "+5V" H 9025 4490 50  0000 C CNN
F 2 "" H 9025 4350 50  0000 C CNN
F 3 "" H 9025 4350 50  0000 C CNN
	1    9025 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FD00C73
P 9025 4550
F 0 "R2" H 8950 4600 50  0000 R CNN
F 1 "220" H 8975 4525 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8955 4550 50  0001 C CNN
F 3 "~" H 9025 4550 50  0001 C CNN
	1    9025 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9025 4350 9025 4400
$Comp
L power:GND #PWR012
U 1 1 5FD12B0A
P 8375 5150
F 0 "#PWR012" H 8375 4900 50  0001 C CNN
F 1 "GND" H 8380 4977 50  0000 C CNN
F 2 "" H 8375 5150 50  0001 C CNN
F 3 "" H 8375 5150 50  0001 C CNN
	1    8375 5150
	1    0    0    -1  
$EndComp
NoConn ~ 8675 4675
NoConn ~ 8075 4675
Wire Wire Line
	8375 4975 8375 5150
$Comp
L power:GND #PWR0103
U 1 1 6231CF82
P 6525 7500
F 0 "#PWR0103" H 6525 7250 50  0001 C CNN
F 1 "GND" H 6530 7327 50  0000 C CNN
F 2 "" H 6525 7500 50  0001 C CNN
F 3 "" H 6525 7500 50  0001 C CNN
	1    6525 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6525 7425 6525 7500
Wire Wire Line
	9025 4775 9025 4700
Text Notes 5125 675  0    50   ~ 0
MIDI IN (optional)
$Comp
L 74xx:74LS00 U3
U 5 1 620D2C7D
P 6525 6850
F 0 "U3" H 6450 6875 50  0000 L CNN
F 1 "74LS00" H 6525 6800 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6525 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6525 6850 50  0001 C CNN
	5    6525 6850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U3
U 3 1 620D6901
P 7325 4775
F 0 "U3" H 7325 5100 50  0000 C CNN
F 1 "74LS00" H 7325 5009 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 7325 4775 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 7325 4775 50  0001 C CNN
	3    7325 4775
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U3
U 4 1 620D7ACB
P 6575 4775
F 0 "U3" H 6575 5100 50  0000 C CNN
F 1 "74LS00" H 6575 5009 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6575 4775 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6575 4775 50  0001 C CNN
	4    6575 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2500 9275 2500
Text GLabel 9275 2500 2    50   Output ~ 0
MIDI_IN
Wire Wire Line
	7450 1875 7450 1950
Connection ~ 7450 1950
Wire Wire Line
	7775 1950 7450 1950
Wire Wire Line
	7775 2025 7775 1950
Wire Wire Line
	7450 1950 7450 2200
Connection ~ 7775 2400
Wire Wire Line
	7775 2325 7775 2400
$Comp
L Device:R R1
U 1 1 6219F0FD
P 7775 2175
F 0 "R1" H 7700 2225 50  0000 R CNN
F 1 "2k2" H 7725 2150 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7705 2175 50  0001 C CNN
F 3 "~" H 7775 2175 50  0001 C CNN
	1    7775 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	7775 2500 7775 2400
Connection ~ 7775 2500
Wire Wire Line
	7375 2500 7775 2500
Wire Wire Line
	6700 2300 6775 2300
Connection ~ 6700 2300
Wire Wire Line
	6700 2300 6575 2300
Connection ~ 6700 2500
Wire Wire Line
	6700 2700 6700 2500
Wire Wire Line
	5525 2300 5450 2300
NoConn ~ 7375 2300
$Comp
L power:+5V #PWR0104
U 1 1 62130EBF
P 7450 1875
F 0 "#PWR0104" H 7450 1725 50  0001 C CNN
F 1 "+5V" H 7450 2015 50  0000 C CNN
F 2 "" H 7450 1875 50  0000 C CNN
F 3 "" H 7450 1875 50  0000 C CNN
	1    7450 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	7375 2200 7450 2200
$Comp
L power:GND #PWR0105
U 1 1 6212BC17
P 7450 2700
F 0 "#PWR0105" H 7450 2450 50  0001 C CNN
F 1 "GND" H 7455 2527 50  0000 C CNN
F 2 "" H 7450 2700 50  0001 C CNN
F 3 "" H 7450 2700 50  0001 C CNN
	1    7450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2600 7450 2700
Wire Wire Line
	7375 2600 7450 2600
Wire Wire Line
	6775 2500 6700 2500
$Comp
L Isolator:6N138 U1
U 1 1 62109585
P 7075 2400
F 0 "U1" H 7075 1933 50  0000 C CNN
F 1 "6N138" H 7075 2024 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 7365 2100 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 7365 2100 50  0001 C CNN
	1    7075 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7775 2400 7850 2400
Wire Wire Line
	7775 2600 7775 2500
Wire Wire Line
	7850 2600 7775 2600
Wire Wire Line
	8525 2500 8525 2400
Connection ~ 8525 2500
Wire Wire Line
	8525 2500 8450 2500
Wire Wire Line
	8525 2400 8600 2400
Wire Wire Line
	8525 2600 8525 2500
Wire Wire Line
	8600 2600 8525 2600
$Comp
L 74xx:74LS00 U3
U 2 1 620D5C38
P 8900 2500
F 0 "U3" H 8900 2183 50  0000 C CNN
F 1 "74LS00" H 8900 2274 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8900 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 8900 2500 50  0001 C CNN
	2    8900 2500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U3
U 1 1 620D4FC2
P 8150 2500
F 0 "U3" H 8150 2183 50  0000 C CNN
F 1 "74LS00" H 8150 2274 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8150 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 8150 2500 50  0001 C CNN
	1    8150 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:DIN-5_180degree J3
U 1 1 5F99CA21
P 5825 2200
F 0 "J3" H 5825 1833 50  0000 C CNN
F 1 "MIDI IN" H 5825 1924 50  0000 C CNN
F 2 "BulkyMIDI-32:DIN5_MIDI" H 5825 2200 50  0001 C CNN
F 3 "" H 5825 2200 50  0001 C CNN
	1    5825 2200
	-1   0    0    1   
$EndComp
NoConn ~ 5825 2500
NoConn ~ 6125 2200
NoConn ~ 5525 2200
$Comp
L Device:R R4
U 1 1 5F99E885
P 6425 2300
F 0 "R4" V 6218 2300 50  0000 C CNN
F 1 "220" V 6309 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6355 2300 50  0001 C CNN
F 3 "~" H 6425 2300 50  0001 C CNN
	1    6425 2300
	0    1    1    0   
$EndComp
$Comp
L Device:D_Small D1
U 1 1 5F99E152
P 6700 2400
F 0 "D1" V 6800 2325 50  0000 R CNN
F 1 "1N4148" V 6725 2325 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6700 2400 50  0001 C CNN
F 3 "~" H 6700 2400 50  0001 C CNN
	1    6700 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 622D9678
P 7850 4775
F 0 "R3" V 7643 4775 50  0000 C CNN
F 1 "220" V 7734 4775 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7780 4775 50  0001 C CNN
F 3 "~" H 7850 4775 50  0001 C CNN
	1    7850 4775
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 4775 7625 4775
Wire Wire Line
	8075 4775 8000 4775
Wire Wire Line
	7025 4675 6950 4675
Wire Wire Line
	6950 4675 6950 4775
Wire Wire Line
	6950 4875 7025 4875
Wire Wire Line
	6950 4775 6875 4775
Connection ~ 6950 4775
Wire Wire Line
	6950 4775 6950 4875
Wire Wire Line
	6275 4675 6200 4675
Wire Wire Line
	6200 4675 6200 4775
Wire Wire Line
	6200 4875 6275 4875
Wire Wire Line
	6200 4775 6125 4775
Connection ~ 6200 4775
Wire Wire Line
	6200 4775 6200 4875
Wire Wire Line
	8675 4775 9025 4775
Text GLabel 6125 4775 0    50   Input ~ 0
MIDI_OUT
Wire Notes Line
	5100 575  9850 575 
Wire Notes Line
	9850 3425 5100 3425
Wire Notes Line
	9850 3525 9850 5800
Wire Notes Line
	5100 5800 5100 3525
Wire Notes Line
	5100 3525 9850 3525
Wire Notes Line
	9850 5800 5100 5800
Text Notes 5125 3625 0    50   ~ 0
MIDI Out (optional)
Wire Wire Line
	6125 2300 6275 2300
Wire Wire Line
	5450 2300 5450 2700
Wire Wire Line
	5450 2700 6700 2700
$Comp
L Device:C_Small C3
U 1 1 6257FB01
P 5975 6850
F 0 "C3" H 6067 6896 50  0000 L CNN
F 1 "100nF" H 6067 6805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5975 6850 50  0001 C CNN
F 3 "~" H 5975 6850 50  0001 C CNN
	1    5975 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 6925 5550 7425
Wire Wire Line
	5550 6725 5550 6275
Wire Wire Line
	5975 6950 5975 7425
Wire Wire Line
	5975 6750 5975 6275
$Comp
L mounting:Mounting M2
U 1 1 5E3B604F
P 11125 550
F 0 "M2" H 11125 650 50  0001 C CNN
F 1 "Mounting" H 11125 475 50  0001 C CNN
F 2 "mounting:M3" H 11125 550 50  0001 C CNN
F 3 "" H 11125 550 50  0001 C CNN
	1    11125 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M1
U 1 1 5E3B603D
P 11000 550
F 0 "M1" H 11000 650 50  0001 C CNN
F 1 "Mounting" H 11000 475 50  0001 C CNN
F 2 "mounting:M3" H 11000 550 50  0001 C CNN
F 3 "" H 11000 550 50  0001 C CNN
	1    11000 550 
	1    0    0    -1  
$EndComp
Text Notes 600  675  0    50   ~ 0
Amiga serial port:
Text GLabel 3100 2075 0    50   Output ~ 0
TX
Wire Wire Line
	3275 2175 3100 2175
Wire Wire Line
	3275 2075 3100 2075
Text GLabel 3100 2175 0    50   Input ~ 0
RX
$Comp
L Regulator_Linear:LM7805_TO220 U2
U 1 1 621AF123
P 2400 2775
F 0 "U2" H 2400 3017 50  0000 C CNN
F 1 "LM7805_TO220" H 2400 2926 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 2400 3000 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 2400 2725 50  0001 C CNN
	1    2400 2775
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 621B71F7
P 2900 3000
F 0 "C2" H 2992 3046 50  0000 L CNN
F 1 "100nF" H 2992 2955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2900 3000 50  0001 C CNN
F 3 "~" H 2900 3000 50  0001 C CNN
	1    2900 3000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 621C0BC8
P 1900 3000
F 0 "C5" H 1992 3046 50  0000 L CNN
F 1 "100nF" H 1992 2955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1900 3000 50  0001 C CNN
F 3 "~" H 1900 3000 50  0001 C CNN
	1    1900 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3275 2775 2900 2775
Wire Wire Line
	2900 2900 2900 2775
Connection ~ 2900 2775
Wire Wire Line
	2900 2775 2700 2775
Wire Wire Line
	1900 2900 1900 2775
Wire Wire Line
	1900 2775 2100 2775
$Comp
L power:GND #PWR0102
U 1 1 621D970B
P 2900 3225
F 0 "#PWR0102" H 2900 2975 50  0001 C CNN
F 1 "GND" H 2905 3052 50  0000 C CNN
F 2 "" H 2900 3225 50  0001 C CNN
F 3 "" H 2900 3225 50  0001 C CNN
	1    2900 3225
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 621DAE50
P 2400 3225
F 0 "#PWR0106" H 2400 2975 50  0001 C CNN
F 1 "GND" H 2405 3052 50  0000 C CNN
F 2 "" H 2400 3225 50  0001 C CNN
F 3 "" H 2400 3225 50  0001 C CNN
	1    2400 3225
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 621DD1E2
P 1900 3225
F 0 "#PWR0109" H 1900 2975 50  0001 C CNN
F 1 "GND" H 1905 3052 50  0000 C CNN
F 2 "" H 1900 3225 50  0001 C CNN
F 3 "" H 1900 3225 50  0001 C CNN
	1    1900 3225
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1900 2775 1900 2650
Connection ~ 1900 2775
$Comp
L power:+5V #PWR0110
U 1 1 621E8947
P 1900 2650
F 0 "#PWR0110" H 1900 2500 50  0001 C CNN
F 1 "+5V" H 1900 2790 50  0000 C CNN
F 2 "" H 1900 2650 50  0000 C CNN
F 3 "" H 1900 2650 50  0000 C CNN
	1    1900 2650
	-1   0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX232 U4
U 1 1 621F53D6
P 2850 5875
F 0 "U4" H 2850 6325 50  0000 C CNN
F 1 "MAX232" H 2850 6225 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 2900 4825 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 2850 5975 50  0001 C CNN
	1    2850 5875
	-1   0    0    -1  
$EndComp
Wire Notes Line
	575  7700 5000 7700
Wire Notes Line
	5000 575  575  575 
Wire Notes Line
	5000 575  5000 7700
Wire Notes Line
	575  7700 575  575 
$Comp
L Device:C_Small C4
U 1 1 622B7AD7
P 5125 6825
F 0 "C4" H 5217 6871 50  0000 L CNN
F 1 "100nF" H 5217 6780 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5125 6825 50  0001 C CNN
F 3 "~" H 5125 6825 50  0001 C CNN
	1    5125 6825
	1    0    0    -1  
$EndComp
Wire Wire Line
	5125 6925 5125 7425
Connection ~ 5550 6275
Connection ~ 5550 7425
Connection ~ 5975 6275
Connection ~ 5975 7425
Wire Wire Line
	5550 7425 5975 7425
Wire Wire Line
	5550 6275 5975 6275
Wire Wire Line
	5125 6200 5125 6275
Wire Wire Line
	5125 6275 5550 6275
Connection ~ 5125 6275
Wire Wire Line
	5125 6275 5125 6725
Wire Wire Line
	5125 7425 5550 7425
Wire Wire Line
	6525 6350 6525 6275
Wire Wire Line
	5975 6275 6525 6275
Wire Wire Line
	6525 7350 6525 7425
Connection ~ 6525 7425
Wire Wire Line
	5975 7425 6525 7425
$Comp
L power:GND #PWR0111
U 1 1 622EBB1E
P 2850 7075
F 0 "#PWR0111" H 2850 6825 50  0001 C CNN
F 1 "GND" H 2855 6902 50  0000 C CNN
F 2 "" H 2850 7075 50  0001 C CNN
F 3 "" H 2850 7075 50  0001 C CNN
	1    2850 7075
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 622F1F6A
P 2850 4675
F 0 "#PWR0112" H 2850 4525 50  0001 C CNN
F 1 "+5V" H 2850 4815 50  0000 C CNN
F 2 "" H 2850 4675 50  0000 C CNN
F 3 "" H 2850 4675 50  0000 C CNN
	1    2850 4675
	1    0    0    -1  
$EndComp
Text GLabel 1975 5975 0    50   Output ~ 0
RX
Wire Wire Line
	1975 5975 2050 5975
Text GLabel 1975 6375 0    50   Input ~ 0
TX
Wire Wire Line
	1975 6375 2050 6375
$Comp
L Device:C_Small C6
U 1 1 62311EE3
P 1450 5125
F 0 "C6" H 1542 5171 50  0000 L CNN
F 1 "100nF" H 1542 5080 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1450 5125 50  0001 C CNN
F 3 "~" H 1450 5125 50  0001 C CNN
	1    1450 5125
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1875 4975 1875 5025
Wire Wire Line
	1875 5225 1875 5275
Wire Wire Line
	1875 5275 2050 5275
Wire Wire Line
	1875 4975 2050 4975
$Comp
L Device:C_Small C8
U 1 1 6232AAF8
P 1875 5125
F 0 "C8" H 1967 5171 50  0000 L CNN
F 1 "100nF" H 1967 5080 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1875 5125 50  0001 C CNN
F 3 "~" H 1875 5125 50  0001 C CNN
	1    1875 5125
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 5225 1450 5475
Wire Wire Line
	1450 5475 2050 5475
$Comp
L power:+5V #PWR0113
U 1 1 62331B71
P 1450 5025
F 0 "#PWR0113" H 1450 4875 50  0001 C CNN
F 1 "+5V" H 1450 5165 50  0000 C CNN
F 2 "" H 1450 5025 50  0000 C CNN
F 3 "" H 1450 5025 50  0000 C CNN
	1    1450 5025
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 623393BE
P 3825 5125
F 0 "C9" H 3917 5171 50  0000 L CNN
F 1 "100nF" H 3917 5080 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3825 5125 50  0001 C CNN
F 3 "~" H 3825 5125 50  0001 C CNN
	1    3825 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3825 4975 3825 5025
Wire Wire Line
	3825 5225 3825 5275
Wire Wire Line
	3825 5275 3650 5275
Wire Wire Line
	3825 4975 3650 4975
$Comp
L Device:C_Small C7
U 1 1 62348A89
P 1450 6125
F 0 "C7" H 1542 6171 50  0000 L CNN
F 1 "100nF" H 1542 6080 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1450 6125 50  0001 C CNN
F 3 "~" H 1450 6125 50  0001 C CNN
	1    1450 6125
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 6025 1450 5775
Wire Wire Line
	1450 5775 2050 5775
$Comp
L power:GND #PWR0114
U 1 1 6235232E
P 1450 6225
F 0 "#PWR0114" H 1450 5975 50  0001 C CNN
F 1 "GND" H 1455 6052 50  0000 C CNN
F 2 "" H 1450 6225 50  0001 C CNN
F 3 "" H 1450 6225 50  0001 C CNN
	1    1450 6225
	1    0    0    -1  
$EndComp
NoConn ~ 2050 6175
NoConn ~ 2050 6575
NoConn ~ 3650 6175
NoConn ~ 3650 6575
Text GLabel 3725 6375 2    50   Output ~ 0
MIDI_OUT
Wire Wire Line
	3725 6375 3650 6375
Text GLabel 3725 5975 2    50   Input ~ 0
MIDI_IN
Wire Wire Line
	3725 5975 3650 5975
Wire Notes Line
	9850 3425 9850 575 
Wire Notes Line
	5100 575  5100 3425
$Comp
L amiga_serial:Amiga_Serial_IDC J1
U 1 1 621349B8
P 3475 2575
F 0 "J1" H 3525 3392 50  0000 C CNN
F 1 "Amiga Serial" H 3525 3301 50  0000 C CNN
F 2 "DB25_Serial:DB25_Serial_IDC" H 3475 2575 50  0001 C CNN
F 3 "~" H 3475 2575 50  0001 C CNN
	1    3475 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3275 2575 3200 2575
Wire Wire Line
	3200 2575 3200 3225
$Comp
L power:GND #PWR0101
U 1 1 6218125C
P 3200 3225
F 0 "#PWR0101" H 3200 2975 50  0001 C CNN
F 1 "GND" H 3205 3052 50  0000 C CNN
F 2 "" H 3200 3225 50  0001 C CNN
F 3 "" H 3200 3225 50  0001 C CNN
	1    3200 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3225 2900 3100
Wire Wire Line
	2400 3075 2400 3225
Wire Wire Line
	1900 3100 1900 3225
NoConn ~ 3275 3175
NoConn ~ 3275 3075
NoConn ~ 3275 2975
NoConn ~ 3275 2875
NoConn ~ 3275 2675
NoConn ~ 3275 2475
NoConn ~ 3275 2375
NoConn ~ 3275 2275
NoConn ~ 3275 1975
NoConn ~ 3775 1975
NoConn ~ 3775 2075
NoConn ~ 3775 2175
NoConn ~ 3775 2275
NoConn ~ 3775 2375
NoConn ~ 3775 2475
NoConn ~ 3775 2575
NoConn ~ 3775 2675
NoConn ~ 3775 2775
NoConn ~ 3775 2875
NoConn ~ 3775 2975
NoConn ~ 3775 3075
$Comp
L mounting:Mounting M4
U 1 1 622103FA
P 11125 675
F 0 "M4" H 11125 775 50  0001 C CNN
F 1 "Mounting" H 11125 600 50  0001 C CNN
F 2 "mounting:M3" H 11125 675 50  0001 C CNN
F 3 "" H 11125 675 50  0001 C CNN
	1    11125 675 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 62210400
P 11000 675
F 0 "M3" H 11000 775 50  0001 C CNN
F 1 "Mounting" H 11000 600 50  0001 C CNN
F 2 "mounting:M3" H 11000 675 50  0001 C CNN
F 3 "" H 11000 675 50  0001 C CNN
	1    11000 675 
	1    0    0    -1  
$EndComp
$EndSCHEMATC
