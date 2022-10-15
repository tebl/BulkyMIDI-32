EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "BulkyMIDI-32 Input Switch"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "MIDI Input Switch, allowing easy selection between various MIDI-signal sources."
$EndDescr
$Comp
L mounting:Mounting M1
U 1 1 5E3B603D
P 10700 600
F 0 "M1" H 10700 700 50  0001 C CNN
F 1 "Mounting" H 10700 525 50  0001 C CNN
F 2 "mounting:M3" H 10700 600 50  0001 C CNN
F 3 "" H 10700 600 50  0001 C CNN
	1    10700 600 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 62D2AC13
P 10825 600
F 0 "M2" H 10825 700 50  0001 C CNN
F 1 "Mounting" H 10825 525 50  0001 C CNN
F 2 "mounting:M3" H 10825 600 50  0001 C CNN
F 3 "" H 10825 600 50  0001 C CNN
	1    10825 600 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 5E3B605A
P 10950 600
F 0 "M3" H 10950 700 50  0001 C CNN
F 1 "Mounting" H 10950 525 50  0001 C CNN
F 2 "mounting:M3" H 10950 600 50  0001 C CNN
F 3 "" H 10950 600 50  0001 C CNN
	1    10950 600 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 5E3B6065
P 11075 600
F 0 "M4" H 11075 700 50  0001 C CNN
F 1 "Mounting" H 11075 525 50  0001 C CNN
F 2 "mounting:M3" H 11075 600 50  0001 C CNN
F 3 "" H 11075 600 50  0001 C CNN
	1    11075 600 
	1    0    0    -1  
$EndComp
$Comp
L barrel_jack:barrel_9v J1
U 1 1 5E61D3D0
P 2675 6550
F 0 "J1" H 2754 6875 50  0000 C CNN
F 1 "DC IN" H 2754 6784 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 2725 6510 50  0001 C CNN
F 3 "~" H 2725 6510 50  0001 C CNN
	1    2675 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E61DE6E
P 3350 7200
F 0 "#PWR0101" H 3350 6950 50  0001 C CNN
F 1 "GND" H 3355 7027 50  0000 C CNN
F 2 "" H 3350 7200 50  0001 C CNN
F 3 "" H 3350 7200 50  0001 C CNN
	1    3350 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 62F5143C
P 3350 5900
F 0 "#PWR0106" H 3350 5750 50  0001 C CNN
F 1 "+5V" H 3350 6050 50  0000 C CNN
F 2 "" H 3350 5900 50  0001 C CNN
F 3 "" H 3350 5900 50  0001 C CNN
	1    3350 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C6
U 1 1 62F5143D
P 3350 6550
F 0 "C6" H 3465 6596 50  0000 L CNN
F 1 "470uF" H 3465 6505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3350 6550 50  0001 C CNN
F 3 "~" H 3350 6550 50  0001 C CNN
	1    3350 6550
	1    0    0    -1  
$EndComp
NoConn ~ 6550 175 
$Comp
L BulkyMIDI:DC_5V SYM1
U 1 1 623726BF
P 2750 6050
F 0 "SYM1" H 2750 6271 50  0001 C CNN
F 1 "DC_5V" H 2750 6179 50  0000 C CNN
F 2 "BulkyMIDI-32:PWR_Specification" H 2625 6150 50  0001 C CNN
F 3 "" H 2625 6150 50  0001 C CNN
	1    2750 6050
	1    0    0    -1  
$EndComp
Text Notes 1650 5525 0    50   ~ 0
Power section
$Comp
L BulkyMIDI:Conn_Power J4
U 1 1 62FD7887
P 4050 6500
F 0 "J4" H 4353 6496 50  0000 L CNN
F 1 "Conn_Power" H 4353 6405 50  0000 L CNN
F 2 "BulkyMIDI-32:Conn_Power" H 4050 6500 50  0001 C CNN
F 3 "~" H 4050 6500 50  0001 C CNN
	1    4050 6500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 6304EAD7
