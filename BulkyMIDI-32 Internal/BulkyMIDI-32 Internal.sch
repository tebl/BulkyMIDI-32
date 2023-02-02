EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "BulkyMIDI-32 Internal"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "mounted in a PCs 3.5\" drive bay."
Comment4 "BulkyMIDI-32 in the RetroPanels form factor, in other words a version of it that can be"
$EndDescr
$Comp
L BulkyMIDI:Internal_Panel J1
U 1 1 62825997
P 12475 6950
F 0 "J1" H 12425 8250 50  0000 L CNN
F 1 "Front Panel" H 12575 8250 50  0000 L CNN
F 2 "BulkyMIDI-32:Internal_Panel" H 12475 6950 50  0001 C CNN
F 3 "~" H 12475 6950 50  0001 C CNN
	1    12475 6950
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6282785A
P 14350 6750
F 0 "#PWR0101" H 14350 6500 50  0001 C CNN
F 1 "GND" H 14355 6577 50  0000 C CNN
F 2 "" H 14350 6750 50  0001 C CNN
F 3 "" H 14350 6750 50  0001 C CNN
	1    14350 6750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14175 6750 14175 6675
$Comp
L power:+3.3V #PWR0118
U 1 1 62F4338D
P 11275 6750
F 0 "#PWR0118" H 11275 6600 50  0001 C CNN
F 1 "+3.3V" H 11290 6923 50  0000 C CNN
F 2 "" H 11275 6750 50  0001 C CNN
F 3 "" H 11275 6750 50  0001 C CNN
	1    11275 6750
	-1   0    0    -1  
$EndComp
Text GLabel 13575 6525 1    50   Input ~ 0
SW_SYNTH
Text GLabel 13875 6525 1    50   Input ~ 0
SW_UP
Text GLabel 13675 6525 1    50   Input ~ 0
SW_ROM
Text GLabel 13975 6525 1    50   Input ~ 0
SW_DOWN
Text GLabel 13775 6525 1    50   Input ~ 0
SW_ENC
Wire Wire Line
	13775 6525 13775 6750
Wire Wire Line
	13575 6750 13575 6525
Wire Wire Line
	13675 6750 13675 6525
Wire Wire Line
	13875 6750 13875 6525
Wire Wire Line
	13975 6750 13975 6525
Text GLabel 12075 6525 1    60   Input ~ 0
I2C_SDA
Text GLabel 11975 6525 1    60   Input ~ 0
I2C_SCL
Wire Wire Line
	11975 6525 11975 6750
Wire Wire Line
	12075 6750 12075 6525
Wire Wire Line
	14350 6750 14350 6675
Wire Wire Line
	14175 6675 14350 6675
Wire Wire Line
	11400 9325 11400 9400
$Comp
L power:GND #PWR0121
U 1 1 6231CF82
P 11400 10550
F 0 "#PWR0121" H 11400 10300 50  0001 C CNN
F 1 "GND" H 11405 10377 50  0000 C CNN
F 2 "" H 11400 10550 50  0001 C CNN
F 3 "" H 11400 10550 50  0001 C CNN
	1    11400 10550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U1
U 7 1 5FB9128B
P 11400 9900
F 0 "U1" V 11033 9900 50  0000 C CNN
F 1 "74HCT14" V 11124 9900 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 11400 9900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 11400 9900 50  0001 C CNN
	7    11400 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	11400 10550 11400 10475
Wire Wire Line
	11400 10475 11400 10400
Connection ~ 11400 10475
Wire Notes Line
	975  8500 4450 8500
Wire Notes Line
	6925 8500 4625 8500
Wire Wire Line
	2025 7025 2025 6925
Wire Wire Line
	2525 7025 2525 7100
Wire Wire Line
	2525 7025 2025 7025
Wire Wire Line
	2450 6475 2450 6925
Wire Wire Line
	2025 6475 2025 6625
Wire Wire Line
	2025 6475 2025 6400
Connection ~ 2025 6475
Wire Wire Line
	2025 6475 2450 6475
Wire Notes Line
	9575 8500 15300 8500
Wire Wire Line
	10350 10200 10350 10475
NoConn ~ 10350 9600
$Comp
L 74xx:74HC14 U1
U 5 1 5FB8F7D6
P 1850 10325
F 0 "U1" H 1850 10600 50  0000 C CNN
F 1 "74HCT14" H 1850 10525 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1850 10325 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 1850 10325 50  0001 C CNN
	5    1850 10325
	1    0    0    -1  
$EndComp
Wire Notes Line
	7100 8500 9400 8500
Wire Wire Line
	10625 9250 10625 9325
Wire Wire Line
	11400 9325 10625 9325
Connection ~ 10625 9325
Wire Wire Line
	10625 9325 10625 9800
Wire Wire Line
	10350 10475 10625 10475
Wire Wire Line
	10625 10475 11400 10475
Connection ~ 10625 10475
Wire Wire Line
	10625 10000 10625 10475
$Comp
L power:+5V #PWR020
U 1 1 5FBA783C
P 10625 9250
F 0 "#PWR020" H 10625 9100 50  0001 C CNN
F 1 "+5V" H 10625 9390 50  0000 C CNN
F 2 "" H 10625 9250 50  0000 C CNN
F 3 "" H 10625 9250 50  0000 C CNN
	1    10625 9250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U1
U 6 1 5FB904E8
P 10350 9900
F 0 "U1" H 10350 10175 50  0000 C CNN
F 1 "74HCT14" H 10350 10100 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10350 9900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10350 9900 50  0001 C CNN
	6    10350 9900
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C6
U 1 1 5F9F946B
P 2025 6775
F 0 "C6" H 2140 6821 50  0000 L CNN
F 1 "470uF" H 2140 6730 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2025 6775 50  0001 C CNN
F 3 "~" H 2025 6775 50  0001 C CNN
	1    2025 6775
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F0DF157
P 10625 9900
F 0 "C1" H 10717 9946 50  0000 L CNN
F 1 "100nF" H 10717 9855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 10625 9900 50  0001 C CNN
F 3 "~" H 10625 9900 50  0001 C CNN
	1    10625 9900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 6371FCA6
P 2025 6400
F 0 "#PWR0106" H 2025 6250 50  0001 C CNN
F 1 "+5V" H 2025 6540 50  0000 C CNN
F 2 "" H 2025 6400 50  0000 C CNN
F 3 "" H 2025 6400 50  0000 C CNN
	1    2025 6400
	1    0    0    -1  
$EndComp
NoConn ~ 2600 6625
Connection ~ 2525 7025
Wire Wire Line
	2525 7025 2525 6825
