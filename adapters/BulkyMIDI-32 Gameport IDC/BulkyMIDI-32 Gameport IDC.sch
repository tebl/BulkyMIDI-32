EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BulkyMIDI-32 Gameport (IDC)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "instead of DB15, this allows you to use a cable with it."
Comment4 "Gameport adapter as designed by Jeff Glatt. This board design uses an IDC-connector "
$EndDescr
$Comp
L Device:C_Small C1
U 1 1 5F0DF157
P 5425 6825
F 0 "C1" H 5517 6871 50  0000 L CNN
F 1 "100nF" H 5517 6780 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5425 6825 50  0001 C CNN
F 3 "~" H 5425 6825 50  0001 C CNN
	1    5425 6825
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5FBA783C
P 5425 6200
F 0 "#PWR020" H 5425 6050 50  0001 C CNN
F 1 "+5V" H 5425 6340 50  0000 C CNN
F 2 "" H 5425 6200 50  0000 C CNN
F 3 "" H 5425 6200 50  0000 C CNN
	1    5425 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 7425 6400 7350
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
P 6400 7500
F 0 "#PWR0103" H 6400 7250 50  0001 C CNN
F 1 "GND" H 6405 7327 50  0000 C CNN
F 2 "" H 6400 7500 50  0001 C CNN
F 3 "" H 6400 7500 50  0001 C CNN
	1    6400 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 6275 6400 6350
Wire Wire Line
	5425 6200 5425 6275
Connection ~ 6400 7425
Wire Wire Line
	6400 7425 6400 7500
Wire Notes Line
	9850 1150 9850 3425
Wire Notes Line
	5100 3425 5100 1150
Wire Wire Line
	9025 4775 9025 4700
Text Notes 5125 1250 0    50   ~ 0
MIDI IN (optional)
$Comp
L 74xx:74LS00 U3
U 5 1 620D2C7D
P 6400 6850
F 0 "U3" H 6630 6896 50  0000 L CNN
F 1 "74LS00" H 6630 6805 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6400 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6400 6850 50  0001 C CNN
	5    6400 6850
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
MIDI_RxD
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
MIDI_TxD
Wire Notes Line
	5100 1150 9850 1150
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
Wire Notes Line
	5000 1150 5000 5800
Wire Notes Line
	5000 5800 1900 5800
Wire Notes Line
	1900 5800 1900 1150
Wire Notes Line
	1900 1150 5000 1150
Wire Wire Line
	6125 2300 6275 2300
Wire Wire Line
	5450 2300 5450 2700
Wire Wire Line
	5450 2700 6700 2700
$Comp
L gameport:Gameport_IDC J4
U 1 1 6248D33D
P 3350 3550
F 0 "J4" H 3400 4067 50  0000 C CNN
F 1 "Gameport" H 3400 3976 50  0000 C CNN
F 2 "Gameport:Gameport_IDC" H 3350 3550 50  0001 C CNN
F 3 "~" H 3350 3550 50  0001 C CNN
	1    3350 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 624C5A39
P 2850 2900
F 0 "#PWR0107" H 2850 2750 50  0001 C CNN
F 1 "+5V" H 2850 3040 50  0000 C CNN
F 2 "" H 2850 2900 50  0000 C CNN
F 3 "" H 2850 2900 50  0000 C CNN
	1    2850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3250 3800 3250
NoConn ~ 3150 3350
NoConn ~ 3150 3450
NoConn ~ 3650 3450
NoConn ~ 3150 3750
NoConn ~ 3150 3850
NoConn ~ 3650 3650
NoConn ~ 3650 3750
$Comp
L power:GND #PWR0108
U 1 1 62501F32
P 3000 3725
F 0 "#PWR0108" H 3000 3475 50  0001 C CNN
F 1 "GND" H 3005 3552 50  0000 C CNN
F 2 "" H 3000 3725 50  0001 C CNN
F 3 "" H 3000 3725 50  0001 C CNN
	1    3000 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3725 3000 3650
Connection ~ 3000 3650
Wire Wire Line
	3000 3650 3000 3550
Wire Wire Line
	3000 3550 3150 3550
Wire Wire Line
	3000 3650 3150 3650
Wire Wire Line
	2850 3950 3150 3950
NoConn ~ 3650 3350
Text GLabel 3800 3550 2    50   Output ~ 0
MIDI_TxD
Wire Wire Line
	3800 3550 3650 3550
Text GLabel 3800 3850 2    50   Input ~ 0
MIDI_RxD
Wire Wire Line
	3800 3850 3650 3850
Wire Wire Line
	2850 2975 3800 2975
Wire Wire Line
	2850 3250 2850 3950
Wire Wire Line
	2850 3250 3150 3250
Wire Wire Line
	2850 2900 2850 2975
Wire Wire Line
	2850 2975 2850 3250
Connection ~ 2850 2975
Connection ~ 2850 3250
Wire Wire Line
	3800 2975 3800 3250
$Comp
L Device:C_Small C3
U 1 1 6257FB01
P 5850 6850
F 0 "C3" H 5942 6896 50  0000 L CNN
F 1 "100nF" H 5942 6805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5850 6850 50  0001 C CNN
F 3 "~" H 5850 6850 50  0001 C CNN
	1    5850 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5425 6925 5425 7425
Wire Wire Line
	5425 7425 5850 7425
Wire Wire Line
	5425 6725 5425 6275
Connection ~ 5425 6275
Wire Wire Line
	5425 6275 5850 6275
Wire Wire Line
	5850 6950 5850 7425
Connection ~ 5850 7425
Wire Wire Line
	5850 7425 6400 7425
Wire Wire Line
	5850 6750 5850 6275
Connection ~ 5850 6275
Wire Wire Line
	5850 6275 6400 6275
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
Text Notes 1925 1250 0    50   ~ 0
Gameport
$EndSCHEMATC