P 1175 1575
F 0 "SW1" H 1175 1860 50  0000 C CNN
F 1 "CH1" H 1175 1769 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 1175 1775 50  0001 C CNN
F 3 "~" H 1175 1775 50  0001 C CNN
	1    1175 1575
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2975 6450 3050 6450
Wire Wire Line
	2975 6650 3050 6650
Wire Wire Line
	2975 6550 3050 6550
Wire Wire Line
	3050 6550 3050 6650
Connection ~ 3050 6650
Wire Wire Line
	3350 5900 3350 5975
Wire Wire Line
	3350 5975 3050 5975
Connection ~ 3350 5975
Wire Wire Line
	3050 5975 3050 6450
Wire Wire Line
	3350 5975 3350 6400
Wire Wire Line
	3350 7125 3050 7125
Connection ~ 3350 7125
Wire Wire Line
	3350 7125 3350 7200
Wire Wire Line
	3050 6650 3050 7125
Wire Wire Line
	3350 6700 3350 7125
Wire Notes Line
	1625 5425 1625 7475
Wire Notes Line
	5600 5425 5600 7475
Wire Wire Line
	3850 6500 3775 6500
Wire Wire Line
	3775 6500 3775 5975
Wire Wire Line
	3775 5975 3350 5975
Wire Wire Line
	3850 6600 3775 6600
Wire Wire Line
	3775 6600 3775 7125
Wire Wire Line
	3775 7125 3350 7125
Wire Notes Line
	5600 5425 1625 5425
Wire Notes Line
	5600 7475 1625 7475
Wire Wire Line
	975  1575 900  1575
Wire Wire Line
	975  2000 900  2000
$Comp
L Switch:SW_Push SW2
U 1 1 6305E7C3
P 1175 2000
F 0 "SW2" H 1175 2285 50  0000 C CNN
F 1 "CH2" H 1175 2194 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 1175 2200 50  0001 C CNN
F 3 "~" H 1175 2200 50  0001 C CNN
	1    1175 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	975  2425 900  2425
$Comp
L Switch:SW_Push SW3
U 1 1 63052422
P 1175 2425
F 0 "SW3" H 1175 2710 50  0000 C CNN
F 1 "CH3" H 1175 2619 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 1175 2625 50  0001 C CNN
F 3 "~" H 1175 2625 50  0001 C CNN
	1    1175 2425
	-1   0    0    -1  
$EndComp
Wire Wire Line
	900  1575 900  2000
Connection ~ 900  2000
Wire Wire Line
	900  2000 900  2425
Entry Bus Bus
	7925 2425 8025 2325
Wire Wire Line
	1875 1575 1375 1575
Text Label 1400 1575 0    50   ~ 0
SW1
Text Label 1400 2000 0    50   ~ 0
SW2
Text Label 1400 2425 0    50   ~ 0
SW3
$Comp
L cd40174:CD40174 U1
U 1 1 62D697D7
P 5000 2925
F 0 "U1" H 4725 3475 50  0000 C CNN
F 1 "CD40174" H 5000 2600 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 5000 2925 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5000 2925 50  0001 C CNN
	1    5000 2925
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 62D6B55A
P 5000 2325
F 0 "#PWR0102" H 5000 2175 50  0001 C CNN
F 1 "+5V" H 5000 2475 50  0000 C CNN
F 2 "" H 5000 2325 50  0001 C CNN
F 3 "" H 5000 2325 50  0001 C CNN
	1    5000 2325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 62D6E605
P 5000 3800
F 0 "#PWR0104" H 5000 3550 50  0001 C CNN
F 1 "GND" H 5005 3627 50  0000 C CNN
F 2 "" H 5000 3800 50  0001 C CNN
F 3 "" H 5000 3800 50  0001 C CNN
	1    5000 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 62D86E42