$Comp
L power:GND #PWR02
U 1 1 636EDE5A
P 2525 7100
F 0 "#PWR02" H 2525 6850 50  0001 C CNN
F 1 "GND" H 2530 6927 50  0000 C CNN
F 2 "" H 2525 7100 50  0001 C CNN
F 3 "" H 2525 7100 50  0001 C CNN
	1    2525 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6825 2525 6825
Connection ~ 2525 6825
Wire Wire Line
	2525 6725 2525 6825
Wire Wire Line
	2600 6725 2525 6725
Wire Wire Line
	2450 6925 2600 6925
$Comp
L floppy:Power_Input J7
U 1 1 636D31CD
P 2800 6725
F 0 "J7" H 3353 6721 50  0000 L CNN
F 1 "POWER" H 3353 6630 50  0000 L CNN
F 2 "RetroPanel:Molex_KK-254_1x04_P2.54mm_Horizontal" H 2800 6725 50  0001 C CNN
F 3 "~" H 2800 6725 50  0001 C CNN
	1    2800 6725
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6425 6050 6500
$Comp
L mounting:Mounting_Pin M16
U 1 1 635F4633
P 6050 6275
F 0 "M16" H 6050 6375 50  0001 C CNN
F 1 "Mounting_Pin" H 6050 6200 50  0001 C CNN
F 2 "mounting:M3_pin" H 6050 6275 50  0001 C CNN
F 3 "~" H 6050 6275 50  0001 C CNN
	1    6050 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	5175 6800 5175 6875
$Comp
L mounting:Mounting_Pad M15
U 1 1 635E5F23
P 5175 6650
F 0 "M15" H 5175 6750 50  0001 C CNN
F 1 "Mounting_Pad" H 5175 6575 50  0001 C CNN
F 2 "mounting:Pad_pin" H 5175 6650 50  0001 C CNN
F 3 "~" H 5175 6650 50  0001 C CNN
	1    5175 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 6800 5300 6875
$Comp
L mounting:Mounting_Pad M14
U 1 1 635E064A
P 5300 6650
F 0 "M14" H 5300 6750 50  0001 C CNN
F 1 "Mounting_Pad" H 5300 6575 50  0001 C CNN
F 2 "mounting:B.Pad_pin" H 5300 6650 50  0001 C CNN
F 3 "~" H 5300 6650 50  0001 C CNN
	1    5300 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5175 6875 5300 6875
Wire Wire Line
	5425 6800 5425 6875
$Comp
L mounting:Mounting_Pad M13
U 1 1 635B7F85
P 5425 6650
F 0 "M13" H 5425 6750 50  0001 C CNN
F 1 "Mounting_Pad" H 5425 6575 50  0001 C CNN
F 2 "mounting:Pad_pin" H 5425 6650 50  0001 C CNN
F 3 "~" H 5425 6650 50  0001 C CNN
	1    5425 6650
	1    0    0    -1  
$EndComp
Connection ~ 5425 6875
Connection ~ 5300 6875
Wire Wire Line
	5300 6875 5425 6875
Wire Wire Line
	5425 6875 5550 6875
Connection ~ 5550 6875
Wire Wire Line
	5550 6800 5550 6875
$Comp
L mounting:Mounting_Pad M12
U 1 1 635B6874
P 5550 6650
F 0 "M12" H 5550 6750 50  0001 C CNN
F 1 "Mounting_Pad" H 5550 6575 50  0001 C CNN
F 2 "mounting:Pad_pin" H 5550 6650 50  0001 C CNN
F 3 "~" H 5550 6650 50  0001 C CNN
	1    5550 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 6875 5675 6875
Connection ~ 5675 6875
Wire Wire Line
	5675 6800 5675 6875
$Comp
L mounting:Mounting_Pad M11
U 1 1 635B4DD6
P 5675 6650
F 0 "M11" H 5675 6750 50  0001 C CNN
F 1 "Mounting_Pad" H 5675 6575 50  0001 C CNN
F 2 "mounting:Pad_pin" H 5675 6650 50  0001 C CNN
F 3 "~" H 5675 6650 50  0001 C CNN
	1    5675 6650
	1    0    0    -1  
$EndComp
Connection ~ 5925 6875
Wire Wire Line
	5925 6800 5925 6875
Wire Wire Line
	5675 6875 5800 6875
Wire Wire Line
	5800 6875 5925 6875
Connection ~ 5800 6875
Wire Wire Line
	5800 6800 5800 6875
$Comp
L mounting:Mounting_Pad M9
U 1 1 6359FE8F
P 5800 6650
F 0 "M9" H 5800 6750 50  0001 C CNN
F 1 "Mounting_Pad" H 5800 6575 50  0001 C CNN
F 2 "mounting:Pad_pin" H 5800 6650 50  0001 C CNN
F 3 "~" H 5800 6650 50  0001 C CNN
	1    5800 6650
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pad M10
U 1 1 637AD750
P 5925 6650
F 0 "M10" H 5925 6750 50  0001 C CNN
F 1 "Mounting_Pad" H 5925 6575 50  0001 C CNN
F 2 "mounting:Pad_pin" H 5925 6650 50  0001 C CNN
F 3 "~" H 5925 6650 50  0001 C CNN
	1    5925 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 6875 6050 6875
Connection ~ 6050 6875
Wire Wire Line
	6050 6800 6050 6875
Wire Wire Line
	6050 6875 6175 6875
Connection ~ 6175 6875
Wire Wire Line
	6175 6800 6175 6875
Wire Wire Line
	6175 6875 6300 6875
Wire Wire Line
	6300 6875 6425 6875
Connection ~ 6300 6875
Wire Wire Line
	6300 6800 6300 6875
$Comp
L mounting:Mounting_Pad M7
U 1 1 6359FE8C
P 6050 6650
F 0 "M7" H 6050 6750 50  0001 C CNN
F 1 "Mounting_Pad" H 6050 6575 50  0001 C CNN
F 2 "mounting:B.Pad_pin" H 6050 6650 50  0001 C CNN
F 3 "~" H 6050 6650 50  0001 C CNN
	1    6050 6650
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pad M8
U 1 1 6359FE8B
P 6175 6650
F 0 "M8" H 6175 6750 50  0001 C CNN
F 1 "Mounting_Pad" H 6175 6575 50  0001 C CNN
F 2 "mounting:Pad_pin" H 6175 6650 50  0001 C CNN
F 3 "~" H 6175 6650 50  0001 C CNN
	1    6175 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6425 6875 6425 6950
Connection ~ 6425 6875
Wire Wire Line
	6425 6500 6425 6875