P 1875 1350
F 0 "D1" H 1975 1250 50  0000 L CNN
F 1 "1N4148" H 1625 1250 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1875 1350 50  0001 C CNN
F 3 "~" H 1875 1350 50  0001 C CNN
	1    1875 1350
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 62D8CF3B
P 2225 1350
F 0 "D2" H 2325 1250 50  0000 L CNN
F 1 "1N4148" H 1975 1250 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2225 1350 50  0001 C CNN
F 3 "~" H 2225 1350 50  0001 C CNN
	1    2225 1350
	0    1    1    0   
$EndComp
$Comp
L Device:D D3
U 1 1 62D8D44F
P 2575 1350
F 0 "D3" H 2675 1250 50  0000 L CNN
F 1 "1N4148" H 2325 1250 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2575 1350 50  0001 C CNN
F 3 "~" H 2575 1350 50  0001 C CNN
	1    2575 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	1875 1500 1875 1575
Wire Wire Line
	2225 1500 2225 2000
Wire Wire Line
	2575 1500 2575 2425
Connection ~ 1875 1575
Wire Wire Line
	1375 2000 2225 2000
Wire Wire Line
	1375 2425 2575 2425
Connection ~ 2225 2000
Connection ~ 2575 2425
$Comp
L Device:C_Small C10
U 1 1 62E596C7
P 4075 4000
F 0 "C10" V 3975 3750 50  0000 L CNN
F 1 "22nF" V 3975 3950 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4075 4000 50  0001 C CNN
F 3 "~" H 4075 4000 50  0001 C CNN
	1    4075 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 62E596CD
P 4225 4000
F 0 "R8" V 4150 3750 50  0000 L CNN
F 1 "100k" V 4225 3925 39  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4155 4000 50  0001 C CNN
F 3 "~" H 4225 4000 50  0001 C CNN
	1    4225 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 4250 4225 4250
Wire Wire Line
	4075 4100 4075 4250
Wire Wire Line
	4225 4150 4225 4250
Wire Wire Line
	4225 3850 4225 3775
Wire Wire Line
	4225 3775 4075 3775
Wire Wire Line
	4075 3775 4075 3900
Wire Wire Line
	4225 4250 4225 4325
Connection ~ 4225 4250
$Comp
L power:GND #PWR0112
U 1 1 62E596DB
P 4225 4325
F 0 "#PWR0112" H 4225 4075 50  0001 C CNN
F 1 "GND" H 4230 4152 50  0000 C CNN
F 2 "" H 4225 4325 50  0001 C CNN
F 3 "" H 4225 4325 50  0001 C CNN
	1    4225 4325
	-1   0    0    -1  
$EndComp
Connection ~ 4225 3775
Wire Wire Line
	1875 1575 3925 1575
Wire Wire Line
	2225 2000 3825 2000
Wire Wire Line
	2575 2425 3725 2425
Wire Wire Line
	4225 3525 4225 3775
Wire Wire Line
	3725 2425 3725 2725
Wire Wire Line
	3825 2000 3825 2625
Wire Wire Line
	3925 2525 3925 1575
Wire Wire Line
	4225 3525 4575 3525
Wire Wire Line
	3925 2525 4575 2525
Wire Wire Line
	3825 2625 4575 2625
Wire Wire Line
	3725 2725 4575 2725
Connection ~ 4225 3525
$Comp
L Device:R R7
U 1 1 630AAEA5
P 3975 1000
F 0 "R7" V 3768 1000 50  0000 C CNN
F 1 "10k" V 3859 1000 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3905 1000 50  0001 C CNN
F 3 "~" H 3975 1000 50  0001 C CNN
	1    3975 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	4125 1000 4225 1000
Wire Wire Line
	4225 1000 4225 3525
Wire Wire Line
	1875 1000 1875 1200
Wire Wire Line
	2225 1200 2225 1000
Connection ~ 2225 1000
Wire Wire Line
	2225 1000 1875 1000
Wire Wire Line
	2575 1200 2575 1000
Connection ~ 2575 1000
Wire Wire Line
	2575 1000 2225 1000
$Comp
L Device:R R9
U 1 1 63147FDC
P 5775 3525
F 0 "R9" V 5568 3525 50  0000 C CNN
F 1 "10k" V 5659 3525 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5705 3525 50  0001 C CNN
F 3 "~" H 5775 3525 50  0001 C CNN
	1    5775 3525
	0    1    1    0   
$EndComp
$Comp
L Device:CP_Small C11
U 1 1 63149C0A
P 5525 3700
F 0 "C11" H 5640 3746 50  0000 L CNN
F 1 "10uF" H 5640 3655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 5525 3700 50  0001 C CNN
F 3 "~" H 5525 3700 50  0001 C CNN
	1    5525 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5525 3600 5525 3525
Wire Wire Line
	5525 3525 5425 3525
Wire Wire Line
	5625 3525 5525 3525
Connection ~ 5525 3525
$Comp
L power:GND #PWR0114
U 1 1 6315C7ED
P 5525 3800
F 0 "#PWR0114" H 5525 3550 50  0001 C CNN
F 1 "GND" H 5530 3627 50  0000 C CNN
F 2 "" H 5525 3800 50  0001 C CNN
F 3 "" H 5525 3800 50  0001 C CNN
	1    5525 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3800 5000 3725
$Comp
L power:+5V #PWR0115
U 1 1 631DDBA4
P 6000 3450
F 0 "#PWR0115" H 6000 3300 50  0001 C CNN
F 1 "+5V" H 6000 3600 50  0000 C CNN
F 2 "" H 6000 3450 50  0001 C CNN
F 3 "" H 6000 3450 50  0001 C CNN
	1    6000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3450 6000 3525
Wire Wire Line
	6000 3525 5925 3525
$Comp
L power:+5V #PWR0113
U 1 1 63236FC2
P 900 1150
F 0 "#PWR0113" H 900 1000 50  0001 C CNN
F 1 "+5V" H 900 1300 50  0000 C CNN
F 2 "" H 900 1150 50  0001 C CNN
F 3 "" H 900 1150 50  0001 C CNN
	1    900  1150
	1    0    0    -1  
$EndComp
Connection ~ 900  1575
Wire Wire Line
	900  1150 900  1575
Text Label 5450 2525 0    50   ~ 0
CH1
Text Label 5450 2625 0    50   ~ 0
CH2
Text Label 5450 2725 0    50   ~ 0
CH3
Wire Wire Line
	5425 2525 6200 2525
Wire Wire Line
	5425 2625 6200 2625
Wire Wire Line
	5425 2725 6200 2725
Wire Wire Line
	7050 2525 7825 2525
Wire Wire Line
	7050 2625 7825 2625
Wire Wire Line
	7050 2725 7825 2725
Wire Wire Line
	7050 2825 7825 2825
Text Label 7075 2525 0    50   ~ 0
LED1
Text Label 7075 2625 0    50   ~ 0
LED2
Text Label 7075 2725 0    50   ~ 0
LED3
Text Label 7075 2825 0    50   ~ 0
LED4
Entry Wire Line
	7925 2425 7825 2525
Entry Wire Line
	7925 2525 7825 2625
Entry Wire Line
	7925 2625 7825 2725
Entry Wire Line
	7925 2725 7825 2825
$Sheet
S 6200 2450 850  1100
U 635D4EBA
F0 "Channel Control" 50
F1 "Channels.sch" 50
F2 "CH1" I L 6200 2525 50 
F3 "CH2" I L 6200 2625 50 
F4 "CH3" I L 6200 2725 50 
F5 "CH4" I L 6200 2825 50 
F6 "LED1" O R 7050 2525 50 
F7 "LED2" O R 7050 2625 50 
F8 "LED3" O R 7050 2725 50 
F9 "LED4" O R 7050 2825 50 
$EndSheet
Wire Bus Line
	8025 1625 9800 1625