$Comp
L mounting:Mounting_Pad M5
U 1 1 637825FA
P 6300 6650
F 0 "M5" H 6300 6750 50  0001 C CNN
F 1 "Mounting_Pad" H 6300 6575 50  0001 C CNN
F 2 "mounting:Pad_pin" H 6300 6650 50  0001 C CNN
F 3 "~" H 6300 6650 50  0001 C CNN
	1    6300 6650
	1    0    0    -1  
$EndComp
Connection ~ 6425 6500
Wire Wire Line
	6425 6425 6425 6500
Wire Wire Line
	6300 6500 6425 6500
Connection ~ 6300 6500
Wire Wire Line
	6300 6425 6300 6500
Wire Wire Line
	6050 6500 6175 6500
Wire Wire Line
	6175 6500 6300 6500
Connection ~ 6175 6500
Wire Wire Line
	6175 6425 6175 6500
$Comp
L power:GND #PWR0111
U 1 1 6282AADA
P 6425 6950
F 0 "#PWR0111" H 6425 6700 50  0001 C CNN
F 1 "GND" H 6430 6777 50  0000 C CNN
F 2 "" H 6425 6950 50  0001 C CNN
F 3 "" H 6425 6950 50  0001 C CNN
	1    6425 6950
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M3
U 1 1 6359FE87
P 6425 6275
F 0 "M3" H 6425 6375 50  0001 C CNN
F 1 "Mounting_Pin" H 6425 6200 50  0001 C CNN
F 2 "mounting:M3_pin" H 6425 6275 50  0001 C CNN
F 3 "~" H 6425 6275 50  0001 C CNN
	1    6425 6275
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M2
U 1 1 6359FE86
P 6300 6275
F 0 "M2" H 6300 6375 50  0001 C CNN
F 1 "Mounting_Pin" H 6300 6200 50  0001 C CNN
F 2 "mounting:M3_pin" H 6300 6275 50  0001 C CNN
F 3 "~" H 6300 6275 50  0001 C CNN
	1    6300 6275
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M1
U 1 1 6359FE85
P 6175 6275
F 0 "M1" H 6175 6375 50  0001 C CNN
F 1 "Mounting_Pin" H 6175 6200 50  0001 C CNN
F 2 "mounting:M3_pin" H 6175 6275 50  0001 C CNN
F 3 "~" H 6175 6275 50  0001 C CNN
	1    6175 6275
	1    0    0    -1  
$EndComp
Text Label 13625 1400 0    50   ~ 0
AGND
Wire Wire Line
	13500 1300 14250 1300
Wire Wire Line
	13825 1500 14550 1500
Text Label 13625 1600 0    50   ~ 0
LEFT
Text Label 13625 1300 0    50   ~ 0
RIGHT
Wire Wire Line
	13500 1600 13825 1600
Wire Wire Line
	13825 1600 13825 1500
Wire Wire Line
	13500 1400 13575 1400
Connection ~ 13575 1400
Wire Wire Line
	13575 1500 13575 1400
Wire Wire Line
	13500 1500 13575 1500
$Comp
L BulkyMIDI:Analog_Audio J4
U 1 1 6435D324
P 13300 1500
F 0 "J4" H 13218 1075 50  0000 C CNN
F 1 "AUDIO" H 13425 1700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 13300 1500 50  0001 C CNN
F 3 "~" H 13300 1500 50  0001 C CNN
	1    13300 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 4600 5900 4600
Wire Wire Line
	9175 1725 9175 1800
Wire Notes Line
	975  8500 975  5000
Wire Notes Line
	4450 5000 4450 8500
Wire Notes Line
	4450 5000 975  5000
Text Notes 1000 5100 0    50   ~ 0
Power section
Wire Notes Line
	4625 5000 4625 8500
Wire Notes Line
	6925 5000 4625 5000
Wire Notes Line
	6925 5000 6925 8500
$Comp
L Device:R R6
U 1 1 5FC194A6
P 9475 2750
F 0 "R6" V 9268 2750 50  0000 C CNN
F 1 "220" V 9359 2750 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9405 2750 50  0001 C CNN
F 3 "~" H 9475 2750 50  0001 C CNN
	1    9475 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 5FC2F26A
P 10725 1925
F 0 "#PWR019" H 10725 1775 50  0001 C CNN
F 1 "+5V" H 10725 2065 50  0000 C CNN
F 2 "" H 10725 1925 50  0000 C CNN
F 3 "" H 10725 1925 50  0000 C CNN
	1    10725 1925
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5FC30A93
P 10725 2150
F 0 "R5" H 10650 2200 50  0000 R CNN
F 1 "220" H 10675 2125 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10655 2150 50  0001 C CNN
F 3 "~" H 10725 2150 50  0001 C CNN
	1    10725 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10725 2300 10725 2375
Wire Wire Line
	10725 1925 10725 2000
Wire Wire Line
	10300 2375 10725 2375
Wire Wire Line
	9175 2750 9175 2475
Wire Wire Line
	9325 2750 9175 2750
Wire Notes Line
	9575 5000 15300 5000
Wire Wire Line
	14550 1500 14550 1775
Wire Wire Line
	14250 1300 14250 1775
Wire Wire Line
	14400 1400 14400 1775
Wire Wire Line
	14100 1400 14100 1775
Wire Wire Line
	14100 1400 14400 1400
Wire Wire Line
	13575 1400 14100 1400
Connection ~ 14100 1400
Wire Wire Line
	5200 1050 9175 1050
Wire Wire Line
	9175 1050 9175 1125
Wire Wire Line
	6900 4600 7400 4600
Wire Wire Line
	6500 4600 6600 4600
Text Notes 9600 5300 0    50   ~ 0
OLED displays have unfortunately been produced with varying pinouts, we therefore need to add solder bridges to specify what the pins should\nbe connected to. Faceplate connector includes signals for both screen, control scheme pins as well as providing an activity LED.
Text Notes 9600 5100 0    50   ~ 0
OLED display and faceplate connector
Wire Notes Line
	9400 5000 7100 5000
Wire Notes Line
	9575 5000 9575 8500
Wire Notes Line
	9400 5000 9400 8500
Wire Notes Line
	7100 5000 7100 8500
Wire Notes Line
	15300 5000 15300 8500
Wire Notes Line
	975  925  4450 925 
Wire Notes Line
	975  4825 975  925 
Wire Notes Line
	4450 4825 975  4825
Wire Notes Line
	4450 925  4450 4825
Wire Notes Line
	15300 4825 11275 4825
Wire Notes Line
	15300 925  15300 4825
Wire Notes Line
	11275 925  15300 925 
Wire Notes Line
	11275 4825 11275 925 
Text Notes 8825 3400 0    50   ~ 0
RS-232 or TTL Serial USB adapter (optional)
Wire Notes Line
	8800 4825 8800 3300
Wire Notes Line
	11100 4825 8800 4825