Text Label 10025 3400 0    50   ~ 0
LED4
Text Label 10025 3200 0    50   ~ 0
LED3
Text Label 10025 3000 0    50   ~ 0
LED2
Text Label 10025 2800 0    50   ~ 0
LED1
Text Label 10025 3300 0    50   ~ 0
SW4
Text Label 10025 3100 0    50   ~ 0
SW3
Text Label 10025 2900 0    50   ~ 0
SW2
Text Label 10025 2700 0    50   ~ 0
SW1
Wire Wire Line
	10500 3400 10000 3400
Wire Wire Line
	10500 3300 10000 3300
Wire Wire Line
	10500 3200 10000 3200
Wire Wire Line
	10500 3100 10000 3100
Entry Wire Line
	10000 3400 9900 3300
Entry Wire Line
	10000 3300 9900 3200
Entry Wire Line
	10000 3200 9900 3100
Entry Wire Line
	10000 3100 9900 3000
Entry Bus Bus
	9900 2425 9800 2325
Wire Wire Line
	10500 3000 10000 3000
Wire Wire Line
	10500 2900 10000 2900
Wire Wire Line
	10500 2800 10000 2800
Wire Wire Line
	10500 2700 10000 2700
Wire Wire Line
	10500 2600 10000 2600
Entry Wire Line
	10000 3000 9900 2900
Entry Wire Line
	10000 2900 9900 2800
Text Label 10025 2600 0    50   ~ 0
PWR
Entry Wire Line
	10000 2800 9900 2700
Entry Wire Line
	10000 2700 9900 2600
Entry Wire Line
	10000 2600 9900 2500
Connection ~ 10350 2400
Wire Wire Line
	10350 2325 10350 2400
$Comp
L power:+5V #PWR0120
U 1 1 63514BEA
P 10350 2325
F 0 "#PWR0120" H 10350 2175 50  0001 C CNN
F 1 "+5V" H 10350 2465 50  0000 C CNN
F 2 "" H 10350 2325 50  0000 C CNN
F 3 "" H 10350 2325 50  0000 C CNN
	1    10350 2325
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 635034D3
P 10425 3975
F 0 "#PWR0118" H 10425 3725 50  0001 C CNN
F 1 "GND" H 10430 3802 50  0000 C CNN
F 2 "" H 10425 3975 50  0001 C CNN
F 3 "" H 10425 3975 50  0001 C CNN
	1    10425 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 2400 10500 2400
Wire Wire Line
	10500 2500 10425 2500
$Comp
L BulkyMIDI:Input_Panel J6
U 1 1 6340BF35
P 10700 3400
F 0 "J6" H 10718 4625 50  0000 C CNN
F 1 "Input Panel" H 10718 4534 50  0000 C CNN
F 2 "BulkyMIDI-32:Input_Panel" H 10700 3400 50  0001 C CNN
F 3 "~" H 10700 3400 50  0001 C CNN
	1    10700 3400
	1    0    0    -1  
$EndComp
Wire Bus Line
	9800 2325 9800 1625
$Comp
L Device:C_Small C1
U 1 1 641084E6
P 5225 6550
F 0 "C1" H 5317 6596 50  0000 L CNN
F 1 "100nF" H 5317 6505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5225 6550 50  0001 C CNN
F 3 "~" H 5225 6550 50  0001 C CNN
	1    5225 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 641084EC
P 5225 6650
F 0 "#PWR0103" H 5225 6400 50  0001 C CNN
F 1 "GND" H 5230 6477 50  0000 C CNN
F 2 "" H 5225 6650 50  0001 C CNN
F 3 "" H 5225 6650 50  0001 C CNN
	1    5225 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0145
U 1 1 6410FE82
P 5225 6450
F 0 "#PWR0145" H 5225 6300 50  0001 C CNN
F 1 "+5V" H 5225 6600 50  0000 C CNN
F 2 "" H 5225 6450 50  0001 C CNN
F 3 "" H 5225 6450 50  0001 C CNN
	1    5225 6450
	1    0    0    -1  
$EndComp
NoConn ~ 6625 125 
Wire Wire Line
	5425 2825 6200 2825
Text Label 5450 2825 0    50   ~ 0
CH4
Connection ~ 900  2425
Wire Wire Line
	900  4250 900  4325
$Comp
L Device:CP_Small C2
U 1 1 630E7BA6
P 900 4150
F 0 "C2" H 1015 4196 50  0000 L CNN
F 1 "10uF" H 1015 4105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 900 4150 50  0001 C CNN
F 3 "~" H 900 4150 50  0001 C CNN
	1    900  4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 630A876C
P 900 4325
F 0 "#PWR0117" H 900 4075 50  0001 C CNN
F 1 "GND" H 905 4152 50  0000 C CNN
F 2 "" H 900 4325 50  0001 C CNN
F 3 "" H 900 4325 50  0001 C CNN
	1    900  4325
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1875 3850 1875 3775
Connection ~ 1875 4250
Wire Wire Line
	1875 4250 1875 4150
Wire Wire Line
	1875 4325 1875 4250
$Comp
L power:GND #PWR0108
U 1 1 62DDCDEF
P 2575 4325
F 0 "#PWR0108" H 2575 4075 50  0001 C CNN
F 1 "GND" H 2580 4152 50  0000 C CNN
F 2 "" H 2575 4325 50  0001 C CNN
F 3 "" H 2575 4325 50  0001 C CNN
	1    2575 4325
	-1   0    0    -1  
$EndComp
Connection ~ 2575 4250
Wire Wire Line
	2575 4250 2575 4325
Wire Wire Line
	2425 3775 2425 3900
Wire Wire Line
	2575 3775 2425 3775
Wire Wire Line
	2575 3850 2575 3775
Wire Wire Line
	2575 4150 2575 4250
Wire Wire Line
	2425 4100 2425 4250
Wire Wire Line
	2425 4250 2575 4250
$Comp
L Device:R R3
U 1 1 62DDCDE1
P 2575 4000
F 0 "R3" V 2500 3750 50  0000 L CNN
F 1 "100k" V 2575 3925 39  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2505 4000 50  0001 C CNN
F 3 "~" H 2575 4000 50  0001 C CNN
	1    2575 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 62DDCDDB
P 2425 4000
F 0 "C5" V 2325 3750 50  0000 L CNN
F 1 "100nF" V 2325 3950 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2425 4000 50  0001 C CNN
F 3 "~" H 2425 4000 50  0001 C CNN
	1    2425 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 62DD9A69
P 2225 4325
F 0 "#PWR0107" H 2225 4075 50  0001 C CNN
F 1 "GND" H 2230 4152 50  0000 C CNN
F 2 "" H 2225 4325 50  0001 C CNN
F 3 "" H 2225 4325 50  0001 C CNN
	1    2225 4325
	-1   0    0    -1  
$EndComp
Connection ~ 2225 4250
Wire Wire Line
	2225 4250 2225 4325
Wire Wire Line
	2075 3775 2075 3900
Wire Wire Line
	2225 3775 2075 3775
Wire Wire Line
	2225 3850 2225 3775
Wire Wire Line
	2225 4150 2225 4250
Wire Wire Line
	2075 4100 2075 4250
Wire Wire Line
	2075 4250 2225 4250
$Comp
L Device:R R2
U 1 1 62DD9A5B
P 2225 4000
F 0 "R2" V 2150 3750 50  0000 L CNN
F 1 "100k" V 2225 3925 39  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2155 4000 50  0001 C CNN
F 3 "~" H 2225 4000 50  0001 C CNN
	1    2225 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 62DD9A55