Wire Notes Line
	11100 3300 11100 4825
Wire Notes Line
	8800 3300 11100 3300
Wire Wire Line
	9850 4150 9925 4150
Text GLabel 9850 4150 0    50   Input ~ 0
PI_TX
Wire Wire Line
	9850 4050 9925 4050
Text GLabel 9850 4050 0    50   Output ~ 0
PI_RX
$Comp
L power:GND #PWR0109
U 1 1 62E25E97
P 9850 4325
F 0 "#PWR0109" H 9850 4075 50  0001 C CNN
F 1 "GND" H 9855 4152 50  0000 C CNN
F 2 "" H 9850 4325 50  0001 C CNN
F 3 "" H 9850 4325 50  0001 C CNN
	1    9850 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 4250 9850 4325
Wire Wire Line
	9925 4250 9850 4250
Wire Wire Line
	9850 3950 9925 3950
Wire Wire Line
	9850 3875 9850 3950
$Comp
L power:+3.3V #PWR0108
U 1 1 62E0E2AF
P 9850 3875
F 0 "#PWR0108" H 9850 3725 50  0001 C CNN
F 1 "+3.3V" H 9865 4048 50  0000 C CNN
F 2 "" H 9850 3875 50  0001 C CNN
F 3 "" H 9850 3875 50  0001 C CNN
	1    9850 3875
	1    0    0    -1  
$EndComp
$Comp
L BulkyMIDI:Serial_Adapter J6
U 1 1 62DE97DB
P 10125 4050
F 0 "J6" H 10075 4350 50  0000 L CNN
F 1 "SERIAL" H 10000 4275 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10125 4050 50  0001 C CNN
F 3 "~" H 10125 4050 50  0001 C CNN
	1    10125 4050
	1    0    0    -1  
$EndComp
Text Notes 4650 1025 0    50   ~ 0
MIDI IN (optional)
Wire Wire Line
	6250 1700 6250 1775
Wire Wire Line
	3600 2600 3675 2600
Text GLabel 3675 2600 2    50   Input ~ 0
SW_ENC
Wire Wire Line
	1925 2400 2000 2400
Wire Wire Line
	2000 3200 1925 3200
Wire Wire Line
	1925 3100 2000 3100
Wire Wire Line
	2000 3600 1925 3600
Text GLabel 1925 3100 0    50   Input ~ 0
SW_DOWN
Text GLabel 1925 3200 0    50   Input ~ 0
SW_UP
Text GLabel 1925 3600 0    50   Input ~ 0
SW_ROM
Text GLabel 1925 2400 0    50   Input ~ 0
SW_SYNTH
Wire Wire Line
	6250 2375 6250 2500
Wire Wire Line
	6650 2450 6650 2500
$Comp
L power:+3.3V #PWR0107
U 1 1 62C086C8
P 6650 2450
F 0 "#PWR0107" H 6650 2300 50  0001 C CNN
F 1 "+3.3V" H 6665 2623 50  0000 C CNN
F 2 "" H 6650 2450 50  0001 C CNN
F 3 "" H 6650 2450 50  0001 C CNN
	1    6650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1775 5850 1700
$Comp
L power:GND #PWR0105
U 1 1 62BF4005
P 5850 1775
F 0 "#PWR0105" H 5850 1525 50  0001 C CNN
F 1 "GND" H 5855 1602 50  0000 C CNN
F 2 "" H 5850 1775 50  0001 C CNN
F 3 "" H 5850 1775 50  0001 C CNN
	1    5850 1775
	1    0    0    -1  
$EndComp
Wire Notes Line
	4625 4825 4625 3300
Wire Notes Line
	8625 4825 4625 4825
Wire Notes Line
	8625 3300 8625 4825
Wire Notes Line
	4625 3300 8625 3300
Wire Notes Line
	8800 3200 8800 925 
Wire Notes Line
	11100 3200 8800 3200
Wire Notes Line
	11100 925  11100 3200
Wire Notes Line
	8800 925  11100 925 
Wire Wire Line
	5000 2075 5200 2075
Wire Notes Line
	4625 925  8625 925 
Wire Notes Line
	4625 3200 4625 925 
Wire Notes Line
	8625 3200 4625 3200
Wire Notes Line
	8625 925  8625 3200
Wire Wire Line
	6250 2975 6250 2900
Wire Wire Line
	11900 2725 12900 2725
Wire Wire Line
	11900 2125 12900 2125
Wire Wire Line
	11900 2725 11900 2125
Connection ~ 11900 2725
Wire Wire Line
	11900 3800 11900 2725
Wire Wire Line
	11900 3800 12350 3800
Wire Wire Line
	12350 3800 12800 3800
Wire Wire Line
	12350 3800 12350 3875
Wire Wire Line
	12350 3800 12350 3725
Connection ~ 12350 3800
Wire Wire Line
	12800 2875 12900 2875
Wire Wire Line
	12800 3350 12800 3425
Wire Wire Line
	12350 3350 12350 3425
Wire Wire Line
	12350 3350 12800 3350
Connection ~ 12800 3350
Wire Wire Line
	12800 2875 12800 3350
Connection ~ 12350 3350
Wire Wire Line
	12350 3275 12350 3350
$Comp
L power:+5V #PWR0104
U 1 1 628EF3E5
P 12350 3275
F 0 "#PWR0104" H 12350 3125 50  0001 C CNN
F 1 "+5V" H 12350 3425 50  0000 C CNN
F 2 "" H 12350 3275 50  0001 C CNN
F 3 "" H 12350 3275 50  0001 C CNN
	1    12350 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	12750 2575 12900 2575
Wire Wire Line
	12750 2425 12900 2425
Wire Wire Line
	12750 2275 12900 2275
NoConn ~ 3600 2000
NoConn ~ 3600 2100
NoConn ~ 3600 2700
NoConn ~ 3600 2800
NoConn ~ 3600 3000
NoConn ~ 3600 3100
NoConn ~ 3600 3200
NoConn ~ 3600 3300
NoConn ~ 3600 3400
NoConn ~ 3600 3600
NoConn ~ 3600 3700
NoConn ~ 2000 3500
NoConn ~ 2000 3400
NoConn ~ 2000 3300
NoConn ~ 2000 2800
NoConn ~ 2000 2300
Wire Wire Line
	2900 1450 2900 1525
Wire Wire Line
	2600 1450 2600 1525
Wire Wire Line
	3000 1525 3000 1600
Wire Wire Line
	2900 1525 3000 1525
Wire Wire Line
	2700 1525 2700 1600
Wire Wire Line
	2600 1525 2700 1525
Wire Wire Line
	1925 2700 2000 2700
Wire Wire Line
	1925 2900 2000 2900