P 2075 4000
F 0 "C4" V 1975 3750 50  0000 L CNN
F 1 "100nF" V 1975 3950 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2075 4000 50  0001 C CNN
F 3 "~" H 2075 4000 50  0001 C CNN
	1    2075 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 62DC58C6
P 1875 4325
F 0 "#PWR0105" H 1875 4075 50  0001 C CNN
F 1 "GND" H 1880 4152 50  0000 C CNN
F 2 "" H 1875 4325 50  0001 C CNN
F 3 "" H 1875 4325 50  0001 C CNN
	1    1875 4325
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1725 3775 1725 3900
Wire Wire Line
	1875 3775 1725 3775
Wire Wire Line
	1725 4100 1725 4250
Wire Wire Line
	1725 4250 1875 4250
$Comp
L Device:R R1
U 1 1 62DAAEE3
P 1875 4000
F 0 "R1" V 1800 3750 50  0000 L CNN
F 1 "100k" V 1875 3925 39  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1805 4000 50  0001 C CNN
F 3 "~" H 1875 4000 50  0001 C CNN
	1    1875 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 62DA85D9
P 1725 4000
F 0 "C9" V 1625 3750 50  0000 L CNN
F 1 "100nF" V 1625 3950 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1725 4000 50  0001 C CNN
F 3 "~" H 1725 4000 50  0001 C CNN
	1    1725 4000
	1    0    0    -1  
$EndComp
Connection ~ 2575 3775
Wire Wire Line
	2575 3775 2575 2425
Connection ~ 2225 3775
Wire Wire Line
	2225 2000 2225 3775
Connection ~ 1875 3775
Wire Wire Line
	1875 3775 1875 1575
Wire Wire Line
	2925 1000 2575 1000
Connection ~ 2925 1000
Wire Wire Line
	2925 1200 2925 1000
$Comp
L Device:D D4
U 1 1 62D8D7E4
P 2925 1350
F 0 "D4" H 3025 1250 50  0000 L CNN
F 1 "1N4148" H 2675 1250 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2925 1350 50  0001 C CNN
F 3 "~" H 2925 1350 50  0001 C CNN
	1    2925 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	2775 4100 2775 4250
Wire Wire Line
	2775 3775 2775 3900
$Comp
L power:GND #PWR0109
U 1 1 62DE0E93
P 2925 4325
F 0 "#PWR0109" H 2925 4075 50  0001 C CNN
F 1 "GND" H 2930 4152 50  0000 C CNN
F 2 "" H 2925 4325 50  0001 C CNN
F 3 "" H 2925 4325 50  0001 C CNN
	1    2925 4325
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2925 3775 2775 3775
Connection ~ 2925 3775
Wire Wire Line
	2925 3850 2925 3775
Wire Wire Line
	2925 4250 2925 4325
Wire Wire Line
	2925 4150 2925 4250
Connection ~ 2925 4250
Wire Wire Line
	2775 4250 2925 4250
$Comp
L Device:R R4
U 1 1 62DE0E85
P 2925 4000
F 0 "R4" V 2850 3750 50  0000 L CNN
F 1 "100k" V 2925 3925 39  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2855 4000 50  0001 C CNN
F 3 "~" H 2925 4000 50  0001 C CNN
	1    2925 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 62DE0E7F
P 2775 4000
F 0 "C7" V 2675 3750 50  0000 L CNN
F 1 "100nF" V 2675 3950 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2775 4000 50  0001 C CNN
F 3 "~" H 2775 4000 50  0001 C CNN
	1    2775 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2425 900  2825
Connection ~ 900  2825
Wire Wire Line
	975  2825 900  2825
Wire Wire Line
	2925 2825 2925 3775
Wire Wire Line
	2925 2825 2925 1500
Connection ~ 2925 2825
Wire Wire Line
	2925 2825 4575 2825
Wire Wire Line
	2925 2825 1375 2825