Text GLabel 5000 2075 0    50   Output ~ 0
PI_RX
Wire Wire Line
	1925 2100 2000 2100
Text GLabel 1925 2100 0    50   Input ~ 0
PI_RX
Wire Wire Line
	1925 2000 2000 2000
Text GLabel 1925 2000 0    50   Output ~ 0
PI_TX
Wire Wire Line
	6875 1575 6700 1575
Wire Wire Line
	6875 1575 6875 1750
Wire Wire Line
	6700 1575 6700 1975
Text Notes 8825 1025 0    50   ~ 0
MIDI THRU (optional)
Text Notes 4650 3400 0    50   ~ 0
MIDI Out (optional)
$Comp
L Device:R R1
U 1 1 5FD9ADE3
P 6750 4600
F 0 "R1" V 6575 4600 50  0000 C CNN
F 1 "220" V 6650 4600 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6680 4600 50  0001 C CNN
F 3 "~" H 6750 4600 50  0001 C CNN
	1    6750 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	5025 4600 5150 4600
Text GLabel 5025 4600 0    50   Input ~ 0
PI_TX
Wire Wire Line
	5200 1050 5200 2075
Wire Wire Line
	5200 2075 5200 2500
Connection ~ 5200 2075
$Comp
L 74xx:74HC14 U1
U 4 1 5FB8DE88
P 9175 2175
F 0 "U1" H 9175 2450 50  0000 C CNN
F 1 "74HCT14" H 9300 2350 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9175 2175 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9175 2175 50  0001 C CNN
	4    9175 2175
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HC14 U1
U 3 1 5FB8D580
P 9175 1425
F 0 "U1" H 9175 1700 50  0000 C CNN
F 1 "74HCT14" H 9175 1625 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9175 1425 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9175 1425 50  0001 C CNN
	3    9175 1425
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HC14 U1
U 2 1 5FB8CA4F
P 6200 4600
F 0 "U1" H 6200 4875 50  0000 C CNN
F 1 "74HCT14" H 6200 4800 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6200 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 6200 4600 50  0001 C CNN
	2    6200 4600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U1
U 1 1 5FB8715B
P 5450 4600
F 0 "U1" H 5450 4917 50  0000 C CNN
F 1 "74HCT14" H 5450 4826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5450 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 5450 4600 50  0001 C CNN
	1    5450 4600
	1    0    0    -1  
$EndComp
NoConn ~ 13350 1775
NoConn ~ 13500 1775
NoConn ~ 13650 1775
NoConn ~ 13800 1775
NoConn ~ 13950 1775
Text GLabel 12750 2575 0    50   Output ~ 0
I2S_LRCLK
Text GLabel 12750 2425 0    50   Output ~ 0
I2S_DATA
Text GLabel 1925 2900 0    50   Output ~ 0
I2S_DATA
Text GLabel 12750 2275 0    50   Output ~ 0
I2S_BCLK
$Comp
L gy-pcm5102:GY-PCM5102 A2
U 1 1 5FAFED20
P 13900 2425
F 0 "A2" H 13000 3025 50  0000 L CNN
F 1 "GY-PCM5102" H 13700 2425 50  0000 L CNN
F 2 "BulkyMIDI-32:GY-PCM5102" H 13200 2325 50  0001 C CNN
F 3 "" H 13200 2325 50  0001 C CNN
	1    13900 2425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5FADEE25
P 12350 3875
F 0 "#PWR016" H 12350 3625 50  0001 C CNN
F 1 "GND" H 12355 3702 50  0000 C CNN
F 2 "" H 12350 3875 50  0001 C CNN
F 3 "" H 12350 3875 50  0001 C CNN
	1    12350 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 3725 12800 3800
$Comp
L Device:CP1 C5
U 1 1 5FACA9C7
P 12350 3575
F 0 "C5" H 12465 3621 50  0000 L CNN
F 1 "100uF" H 12465 3530 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 12350 3575 50  0001 C CNN
F 3 "~" H 12350 3575 50  0001 C CNN
	1    12350 3575
	1    0    0    -1  
$EndComp
Text GLabel 1925 2700 0    50   Output ~ 0
I2S_LRCLK
Text GLabel 1925 2500 0    50   Output ~ 0
I2S_BCLK
$Comp
L Device:C C4
U 1 1 5F9F335D
P 12800 3575
F 0 "C4" H 12915 3621 50  0000 L CNN
F 1 "100nF" H 12915 3530 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 12838 3425 50  0001 C CNN
F 3 "~" H 12800 3575 50  0001 C CNN
	1    12800 3575
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F99E885
P 7450 2175
F 0 "R4" V 7243 2175 50  0000 C CNN
F 1 "220" V 7334 2175 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7380 2175 50  0001 C CNN
F 3 "~" H 7450 2175 50  0001 C CNN
	1    7450 2175
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2500 5200 2500
Wire Wire Line
	5800 2500 6250 2500
Wire Wire Line
	5200 2075 5950 2075
Connection ~ 6250 2500
Wire Wire Line
	6250 2600 6250 2500
$Comp
L power:GND #PWR013
U 1 1 5F9C4355
P 6250 2975
F 0 "#PWR013" H 6250 2725 50  0001 C CNN
F 1 "GND" H 6255 2802 50  0000 C CNN
F 2 "" H 6250 2975 50  0001 C CNN
F 3 "" H 6250 2975 50  0001 C CNN
	1    6250 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2500 6650 2500
Wire Wire Line
	5850 1700 6250 1700
Wire Wire Line
	6875 2175 6550 2175
Wire Wire Line
	7300 2175 6875 2175
Connection ~ 6875 2175
Wire Wire Line
	6875 2050 6875 2175
Wire Wire Line
	6700 1975 6550 1975
$Comp
L Device:C C3
U 1 1 5F9A9681
P 6250 2750
F 0 "C3" H 6365 2796 50  0000 L CNN
F 1 "100nF" H 6365 2705 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 6288 2600 50  0001 C CNN
F 3 "~" H 6250 2750 50  0001 C CNN
	1    6250 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F9A901B
P 5650 2500
F 0 "R3" V 5443 2500 50  0000 C CNN
F 1 "1k" V 5534 2500 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 2500 50  0001 C CNN
F 3 "~" H 5650 2500 50  0001 C CNN
	1    5650 2500
	0    1    1    0   
$EndComp
$Comp
L Isolator:H11L1 U2
U 1 1 5F99F896
P 6250 2075
F 0 "U2" H 6125 1750 50  0000 C CNN
F 1 "H11L1M" H 6025 1825 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm_Socket_LongPads" H 6160 2075 50  0001 C CNN
F 3 "" H 6160 2075 50  0001 C CNN
	1    6250 2075
	-1   0    0    1   
$EndComp
$Comp
L Device:D D1
U 1 1 5F99E152
P 6875 1900
F 0 "D1" V 6921 1820 50  0000 R CNN
F 1 "1N4148" V 6830 1820 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6875 1900 50  0001 C CNN
F 3 "~" H 6875 1900 50  0001 C CNN
	1    6875 1900
	0    -1   -1   0   
$EndComp
Text GLabel 3675 2400 2    60   Output ~ 0
I2C_SCL
Text GLabel 3675 2300 2    60   Output ~ 0
I2C_SDA
Wire Wire Line
	3675 2400 3600 2400
Wire Wire Line
	3600 2300 3675 2300
Wire Wire Line
	1925 2500 2000 2500
Connection ~ 2900 1525
Wire Wire Line
	2900 1525 2900 1600
$Comp
L power:+3.3V #PWR04
U 1 1 5EE97F79
P 2900 1450
F 0 "#PWR04" H 2900 1300 50  0001 C CNN
F 1 "+3.3V" H 2915 1623 50  0000 C CNN
F 2 "" H 2900 1450 50  0001 C CNN
F 3 "" H 2900 1450 50  0001 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5EE96A8C
P 2600 1450
F 0 "#PWR03" H 2600 1300 50  0001 C CNN
F 1 "+5V" H 2600 1600 50  0000 C CNN
F 2 "" H 2600 1450 50  0001 C CNN
F 3 "" H 2600 1450 50  0001 C CNN
	1    2600 1450
	1    0    0    -1  
$EndComp
Connection ~ 2600 1525
Wire Wire Line
	2600 1600 2600 1525
$Comp
L power:GND #PWR05
U 1 1 5EE8D690
P 3100 4350
F 0 "#PWR05" H 3100 4100 50  0001 C CNN
F 1 "GND" H 3105 4177 50  0000 C CNN
F 2 "" H 3100 4350 50  0001 C CNN
F 3 "" H 3100 4350 50  0001 C CNN
	1    3100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4350 3100 4275
Wire Wire Line
	2500 4200 2500 4275
Wire Wire Line
	2500 4275 2600 4275
Connection ~ 2600 4275
Wire Wire Line
	2600 4200 2600 4275
Wire Wire Line
	2600 4275 2700 4275
Connection ~ 2700 4275
Wire Wire Line
	2700 4200 2700 4275
Wire Wire Line
	2700 4275 2800 4275
Connection ~ 2800 4275
Wire Wire Line
	2800 4200 2800 4275
Wire Wire Line
	2800 4275 2900 4275
Connection ~ 2900 4275
Wire Wire Line
	2900 4200 2900 4275
Wire Wire Line
	2900 4275 3000 4275
Wire Wire Line
	3000 4275 3100 4275
Connection ~ 3000 4275
Wire Wire Line
	3000 4200 3000 4275
Connection ~ 3100 4275
Wire Wire Line
	3100 4275 3100 4200
Connection ~ 2500 4275
Wire Wire Line
	2400 4275 2500 4275
Wire Wire Line
	2400 4200 2400 4275
$Comp
L raspberry_pi:Raspberry_Pi_2_3 A1
U 1 1 5EE82FB5
P 2800 2900
F 0 "A1" H 2175 4250 50  0000 C CNN
F 1 "Raspberry PI 3A+" H 2175 4175 50  0000 C CNN
F 2 "RPI:Raspberry_Pi_3A_Socketed_THT_FaceDown_MountingHoles" H 2800 2900 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2800 2900 50  0001 C CNN
	1    2800 2900
	1    0    0    -1  
$EndComp
Text GLabel 7675 2175 2    50   Input ~ 0
MIDI_SOURCE
Text GLabel 7675 1575 2    50   Input ~ 0
MIDI_SINK
Wire Wire Line
	7675 1575 6875 1575
Connection ~ 6875 1575
Wire Wire Line
	7675 2175 7600 2175
Text GLabel 11875 6525 1    50   Output ~ 0
MIDI_SOURCE
Text GLabel 11575 6525 1    50   Output ~ 0
MIDI_SINK
Wire Wire Line
	11875 6525 11875 6750
Wire Wire Line
	11575 6525 11575 6750
$Comp
L audio_jack:TRS_3.5mm J3
U 1 1 63F93B00
P 7675 6150
F 0 "J3" H 7653 6575 50  0000 C CNN
F 1 "EXT_MIDI" H 7653 6484 50  0000 C CNN
F 2 "audio_jack:PJ-307_IN" H 7925 6250 50  0001 C CNN
F 3 "~" H 7925 6250 50  0001 C CNN
	1    7675 6150
	1    0    0    -1  
$EndComp
NoConn ~ 7475 6350
NoConn ~ 7875 5950
NoConn ~ 7875 6250
Text GLabel 8500 6050 2    50   Output ~ 0
EXT_SOURCE
Text GLabel 8500 6150 2    50   Output ~ 0
EXT_SINK
Wire Wire Line
	7875 6050 8000 6050
Wire Wire Line
	7875 6150 8000 6150
$Comp
L audio_jack:TRS_3.5mm J5
U 1 1 640252E5
P 7675 7025
F 0 "J5" H 7653 7450 50  0000 C CNN
F 1 "INT_MIDI" H 7653 7359 50  0000 C CNN
F 2 "audio_jack:PJ-307_IN" H 7925 7125 50  0001 C CNN
F 3 "~" H 7925 7125 50  0001 C CNN
	1    7675 7025
	1    0    0    -1  
$EndComp
NoConn ~ 7475 7225
NoConn ~ 7875 6825
NoConn ~ 7875 7125
Text GLabel 8500 6925 2    50   Output ~ 0
INT_SOURCE
Text GLabel 8500 7025 2    50   Output ~ 0
INT_SINK
Text GLabel 11675 6525 1    50   Input ~ 0
EXT_SOURCE
Text GLabel 11375 6525 1    50   Input ~ 0
EXT_SINK
Text GLabel 11775 6525 1    50   Input ~ 0
INT_SOURCE
Text GLabel 11475 6525 1    50   Input ~ 0
INT_SINK
Wire Wire Line
	11375 6525 11375 6750
Wire Wire Line
	11475 6525 11475 6750
Wire Wire Line
	11675 6525 11675 6750
Wire Wire Line
	11775 6525 11775 6750
$Comp
L audio_jack:TRS_3.5mm J8
U 1 1 640913C3
P 7675 7900
F 0 "J8" H 7653 8325 50  0000 C CNN
F 1 "THRU" H 7653 8234 50  0000 C CNN
F 2 "audio_jack:PJ-307_OUT" H 7925 8000 50  0001 C CNN
F 3 "~" H 7925 8000 50  0001 C CNN
	1    7675 7900
	1    0    0    -1  