Text Label 1400 2825 0    50   ~ 0
SW4
$Comp
L Switch:SW_Push SW4
U 1 1 63057E26
P 1175 2825
F 0 "SW4" H 1175 3110 50  0000 C CNN
F 1 "CH4" H 1175 3019 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 1175 3025 50  0001 C CNN
F 3 "~" H 1175 3025 50  0001 C CNN
	1    1175 2825
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2925 1000 3825 1000
$Comp
L power:GND #PWR0125
U 1 1 6333431E
P 4500 3100
F 0 "#PWR0125" H 4500 2850 50  0001 C CNN
F 1 "GND" H 4505 2927 50  0000 C CNN
F 2 "" H 4500 3100 50  0001 C CNN
F 3 "" H 4500 3100 50  0001 C CNN
	1    4500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3100 4500 3025
Wire Wire Line
	4575 3025 4500 3025
Wire Wire Line
	4500 3025 4500 2925
Wire Wire Line
	4500 2925 4575 2925
Connection ~ 4500 3025
NoConn ~ 5425 2925
NoConn ~ 5425 3025
Wire Wire Line
	900  2825 900  4050
Wire Wire Line
	10425 2500 10425 3700
Wire Wire Line
	10500 3700 10425 3700
Connection ~ 10425 3700
Wire Wire Line
	10425 3700 10425 3975
Wire Wire Line
	10500 3800 10350 3800
Wire Wire Line
	10350 3800 10350 2400
Wire Bus Line
	8025 1625 8025 2325
Wire Wire Line
	9125 2600 9125 2675
Connection ~ 9125 2600
Wire Wire Line
	9800 2600 9125 2600
Wire Wire Line
	9125 2525 9125 2600
$Comp
L power:GND #PWR02
U 1 1 63D62DD6
P 9125 3050
AR Path="/63D62DD6" Ref="#PWR02"  Part="1" 
AR Path="/635D4EBA/63D62DD6" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 9125 2800 50  0001 C CNN
F 1 "GND" H 9130 2877 50  0000 C CNN
F 2 "" H 9125 3050 50  0001 C CNN
F 3 "" H 9125 3050 50  0001 C CNN
	1    9125 3050
	1    0    0    -1  
$EndComp
Entry Wire Line
	9900 2500 9800 2600
$Comp
L Device:R R28
U 1 1 63D296D9
P 9125 2825
AR Path="/63D296D9" Ref="R28"  Part="1" 
AR Path="/635D4EBA/63D296D9" Ref="R?"  Part="1" 
F 0 "R28" H 9055 2779 50  0000 R CNN
F 1 "470" H 9055 2870 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9055 2825 50  0001 C CNN
F 3 "~" H 9125 2825 50  0001 C CNN
	1    9125 2825
	1    0    0    1   
$EndComp
Text Label 9775 2600 2    50   ~ 0
PWR
$Comp
L power:+5V #PWR01
U 1 1 63D296D2
P 9125 2225
AR Path="/63D296D2" Ref="#PWR01"  Part="1" 
AR Path="/635D4EBA/63D296D2" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 9125 2075 50  0001 C CNN
F 1 "+5V" H 9125 2375 50  0000 C CNN
F 2 "" H 9125 2225 50  0001 C CNN
F 3 "" H 9125 2225 50  0001 C CNN
	1    9125 2225
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D19
U 1 1 63D296CC
P 9125 2375
AR Path="/63D296CC" Ref="D19"  Part="1" 
AR Path="/635D4EBA/63D296CC" Ref="D?"  Part="1" 
F 0 "D19" V 9164 2257 50  0000 R CNN
F 1 "PWR" V 9073 2257 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 9125 2375 50  0001 C CNN
F 3 "~" H 9125 2375 50  0001 C CNN
	1    9125 2375
	0    1    -1   0   
$EndComp
Wire Wire Line
	9125 2975 9125 3050
Wire Bus Line
	7925 2425 7925 2725
Wire Bus Line
	9900 2425 9900 3300
$EndSCHEMATC