$EndComp
NoConn ~ 7875 7700
NoConn ~ 7875 8000
Text GLabel 8500 7800 2    50   Output ~ 0
THRU_SOURCE
Text GLabel 8500 7900 2    50   Output ~ 0
THRU_SINK
$Comp
L power:+5V #PWR0119
U 1 1 5FD00C6D
P 8450 3775
F 0 "#PWR0119" H 8450 3625 50  0001 C CNN
F 1 "+5V" H 8450 3915 50  0000 C CNN
F 2 "" H 8450 3775 50  0000 C CNN
F 3 "" H 8450 3775 50  0000 C CNN
	1    8450 3775
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FD00C73
P 8450 3975
F 0 "R2" H 8375 4025 50  0000 R CNN
F 1 "220" H 8400 3950 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8380 3975 50  0001 C CNN
F 3 "~" H 8450 3975 50  0001 C CNN
	1    8450 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3775 8450 3825
Wire Wire Line
	8100 4200 8450 4200
Wire Wire Line
	8450 4200 8450 4125
Wire Wire Line
	7400 4600 7400 4200
Wire Wire Line
	7400 4200 7500 4200
NoConn ~ 8100 4100
NoConn ~ 7500 4100
$Comp
L BulkyMIDI:DIN-5_MIDI J2
U 1 1 5FBFBE67
P 7800 4100
F 0 "J2" H 7800 3733 50  0000 C CNN
F 1 "MIDI OUT" H 7800 3824 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7800 4100 50  0001 C CNN
F 3 "" H 7800 4100 50  0001 C CNN
	1    7800 4100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FD12B0A
P 7800 4575
F 0 "#PWR012" H 7800 4325 50  0001 C CNN
F 1 "GND" H 7805 4402 50  0000 C CNN
F 2 "" H 7800 4575 50  0001 C CNN
F 3 "" H 7800 4575 50  0001 C CNN
	1    7800 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4400 7800 4475
Wire Wire Line
	7800 4475 7900 4475
Wire Wire Line
	7900 4475 7900 4375
Connection ~ 7800 4475
Wire Wire Line
	7800 4475 7800 4575
Text GLabel 10300 2375 0    50   Input ~ 0
THRU_SOURCE
Text GLabel 10300 2750 2    50   Input ~ 0
THRU_SINK
Wire Wire Line
	9625 2750 10300 2750
$Comp
L power:GND #PWR0102
U 1 1 6417A9DF
P 7475 8100
F 0 "#PWR0102" H 7475 7850 50  0001 C CNN
F 1 "GND" H 7480 7927 50  0000 C CNN
F 2 "" H 7475 8100 50  0001 C CNN
F 3 "" H 7475 8100 50  0001 C CNN
	1    7475 8100
	1    0    0    -1  
$EndComp
$Comp
L solder_select:Jumper_4_Swappable J9
U 1 1 64199E97
P 8200 6050
F 0 "J9" H 8250 6267 50  0000 C CNN
F 1 "EXT_TRS_SWAP" H 8250 6176 50  0000 C CNN
F 2 "solder_bridge:select_swappable" H 8190 6050 50  0001 C CNN
F 3 "~" H 8190 6050 50  0001 C CNN
	1    8200 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7875 6925 8000 6925
Wire Wire Line
	7875 7025 8000 7025
$Comp
L solder_select:Jumper_4_Swappable J10
U 1 1 6423E275
P 8200 6925
F 0 "J10" H 8250 7142 50  0000 C CNN
F 1 "INT_TRS_SWAP" H 8250 7051 50  0000 C CNN
F 2 "solder_bridge:select_swappable" H 8190 6925 50  0001 C CNN
F 3 "~" H 8190 6925 50  0001 C CNN
	1    8200 6925
	1    0    0    -1  
$EndComp
Wire Wire Line
	7875 7800 8000 7800
Wire Wire Line
	7875 7900 8000 7900
$Comp
L solder_select:Jumper_4_Swappable J11
U 1 1 6426ABFA
P 8200 7800
F 0 "J11" H 8250 8017 50  0000 C CNN
F 1 "THRU_TRS_SWAP" H 8250 7926 50  0000 C CNN
F 2 "solder_bridge:select_swappable" H 8190 7800 50  0001 C CNN
F 3 "~" H 8190 7800 50  0001 C CNN
	1    8200 7800
	1    0    0    -1  
$EndComp
Text Notes 7125 5100 0    50   ~ 0
MIDI-connectors
Text Notes 7125 5550 0    50   ~ 0
3.5mm jacks are used for MIDI-signals, mainly because\nthey are more compact yet are somewhat standardised.\nTwo variants are used, type A (link square with round\npad) and type B (link squares and link round pads in\npairs).
Wire Wire Line
	5500 9800 5575 9800
Text Notes 1000 8800 0    50   ~ 0
Status LEDs
Text GLabel 1550 10325 0    50   Input ~ 0
MIDI_THRUn
Text Notes 1000 9725 0    50   ~ 0
Board status, shows that the boards are\npowered as well as separate LED for the\nMCU functionality.\n\nDATA received on MIDI input for main\nboard is also shown, but as I didn't like\nthe flickering we'll light it up as mostly\nsolid - as long as there is activity. \n\nThis is calculated as\nT = 1.1 * R21 * C8 = 0.11s
Wire Notes Line
	975  10725 975  8675
Wire Notes Line
	6925 8675 6925 10725
$Comp
L Timer:NE555P U4
U 1 1 62615F79
P 4350 10000
F 0 "U4" H 4050 10350 50  0000 C CNN
F 1 "NE555P" H 4350 10000 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 5000 9600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 5200 9600 50  0001 C CNN
	1    4350 10000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 6261BA77
P 3475 9425
F 0 "#PWR025" H 3475 9275 50  0001 C CNN
F 1 "+5V" H 3475 9565 50  0000 C CNN
F 2 "" H 3475 9425 50  0000 C CNN
F 3 "" H 3475 9425 50  0000 C CNN
	1    3475 9425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 626775D9
P 2750 9300
F 0 "R21" V 2543 9300 50  0000 C CNN
F 1 "100k" V 2634 9300 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2680 9300 50  0001 C CNN
F 3 "~" H 2750 9300 50  0001 C CNN
	1    2750 9300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 9150 2750 9075
$Comp
L Device:C_Small C9
U 1 1 626C62F0
P 3675 10375
F 0 "C9" V 3850 10325 50  0000 L CNN
F 1 "10nF" V 3775 10250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3675 10375 50  0001 C CNN
F 3 "" H 3675 10375 50  0001 C CNN
	1    3675 10375
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 628DC93C
P 4350 10400
F 0 "#PWR029" H 4350 10150 50  0001 C CNN
F 1 "GND" H 4355 10227 50  0000 C CNN
F 2 "" H 4350 10400 50  0001 C CNN
F 3 "" H 4350 10400 50  0001 C CNN
	1    4350 10400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q1
U 1 1 628DD7E1
P 3175 9800
F 0 "Q1" H 3050 9850 50  0000 R CNN
F 1 "2N3906" H 3050 9925 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 3375 9725 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 3175 9800 50  0001 L CNN
	1    3175 9800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R22
U 1 1 629161DD
P 3475 9575
F 0 "R22" V 3268 9575 50  0000 C CNN
F 1 "10k" V 3359 9575 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3405 9575 50  0001 C CNN
F 3 "~" H 3475 9575 50  0001 C CNN
	1    3475 9575
	-1   0    0    1   
$EndComp
Wire Wire Line
	3475 9725 3475 9800
$Comp
L power:+5V #PWR022
U 1 1 62BFF792
P 2750 9075
F 0 "#PWR022" H 2750 8925 50  0001 C CNN
F 1 "+5V" H 2750 9215 50  0000 C CNN
F 2 "" H 2750 9075 50  0000 C CNN
F 3 "" H 2750 9075 50  0000 C CNN
	1    2750 9075
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 62C79D45
P 3775 10200
F 0 "#PWR027" H 3775 10050 50  0001 C CNN
F 1 "+5V" H 3775 10340 50  0000 C CNN
F 2 "" H 3775 10200 50  0000 C CNN
F 3 "" H 3775 10200 50  0000 C CNN
	1    3775 10200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 10200 3850 10200
Wire Wire Line
	3675 10275 3675 10000
$Comp
L Device:CP_Small C8
U 1 1 62D92460
P 2750 9800
F 0 "C8" H 2865 9846 50  0000 L CNN
F 1 "1uF" H 2865 9755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2750 9800 50  0001 C CNN
F 3 "~" H 2750 9800 50  0001 C CNN
	1    2750 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 9525 3075 9525
Connection ~ 3075 9525
Wire Wire Line
	3075 9525 3075 9600
$Comp
L power:GND #PWR024
U 1 1 62EA3E35
P 3075 10000
F 0 "#PWR024" H 3075 9750 50  0001 C CNN
F 1 "GND" H 3080 9827 50  0000 C CNN
F 2 "" H 3075 10000 50  0001 C CNN
F 3 "" H 3075 10000 50  0001 C CNN
	1    3075 10000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 62EBC4E0
P 2750 10000
F 0 "#PWR023" H 2750 9750 50  0001 C CNN
F 1 "GND" H 2755 9827 50  0000 C CNN
F 2 "" H 2750 10000 50  0001 C CNN
F 3 "" H 2750 10000 50  0001 C CNN
	1    2750 10000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 62F7E57F
P 3675 10475
F 0 "#PWR026" H 3675 10225 50  0001 C CNN
F 1 "GND" H 3680 10302 50  0000 C CNN
F 2 "" H 3675 10475 50  0001 C CNN
F 3 "" H 3675 10475 50  0001 C CNN
	1    3675 10475
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 63088C5B
P 4350 9450
F 0 "#PWR028" H 4350 9300 50  0001 C CNN
F 1 "+5V" H 4350 9590 50  0000 C CNN
F 2 "" H 4350 9450 50  0000 C CNN
F 3 "" H 4350 9450 50  0000 C CNN
	1    4350 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 9450 2750 9525
Connection ~ 2750 9525
Connection ~ 5100 10000
Wire Wire Line
	5100 10000 5100 10200
Wire Wire Line
	4850 10200 5100 10200
Wire Wire Line
	4850 10000 5100 10000
$Comp
L Device:C_Small C10
U 1 1 63C12C1F
P 4550 9525
F 0 "C10" V 4725 9475 50  0000 L CNN
F 1 "100nF" V 4650 9400 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4550 9525 50  0001 C CNN
F 3 "" H 4550 9525 50  0001 C CNN
	1    4550 9525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 9525 4350 9600
Wire Wire Line
	4350 9450 4350 9525
Connection ~ 4350 9525
$Comp
L power:GND #PWR030
U 1 1 63C30414
P 4925 9525
F 0 "#PWR030" H 4925 9275 50  0001 C CNN
F 1 "GND" H 4930 9352 50  0000 C CNN
F 2 "" H 4925 9525 50  0001 C CNN
F 3 "" H 4925 9525 50  0001 C CNN
	1    4925 9525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 9525 4350 9525
Wire Wire Line
	4650 9525 4925 9525
Text GLabel 3675 9100 0    50   Input ~ 0
LED_DATA
Text GLabel 2150 10325 2    50   Output ~ 0
LED_DATA
Connection ~ 3775 9800
Wire Wire Line
	3775 9800 3850 9800
Wire Wire Line
	3675 9100 3775 9100
Wire Wire Line
	3775 9100 3775 9800
Wire Wire Line
	5100 9000 3075 9000
Wire Wire Line
	5100 9000 5100 10000
Wire Wire Line
	3075 9000 3075 9525
Wire Wire Line
	2750 9525 2750 9700
Wire Wire Line
	2750 9900 2750 10000
Connection ~ 3475 9800
Wire Wire Line
	3475 9800 3775 9800
Wire Wire Line
	3375 9800 3475 9800
Wire Wire Line
	3675 10000 3850 10000
Text GLabel 9375 1800 2    50   Output ~ 0
MIDI_THRUn
Wire Wire Line
	9375 1800 9175 1800
Connection ~ 9175 1800
Wire Wire Line
	9175 1800 9175 1875
Wire Wire Line
	14075 6525 14075 6750
$Comp
L Device:R R7
U 1 1 62CE4C7E
P 5350 9800
F 0 "R7" V 5175 9800 50  0000 C CNN
F 1 "2k2*" V 5250 9800 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5280 9800 50  0001 C CNN
F 3 "~" H 5350 9800 50  0001 C CNN
	1    5350 9800
	0    -1   1    0   
$EndComp
Text GLabel 5575 9800 2    50   Output ~ 0
LED_OUT
Text GLabel 14075 6525 1    50   Input ~ 0
LED_OUT
Wire Wire Line
	5200 9800 4850 9800
Text Notes 5350 10375 0    50   ~ 0
* Value of R7 must be adjusted to\nfit the type of LED used. Current\nvalue may be suitable for a\nmodern LED, for the older types\nuse a value above 330 ohm.
Wire Notes Line
	975  8675 6925 8675
Wire Notes Line
	975  10725 6925 10725
$EndSCHEMATC