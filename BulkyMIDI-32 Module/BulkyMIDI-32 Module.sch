EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "BulkyMIDI-32 Module"
Date ""
Rev "B"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Based on clumsyMIDI, itself an implemented version of MT-32 PI."
$EndDescr
$Comp
L mounting:Mounting M1
U 1 1 5E3B603D
P 15600 550
F 0 "M1" H 15600 650 50  0001 C CNN
F 1 "Mounting" H 15600 475 50  0001 C CNN
F 2 "mounting:M3" H 15600 550 50  0001 C CNN
F 3 "" H 15600 550 50  0001 C CNN
	1    15600 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 5E3B604F
P 15725 550
F 0 "M2" H 15725 650 50  0001 C CNN
F 1 "Mounting" H 15725 475 50  0001 C CNN
F 2 "mounting:M3" H 15725 550 50  0001 C CNN
F 3 "" H 15725 550 50  0001 C CNN
	1    15725 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 5E3B605A
P 15850 550
F 0 "M3" H 15850 650 50  0001 C CNN
F 1 "Mounting" H 15850 475 50  0001 C CNN
F 2 "mounting:M3" H 15850 550 50  0001 C CNN
F 3 "" H 15850 550 50  0001 C CNN
	1    15850 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 5E3B6065
P 15975 550
F 0 "M4" H 15975 650 50  0001 C CNN
F 1 "Mounting" H 15975 475 50  0001 C CNN
F 2 "mounting:M3" H 15975 550 50  0001 C CNN
F 3 "" H 15975 550 50  0001 C CNN
	1    15975 550 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5E3B6768
P 7875 7775
F 0 "#PWR01" H 7875 7525 50  0001 C CNN
F 1 "GND" H 7875 7625 50  0000 C CNN
F 2 "" H 7875 7775 50  0001 C CNN
F 3 "" H 7875 7775 50  0001 C CNN
	1    7875 7775
	-1   0    0    -1  
$EndComp
$Comp
L I2C_OLED:0.96_I2C_OLED IC1
U 1 1 5E3B718A
P 12975 8350
F 0 "IC1" H 12975 8175 60  0000 C CNN
F 1 "OLED" H 12950 8300 43  0000 C CNN
F 2 "i2c_oled:1.3_I2C_OLED_No_mounting" H 12975 8975 60  0001 C CNN
F 3 "" H 12975 8975 60  0001 C CNN
	1    12975 8350
	1    0    0    -1  
$EndComp
$Comp
L barrel_jack:barrel_9v J1
U 1 1 5E61D3D0
P 2425 7075
F 0 "J1" H 2504 7400 50  0000 C CNN
F 1 "DC IN" H 2504 7309 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 2475 7035 50  0001 C CNN
F 3 "~" H 2475 7035 50  0001 C CNN
	1    2425 7075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E61DE6E
P 3100 7725
F 0 "#PWR0101" H 3100 7475 50  0001 C CNN
F 1 "GND" H 3105 7552 50  0000 C CNN
F 2 "" H 3100 7725 50  0001 C CNN
F 3 "" H 3100 7725 50  0001 C CNN
	1    3100 7725
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5E6B750D
P 3100 6425
F 0 "#PWR0106" H 3100 6275 50  0001 C CNN
F 1 "+5V" H 3100 6575 50  0000 C CNN
F 2 "" H 3100 6425 50  0001 C CNN
F 3 "" H 3100 6425 50  0001 C CNN
	1    3100 6425
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5EE67BD2
P 8150 6900
F 0 "SW2" H 8075 7100 50  0000 C CNN
F 1 "ROM" H 8200 7100 50  0000 L CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 8150 7100 50  0001 C CNN
F 3 "~" H 8150 7100 50  0001 C CNN
	1    8150 6900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5EE6919F
P 8150 7300
F 0 "SW3" H 8075 7475 50  0000 C CNN
F 1 "VOL_DOWN" H 8200 7475 50  0000 L CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 8150 7500 50  0001 C CNN
F 3 "~" H 8150 7500 50  0001 C CNN
	1    8150 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7875 7300 7950 7300
Wire Wire Line
	7875 7300 7875 6900
Wire Wire Line
	7875 6900 7950 6900
Connection ~ 7875 7300
$Comp
L raspberry_pi:Raspberry_Pi_2_3 A1
U 1 1 5EE82FB5
P 2875 3250
F 0 "A1" H 2250 4600 50  0000 C CNN
F 1 "Raspberry PI" H 2250 4525 50  0000 C CNN
F 2 "RPI:Raspberry_Pi_3B_Socketed_THT_FaceDown_MountingHoles" H 2875 3250 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2875 3250 50  0001 C CNN
	1    2875 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2475 4550 2475 4625
Wire Wire Line
	2475 4625 2575 4625
Wire Wire Line
	3175 4625 3175 4550
Wire Wire Line
	3075 4550 3075 4625
Connection ~ 3075 4625
Wire Wire Line
	3075 4625 3175 4625
Wire Wire Line
	2975 4550 2975 4625
Connection ~ 2975 4625
Wire Wire Line
	2975 4625 3075 4625
Wire Wire Line
	2875 4550 2875 4625
Connection ~ 2875 4625
Wire Wire Line
	2875 4625 2975 4625
Wire Wire Line
	2775 4550 2775 4625
Connection ~ 2775 4625
Wire Wire Line
	2775 4625 2875 4625
Wire Wire Line
	2675 4550 2675 4625
Connection ~ 2675 4625
Wire Wire Line
	2675 4625 2775 4625
Wire Wire Line
	2575 4550 2575 4625
Connection ~ 2575 4625
Wire Wire Line
	2575 4625 2675 4625
Wire Wire Line
	3175 4700 3175 4625
Connection ~ 3175 4625
$Comp
L power:GND #PWR05
U 1 1 5EE8D690
P 3175 4700
F 0 "#PWR05" H 3175 4450 50  0001 C CNN
F 1 "GND" H 3180 4527 50  0000 C CNN
F 2 "" H 3175 4700 50  0001 C CNN
F 3 "" H 3175 4700 50  0001 C CNN
	1    3175 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2675 1950 2675 1875
$Comp
L power:+5V #PWR03
U 1 1 5EE96A8C
P 2675 1800
F 0 "#PWR03" H 2675 1650 50  0001 C CNN
F 1 "+5V" H 2675 1950 50  0000 C CNN
F 2 "" H 2675 1800 50  0001 C CNN
F 3 "" H 2675 1800 50  0001 C CNN
	1    2675 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 5EE97F79
P 2975 1800
F 0 "#PWR04" H 2975 1650 50  0001 C CNN
F 1 "+3.3V" H 2990 1973 50  0000 C CNN
F 2 "" H 2975 1800 50  0001 C CNN
F 3 "" H 2975 1800 50  0001 C CNN
	1    2975 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 1875 2975 1950
Wire Wire Line
	8425 6900 8350 6900
Wire Wire Line
	8350 7300 8425 7300
Wire Wire Line
	2000 2850 2075 2850
Wire Wire Line
	3675 2650 3750 2650
Wire Wire Line
	3750 2750 3675 2750
Text GLabel 3750 2650 2    60   Output ~ 0
I2C_SDA
Text GLabel 3750 2750 2    60   Output ~ 0
I2C_SCL
$Comp
L Device:C_Small C1
U 1 1 5F0DF157
P 10700 10250
F 0 "C1" H 10792 10296 50  0000 L CNN
F 1 "100nF" H 10792 10205 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 10700 10250 50  0001 C CNN
F 3 "~" H 10700 10250 50  0001 C CNN
	1    10700 10250
	1    0    0    -1  
$EndComp
Text GLabel 13475 7325 2    60   Input ~ 0
I2C_SDA
Text GLabel 13475 7225 2    60   Input ~ 0
I2C_SCL
$Comp
L I2C_OLED:PowerSelect JP2
U 1 1 5F12F8C1
P 13125 6525
F 0 "JP2" V 13079 6593 50  0000 L CNN
F 1 "P2_VCC" V 13170 6593 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 13125 6525 50  0001 C CNN
F 3 "~" H 13125 6525 50  0001 C CNN
	1    13125 6525
	0    1    1    0   
$EndComp
Wire Wire Line
	13125 6325 13125 6250
Wire Wire Line
	13125 6725 13125 6800
$Comp
L power:GND #PWR0111
U 1 1 5F14A813
P 13125 6800
F 0 "#PWR0111" H 13125 6550 50  0001 C CNN
F 1 "GND" H 13130 6627 50  0000 C CNN
F 2 "" H 13125 6800 50  0001 C CNN
F 3 "" H 13125 6800 50  0001 C CNN
	1    13125 6800
	1    0    0    -1  
$EndComp
$Comp
L I2C_OLED:PowerSelect JP1
U 1 1 5F14C67F
P 12525 6525
F 0 "JP1" V 12571 6593 50  0000 L CNN
F 1 "P1_GND" V 12480 6593 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 12525 6525 50  0001 C CNN
F 3 "~" H 12525 6525 50  0001 C CNN
	1    12525 6525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12525 6325 12525 6250
$Comp
L power:+3.3V #PWR0112
U 1 1 5F14C686
P 12525 6175
F 0 "#PWR0112" H 12525 6025 50  0001 C CNN
F 1 "+3.3V" H 12540 6348 50  0000 C CNN
F 2 "" H 12525 6175 50  0001 C CNN
F 3 "" H 12525 6175 50  0001 C CNN
	1    12525 6175
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12525 6725 12525 6800
$Comp
L power:GND #PWR0113
U 1 1 5F14C68D
P 12525 6800
F 0 "#PWR0113" H 12525 6550 50  0001 C CNN
F 1 "GND" H 12530 6627 50  0000 C CNN
F 2 "" H 12525 6800 50  0001 C CNN
F 3 "" H 12525 6800 50  0001 C CNN
	1    12525 6800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12900 6525 12975 6525
Wire Wire Line
	12675 6525 12750 6525
Wire Wire Line
	12525 6250 13125 6250
Wire Wire Line
	12525 6175 12525 6250
Connection ~ 12525 6250
Wire Wire Line
	13475 7225 13050 7225
Wire Wire Line
	13200 7325 13475 7325
Wire Wire Line
	13050 7725 13050 7900
Wire Wire Line
	13200 7825 13200 7900
Wire Wire Line
	13050 7225 13050 7725
Connection ~ 13050 7725
Wire Wire Line
	13200 7325 13200 7825
Connection ~ 13200 7825
Wire Wire Line
	12750 6525 12750 7900
Wire Wire Line
	12900 6525 12900 7900
Wire Wire Line
	13050 7725 14225 7725
Wire Wire Line
	13200 7825 14225 7825
$Comp
L power:GND #PWR0110
U 1 1 5F4491DA
P 13675 8000
F 0 "#PWR0110" H 13675 7750 50  0001 C CNN
F 1 "GND" H 13680 7827 50  0000 C CNN
F 2 "" H 13675 8000 50  0001 C CNN
F 3 "" H 13675 8000 50  0001 C CNN
	1    13675 8000
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 5F44F08B
P 14150 7550
F 0 "#PWR0114" H 14150 7400 50  0001 C CNN
F 1 "+3.3V" H 14165 7723 50  0000 C CNN
F 2 "" H 14150 7550 50  0001 C CNN
F 3 "" H 14150 7550 50  0001 C CNN
	1    14150 7550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2725 6975 2800 6975
Wire Wire Line
	2725 7175 2800 7175
$Comp
L Device:D D1
U 1 1 5F99E152
P 6950 2250
F 0 "D1" V 6996 2170 50  0000 R CNN
F 1 "1N4148" V 6905 2170 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6950 2250 50  0001 C CNN
F 3 "~" H 6950 2250 50  0001 C CNN
	1    6950 2250
	0    -1   -1   0   
$EndComp
$Comp
L Isolator:H11L1 U2
U 1 1 5F99F896
P 6325 2425
F 0 "U2" H 6200 2100 50  0000 C CNN
F 1 "H11L1M" H 6100 2175 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 6235 2425 50  0001 C CNN
F 3 "" H 6235 2425 50  0001 C CNN
	1    6325 2425
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5F9A901B
P 5725 2850
F 0 "R3" V 5518 2850 50  0000 C CNN
F 1 "1k" V 5609 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5655 2850 50  0001 C CNN
F 3 "~" H 5725 2850 50  0001 C CNN
	1    5725 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5F9A9681
P 6325 3100
F 0 "C3" H 6440 3146 50  0000 L CNN
F 1 "100nF" H 6440 3055 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 6363 2950 50  0001 C CNN
F 3 "~" H 6325 3100 50  0001 C CNN
	1    6325 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6775 2325 6625 2325
Wire Wire Line
	6950 2400 6950 2525
Wire Wire Line
	5925 2050 6325 2050
Wire Wire Line
	6325 2850 6725 2850
$Comp
L power:GND #PWR013
U 1 1 5F9C4355
P 6325 3325
F 0 "#PWR013" H 6325 3075 50  0001 C CNN
F 1 "GND" H 6330 3152 50  0000 C CNN
F 2 "" H 6325 3325 50  0001 C CNN
F 3 "" H 6325 3325 50  0001 C CNN
	1    6325 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	6325 2950 6325 2850
Connection ~ 6325 2850
Wire Wire Line
	5275 2425 6025 2425
Wire Wire Line
	5875 2850 6325 2850
Wire Wire Line
	5575 2850 5275 2850
$Comp
L Device:R R4
U 1 1 5F99E885
P 7525 2525
F 0 "R4" V 7318 2525 50  0000 C CNN
F 1 "220" V 7409 2525 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7455 2525 50  0001 C CNN
F 3 "~" H 7525 2525 50  0001 C CNN
	1    7525 2525
	0    1    1    0   
$EndComp
Wire Wire Line
	7375 2525 6950 2525
Wire Wire Line
	6950 2525 6625 2525
Connection ~ 6950 2525
$Comp
L Device:C C4
U 1 1 5F9F335D
P 12875 3925
F 0 "C4" H 12990 3971 50  0000 L CNN
F 1 "100nF" H 12990 3880 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 12913 3775 50  0001 C CNN
F 3 "~" H 12875 3925 50  0001 C CNN
	1    12875 3925
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C6
U 1 1 5F9F946B
P 3100 7075
F 0 "C6" H 3215 7121 50  0000 L CNN
F 1 "470uF" H 3215 7030 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3100 7075 50  0001 C CNN
F 3 "~" H 3100 7075 50  0001 C CNN
	1    3100 7075
	1    0    0    -1  
$EndComp
Text GLabel 2000 2850 0    50   Output ~ 0
I2S_BCLK
Text GLabel 2000 3050 0    50   Output ~ 0
I2S_LRCLK
$Comp
L Device:CP1 C5
U 1 1 5FACA9C7
P 12425 3925
F 0 "C5" H 12540 3971 50  0000 L CNN
F 1 "100uF" H 12540 3880 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 12425 3925 50  0001 C CNN
F 3 "~" H 12425 3925 50  0001 C CNN
	1    12425 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	12875 4075 12875 4150
$Comp
L power:GND #PWR016
U 1 1 5FADEE25
P 12425 4225
F 0 "#PWR016" H 12425 3975 50  0001 C CNN
F 1 "GND" H 12430 4052 50  0000 C CNN
F 2 "" H 12425 4225 50  0001 C CNN
F 3 "" H 12425 4225 50  0001 C CNN
	1    12425 4225
	1    0    0    -1  
$EndComp
$Comp
L gy-pcm5102:GY-PCM5102 A2
U 1 1 5FAFED20
P 13975 2775
F 0 "A2" H 13075 3375 50  0000 L CNN
F 1 "GY-PCM5102" H 13775 2775 50  0000 L CNN
F 2 "BulkyMIDI-32:GY-PCM5102" H 13275 2675 50  0001 C CNN
F 3 "" H 13275 2675 50  0001 C CNN
	1    13975 2775
	1    0    0    -1  
$EndComp
Text GLabel 12825 2625 0    50   Output ~ 0
I2S_BCLK
Text GLabel 2000 3250 0    50   Output ~ 0
I2S_DATA
Text GLabel 12825 2775 0    50   Output ~ 0
I2S_DATA
Text GLabel 12825 2925 0    50   Output ~ 0
I2S_LRCLK
NoConn ~ 14025 2125
NoConn ~ 13875 2125
NoConn ~ 13725 2125
NoConn ~ 13575 2125
NoConn ~ 13425 2125
$Comp
L 74xx:74HC14 U1
U 1 1 5FB8715B
P 5525 4950
F 0 "U1" H 5525 5267 50  0000 C CNN
F 1 "74HCT14" H 5525 5176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5525 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 5525 4950 50  0001 C CNN
	1    5525 4950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U1
U 2 1 5FB8CA4F
P 6275 4950
F 0 "U1" H 6275 5225 50  0000 C CNN
F 1 "74HCT14" H 6275 5150 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6275 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 6275 4950 50  0001 C CNN
	2    6275 4950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U1
U 3 1 5FB8D580
P 9250 1775
F 0 "U1" H 9250 2050 50  0000 C CNN
F 1 "74HCT14" H 9250 1975 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9250 1775 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9250 1775 50  0001 C CNN
	3    9250 1775
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HC14 U1
U 4 1 5FB8DE88
P 9250 2525
F 0 "U1" H 9250 2800 50  0000 C CNN
F 1 "74HCT14" H 9375 2700 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9250 2525 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9250 2525 50  0001 C CNN
	4    9250 2525
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HC14 U1
U 6 1 5FB904E8
P 9975 10250
F 0 "U1" H 9975 10525 50  0000 C CNN
F 1 "74HCT14" H 9975 10450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9975 10250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9975 10250 50  0001 C CNN
	6    9975 10250
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74HC14 U1
U 7 1 5FB9128B
P 11475 10250
F 0 "U1" V 11108 10250 50  0000 C CNN
F 1 "74HCT14" V 11199 10250 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 11475 10250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 11475 10250 50  0001 C CNN
	7    11475 10250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5FBA783C
P 10700 9600
F 0 "#PWR020" H 10700 9450 50  0001 C CNN
F 1 "+5V" H 10700 9740 50  0000 C CNN
F 2 "" H 10700 9600 50  0000 C CNN
F 3 "" H 10700 9600 50  0000 C CNN
	1    10700 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	11475 10825 11475 10750
Connection ~ 5275 2425
$Comp
L Connector:DIN-5_180degree J2
U 1 1 5FBFBE67
P 7875 4450
F 0 "J2" H 7875 4083 50  0000 C CNN
F 1 "MIDI OUT" H 7875 4174 50  0000 C CNN
F 2 "BulkyMIDI-32:DIN5_MIDI" H 7875 4450 50  0001 C CNN
F 3 "" H 7875 4450 50  0001 C CNN
	1    7875 4450
	-1   0    0    1   
$EndComp
$Comp
L Connector:DIN-5_180degree J5
U 1 1 5FBFCA41
P 10150 3000
F 0 "J5" H 10150 2633 50  0000 C CNN
F 1 "MIDI THRU" H 10150 2724 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Horizontal" H 10150 3000 50  0001 C CNN
F 3 "" H 10150 3000 50  0001 C CNN
	1    10150 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5FC194A6
P 9550 3100
F 0 "R6" V 9343 3100 50  0000 C CNN
F 1 "220" V 9434 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9480 3100 50  0001 C CNN
F 3 "~" H 9550 3100 50  0001 C CNN
	1    9550 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 5FC2F26A
P 10875 2650
F 0 "#PWR019" H 10875 2500 50  0001 C CNN
F 1 "+5V" H 10875 2790 50  0000 C CNN
F 2 "" H 10875 2650 50  0000 C CNN
F 3 "" H 10875 2650 50  0000 C CNN
	1    10875 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5FC30A93
P 10875 2875
F 0 "R5" H 10800 2925 50  0000 R CNN
F 1 "220" H 10825 2850 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10805 2875 50  0001 C CNN
F 3 "~" H 10875 2875 50  0001 C CNN
	1    10875 2875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5FC5484B
P 10150 3300
F 0 "#PWR021" H 10150 3050 50  0001 C CNN
F 1 "GND" H 10155 3127 50  0000 C CNN
F 2 "" H 10150 3300 50  0001 C CNN
F 3 "" H 10150 3300 50  0001 C CNN
	1    10150 3300
	1    0    0    -1  
$EndComp
NoConn ~ 10450 3000
$Comp
L power:+5V #PWR0119
U 1 1 5FD00C6D
P 8525 4125
F 0 "#PWR0119" H 8525 3975 50  0001 C CNN
F 1 "+5V" H 8525 4265 50  0000 C CNN
F 2 "" H 8525 4125 50  0000 C CNN
F 3 "" H 8525 4125 50  0000 C CNN
	1    8525 4125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FD00C73
P 8525 4325
F 0 "R2" H 8450 4375 50  0000 R CNN
F 1 "220" H 8475 4300 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8455 4325 50  0001 C CNN
F 3 "~" H 8525 4325 50  0001 C CNN
	1    8525 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	8525 4125 8525 4175
$Comp
L power:GND #PWR012
U 1 1 5FD12B0A
P 7875 4925
F 0 "#PWR012" H 7875 4675 50  0001 C CNN
F 1 "GND" H 7880 4752 50  0000 C CNN
F 2 "" H 7875 4925 50  0001 C CNN
F 3 "" H 7875 4925 50  0001 C CNN
	1    7875 4925
	1    0    0    -1  
$EndComp
Text GLabel 5100 4950 0    50   Input ~ 0
PI_TX
Wire Wire Line
	5100 4950 5225 4950
$Comp
L Device:R R1
U 1 1 5FD9ADE3
P 6825 4950
F 0 "R1" V 6650 4950 50  0000 C CNN
F 1 "220" V 6725 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6755 4950 50  0001 C CNN
F 3 "~" H 6825 4950 50  0001 C CNN
	1    6825 4950
	0    1    1    0   
$EndComp
Text Notes 4725 3750 0    50   ~ 0
MIDI Out (optional)
Text Notes 8900 1375 0    50   ~ 0
MIDI THRU (optional)
NoConn ~ 8175 4450
NoConn ~ 6650 100 
NoConn ~ 7575 4450
Wire Wire Line
	7875 4750 7875 4925
NoConn ~ 9850 3000
Wire Wire Line
	6775 1925 6775 2325
Wire Wire Line
	6950 1925 6950 2100
Connection ~ 6950 1925
Wire Wire Line
	6950 1925 6775 1925
NoConn ~ 7875 1825
NoConn ~ 8475 1825
NoConn ~ 8175 2125
Text GLabel 2000 2350 0    50   Output ~ 0
PI_TX
Wire Wire Line
	2000 2350 2075 2350
Text GLabel 2000 2450 0    50   Input ~ 0
PI_RX
Wire Wire Line
	2000 2450 2075 2450
Text GLabel 5075 2425 0    50   Output ~ 0
PI_RX
Wire Wire Line
	2000 3250 2075 3250
Wire Wire Line
	2000 3050 2075 3050
Wire Wire Line
	2675 1875 2775 1875
Wire Wire Line
	2775 1875 2775 1950
Wire Wire Line
	2975 1875 3075 1875
Wire Wire Line
	3075 1875 3075 1950
Wire Wire Line
	2675 1800 2675 1875
Connection ~ 2675 1875
Wire Wire Line
	2975 1800 2975 1875
Connection ~ 2975 1875
$Comp
L power:GND #PWR0103
U 1 1 6231CF82
P 11475 10900
F 0 "#PWR0103" H 11475 10650 50  0001 C CNN
F 1 "GND" H 11480 10727 50  0000 C CNN
F 2 "" H 11475 10900 50  0001 C CNN
F 3 "" H 11475 10900 50  0001 C CNN
	1    11475 10900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 10350 10700 10825
Wire Wire Line
	10700 10825 11475 10825
Wire Wire Line
	10700 9675 10700 10150
Wire Wire Line
	11475 9675 10700 9675
Wire Wire Line
	11475 9675 11475 9750
Wire Wire Line
	10700 9600 10700 9675
Connection ~ 10700 9675
NoConn ~ 2075 2650
NoConn ~ 2075 3150
NoConn ~ 2075 3650
NoConn ~ 2075 3750
NoConn ~ 2075 3850
NoConn ~ 3675 4050
NoConn ~ 3675 3950
NoConn ~ 3675 3750
NoConn ~ 3675 3650
NoConn ~ 3675 3550
NoConn ~ 3675 3450
NoConn ~ 3675 3350
NoConn ~ 3675 3150
NoConn ~ 3675 3050
NoConn ~ 3675 2450
NoConn ~ 3675 2350
Wire Wire Line
	2725 7075 2800 7075
Wire Wire Line
	2800 7075 2800 7175
Connection ~ 2800 7175
Wire Wire Line
	3100 6425 3100 6500
Wire Wire Line
	3100 6500 2800 6500
Connection ~ 3100 6500
Wire Wire Line
	2800 6500 2800 6975
Wire Wire Line
	3100 6500 3100 6925
Wire Wire Line
	3100 7650 2800 7650
Connection ~ 3100 7650
Wire Wire Line
	3100 7650 3100 7725
Wire Wire Line
	2800 7175 2800 7650
Wire Wire Line
	3100 7225 3100 7650
Wire Wire Line
	12825 2625 12975 2625
Wire Wire Line
	12825 2775 12975 2775
Wire Wire Line
	12825 2925 12975 2925
$Comp
L power:+5V #PWR0104
U 1 1 628EF3E5
P 12425 3625
F 0 "#PWR0104" H 12425 3475 50  0001 C CNN
F 1 "+5V" H 12425 3775 50  0000 C CNN
F 2 "" H 12425 3625 50  0001 C CNN
F 3 "" H 12425 3625 50  0001 C CNN
	1    12425 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	12425 3625 12425 3700
Wire Wire Line
	12875 3225 12875 3700
Wire Wire Line
	12425 3700 12875 3700
Connection ~ 12425 3700
Wire Wire Line
	12425 3700 12425 3775
Connection ~ 12875 3700
Wire Wire Line
	12875 3700 12875 3775
Wire Wire Line
	12875 3225 12975 3225
Connection ~ 12425 4150
Wire Wire Line
	12425 4150 12425 4075
Wire Wire Line
	12425 4150 12875 4150
Wire Wire Line
	12425 4150 12425 4225
Wire Wire Line
	11975 4150 11975 3075
Connection ~ 11975 3075
Wire Wire Line
	11975 3075 11975 2475
Wire Wire Line
	11975 2475 12975 2475
Wire Wire Line
	11975 3075 12975 3075
Wire Wire Line
	11975 4150 12425 4150
Wire Wire Line
	6325 3325 6325 3250
Wire Notes Line
	8700 1275 8700 3550
Wire Notes Line
	8700 3550 4700 3550
Wire Notes Line
	4700 3550 4700 1275
Wire Notes Line
	4700 1275 8700 1275
Wire Wire Line
	5075 2425 5275 2425
Wire Notes Line
	8875 1275 11175 1275
Wire Notes Line
	11175 1275 11175 3550
Wire Notes Line
	11175 3550 8875 3550
Wire Notes Line
	8875 3550 8875 1275
Wire Notes Line
	4700 3650 8700 3650
Wire Notes Line
	8700 3650 8700 5175
Wire Notes Line
	8700 5175 4700 5175
Wire Notes Line
	4700 5175 4700 3650
$Comp
L power:GND #PWR0105
U 1 1 62BF4005
P 5925 2125
F 0 "#PWR0105" H 5925 1875 50  0001 C CNN
F 1 "GND" H 5930 1952 50  0000 C CNN
F 2 "" H 5925 2125 50  0001 C CNN
F 3 "" H 5925 2125 50  0001 C CNN
	1    5925 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 2125 5925 2050
$Comp
L power:+3.3V #PWR0107
U 1 1 62C086C8
P 6725 2800
F 0 "#PWR0107" H 6725 2650 50  0001 C CNN
F 1 "+3.3V" H 6740 2973 50  0000 C CNN
F 2 "" H 6725 2800 50  0001 C CNN
F 3 "" H 6725 2800 50  0001 C CNN
	1    6725 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6725 2800 6725 2850
Wire Wire Line
	5275 2425 5275 2850
Wire Wire Line
	6325 2725 6325 2850
Wire Wire Line
	8175 4550 8525 4550
Wire Wire Line
	8525 4550 8525 4475
Wire Wire Line
	10875 3025 10875 3100
Wire Wire Line
	10875 2650 10875 2725
Text GLabel 8425 6900 2    50   Output ~ 0
SW_ROM
Text GLabel 8425 7300 2    50   Output ~ 0
SW_DOWN
Text GLabel 2000 2750 0    50   Input ~ 0
SW_SYNTH
Text GLabel 2000 3950 0    50   Input ~ 0
SW_ROM
Text GLabel 2000 3550 0    50   Input ~ 0
SW_UP
Text GLabel 2000 3450 0    50   Input ~ 0
SW_DOWN
Wire Wire Line
	2075 3950 2000 3950
Wire Wire Line
	2000 3450 2075 3450
Wire Wire Line
	2075 3550 2000 3550
Wire Wire Line
	2000 2750 2075 2750
Text GLabel 3750 2950 2    50   Input ~ 0
SW_ENC
Wire Wire Line
	3675 2950 3750 2950
Wire Wire Line
	6325 2050 6325 2125
Text Notes 4725 1375 0    50   ~ 0
MIDI IN (optional)
$Comp
L BulkyMIDI:Serial_Adapter J6
U 1 1 62DE97DB
P 10200 4400
F 0 "J6" H 10150 4700 50  0000 L CNN
F 1 "Serial" H 10075 4625 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 10200 4400 50  0001 C CNN
F 3 "~" H 10200 4400 50  0001 C CNN
	1    10200 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 62E0E2AF
P 9925 4225
F 0 "#PWR0108" H 9925 4075 50  0001 C CNN
F 1 "+3.3V" H 9940 4398 50  0000 C CNN
F 2 "" H 9925 4225 50  0001 C CNN
F 3 "" H 9925 4225 50  0001 C CNN
	1    9925 4225
	1    0    0    -1  
$EndComp
Wire Wire Line
	9925 4225 9925 4300
Wire Wire Line
	9925 4300 10000 4300
Wire Wire Line
	10000 4600 9925 4600
Wire Wire Line
	9925 4600 9925 4675
$Comp
L power:GND #PWR0109
U 1 1 62E25E97
P 9925 4675
F 0 "#PWR0109" H 9925 4425 50  0001 C CNN
F 1 "GND" H 9930 4502 50  0000 C CNN
F 2 "" H 9925 4675 50  0001 C CNN
F 3 "" H 9925 4675 50  0001 C CNN
	1    9925 4675
	1    0    0    -1  
$EndComp
Text GLabel 9925 4400 0    50   Output ~ 0
PI_RX
Wire Wire Line
	9925 4400 10000 4400
Text GLabel 9925 4500 0    50   Input ~ 0
PI_TX
Wire Wire Line
	9925 4500 10000 4500
Wire Notes Line
	8875 3650 11175 3650
Wire Notes Line
	11175 3650 11175 5175
Wire Notes Line
	11175 5175 8875 5175
Wire Notes Line
	8875 5175 8875 3650
Text Notes 8900 3750 0    50   ~ 0
RS-232 or TTL Serial USB adapter (optional)
Wire Wire Line
	13675 7925 13675 8000
Wire Wire Line
	14225 7625 14150 7625
Wire Wire Line
	14150 7625 14150 7550
Text GLabel 14225 8225 0    50   Input ~ 0
SW_SYNTH
Text GLabel 14225 8425 0    50   Input ~ 0
SW_UP
Wire Wire Line
	13675 7925 14225 7925
$Comp
L BulkyMIDI:Conn_Faceplate J4
U 1 1 5F3B6F1D
P 14425 8025
F 0 "J4" H 14375 8675 50  0000 L CNN
F 1 "Faceplate" H 14375 8600 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 14425 8025 50  0001 C CNN
F 3 "~" H 14425 8025 50  0001 C CNN
	1    14425 8025
	1    0    0    -1  
$EndComp
Text GLabel 14225 8325 0    50   Input ~ 0
SW_ROM
Text GLabel 14225 8525 0    50   Input ~ 0
SW_DOWN
Text GLabel 14225 8125 0    50   Input ~ 0
SW_ENC
$Comp
L Connector:DIN-5_180degree J3
U 1 1 5F99CA21
P 8175 1825
F 0 "J3" H 8175 1458 50  0000 C CNN
F 1 "MIDI IN" H 8175 1549 50  0000 C CNN
F 2 "BulkyMIDI-32:DIN5_MIDI" H 8175 1825 50  0001 C CNN
F 3 "" H 8175 1825 50  0001 C CNN
	1    8175 1825
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 1925 8475 1925
Wire Wire Line
	7675 2525 8550 2525
Wire Wire Line
	7875 1925 6950 1925
Wire Wire Line
	8550 1925 8550 2525
Wire Wire Line
	5275 1400 5275 2425
Text GLabel 9025 7925 2    50   Output ~ 0
SW_UP
Wire Wire Line
	7875 7700 7875 7300
Wire Wire Line
	7875 7700 7875 7775
Connection ~ 7875 7700
Wire Wire Line
	7875 7700 7950 7700
$Comp
L Switch:SW_Push SW4
U 1 1 5EE6A509
P 8150 7700
F 0 "SW4" H 8075 7875 50  0000 C CNN
F 1 "VOL_UP" H 8200 7875 50  0000 L CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 8150 7900 50  0001 C CNN
F 3 "~" H 8150 7900 50  0001 C CNN
	1    8150 7700
	1    0    0    -1  
$EndComp
Connection ~ 7875 6900
Wire Wire Line
	7875 6900 7875 6500
Wire Wire Line
	7875 6500 7950 6500
Wire Wire Line
	8425 6500 8350 6500
Text GLabel 8425 6500 2    50   Output ~ 0
SW_SYNTH
$Comp
L Switch:SW_Push SW1
U 1 1 5EE65CEA
P 8150 6500
F 0 "SW1" H 8075 6675 50  0000 C CNN
F 1 "SYNTH" H 8200 6675 50  0000 L CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 8150 6700 50  0001 C CNN
F 3 "~" H 8150 6700 50  0001 C CNN
	1    8150 6500
	1    0    0    -1  
$EndComp
Wire Notes Line
	11350 5175 11350 1275
Wire Notes Line
	11350 1275 15375 1275
Wire Notes Line
	15375 1275 15375 5175
Wire Notes Line
	15375 5175 11350 5175
Wire Notes Line
	4525 1275 4525 5175
Wire Notes Line
	4525 5175 1050 5175
Wire Notes Line
	1050 5175 1050 1275
Wire Notes Line
	1050 1275 4525 1275
$Comp
L BulkyMIDI:DC_5V SYM1
U 1 1 623726BF
P 2500 6575
F 0 "SYM1" H 2500 6796 50  0001 C CNN
F 1 "DC_5V" H 2500 6704 50  0000 C CNN
F 2 "BulkyMIDI-32:PWR_Specification" H 2375 6675 50  0001 C CNN
F 3 "" H 2375 6675 50  0001 C CNN
	1    2500 6575
	1    0    0    -1  
$EndComp
Wire Notes Line
	15375 5350 15375 8850
Wire Notes Line
	1050 8850 1050 5350
Wire Notes Line
	4525 5350 4525 8850
Wire Notes Line
	4700 5350 4700 8850
Wire Notes Line
	7175 5350 7175 8850
Wire Notes Line
	9475 5350 9475 8850
Wire Notes Line
	9650 5350 9650 8850
Wire Notes Line
	7175 8850 9475 8850
Wire Notes Line
	9475 5350 7175 5350
Wire Notes Line
	4525 5350 1050 5350
Wire Notes Line
	1050 8850 4525 8850
Text Notes 7200 5450 0    50   ~ 0
Control scheme ("simple_buttons")
Text Notes 1075 5450 0    50   ~ 0
Power section
Text Notes 9675 5450 0    50   ~ 0
OLED display and faceplate connector
Text Notes 9675 5725 0    50   ~ 0
OLED displays have unfortunately been produced with varying pinouts, we therefore need to add solder\nbridges to specify what the pins are used for. Faceplate connector includes signals for both screen\nand control scheme pins, just in case a specific faceplate reimplements them in some way.
Text Notes 7175 5800 0    50   ~ 0
Volume UP/DOWN is not needed when rotary encoder is\nused, some versions of faceplates may include SYNTH and\nVOL_UP and the duplicated switch should not be installed.\nJP3 is used to have the ROM switch replace VOL_UP.
$Comp
L Jumper:SolderJumper_3_Open JP3
U 1 1 62208552
P 8750 7925
F 0 "JP3" H 8425 7700 50  0000 L CNN
F 1 "SW4_SEL" H 8325 7775 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8750 7925 50  0001 C CNN
F 3 "~" H 8750 7925 50  0001 C CNN
	1    8750 7925
	-1   0    0    1   
$EndComp
Text GLabel 9025 8075 2    50   Output ~ 0
SW_ROM
Wire Wire Line
	8550 7925 8475 7925
Wire Wire Line
	8475 7925 8475 8075
Wire Wire Line
	8950 7925 9025 7925
Wire Wire Line
	8475 8075 9025 8075
Wire Wire Line
	8750 7700 8750 7775
Wire Wire Line
	8350 7700 8750 7700
$Comp
L 74xx:74HC14 U1
U 5 1 5FB8F7D6
P 10425 10250
F 0 "U1" H 10425 10525 50  0000 C CNN
F 1 "74HCT14" H 10425 10450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10425 10250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10425 10250 50  0001 C CNN
	5    10425 10250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5825 4950 5900 4950
Wire Wire Line
	5900 4950 5900 4475
Wire Wire Line
	5900 4475 5975 4475
Wire Wire Line
	5975 4950 5900 4950
Connection ~ 5900 4950
Wire Wire Line
	11475 10900 11475 10825
Connection ~ 11475 10825
Wire Wire Line
	6575 4950 6675 4950
Wire Wire Line
	6975 4950 7475 4950
Wire Wire Line
	7475 4950 7475 4550
Wire Wire Line
	7475 4550 7575 4550
$Comp
L BulkyMIDI:Conn_Extras J7
U 1 1 62376277
P 6650 10425
F 0 "J7" H 6700 11050 50  0000 C CNN
F 1 "Conn_Extras" H 6700 10959 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x10_P2.54mm_Vertical" H 6650 10425 50  0001 C CNN
F 3 "~" H 6650 10425 50  0001 C CNN
	1    6650 10425
	1    0    0    -1  
$EndComp
Text GLabel 13600 1850 0    50   Output ~ 0
A_LEFT
Text GLabel 13600 1750 0    50   Output ~ 0
A_GND
Text GLabel 13600 1650 0    50   Output ~ 0
A_RIGHT
$Comp
L power:+5V #PWR0102
U 1 1 623DF6A7
P 7350 9950
F 0 "#PWR0102" H 7350 9800 50  0001 C CNN
F 1 "+5V" H 7350 10100 50  0000 C CNN
F 2 "" H 7350 9950 50  0001 C CNN
F 3 "" H 7350 9950 50  0001 C CNN
	1    7350 9950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 9950 6050 10025
Wire Wire Line
	6050 10025 6125 10025
Wire Wire Line
	7350 9950 7350 10025
Wire Wire Line
	7275 10025 7350 10025
$Comp
L power:+3.3V #PWR0115
U 1 1 6242ADA1
P 6050 9950
F 0 "#PWR0115" H 6050 9800 50  0001 C CNN
F 1 "+3.3V" H 6065 10123 50  0000 C CNN
F 2 "" H 6050 9950 50  0001 C CNN
F 3 "" H 6050 9950 50  0001 C CNN
	1    6050 9950
	-1   0    0    -1  
$EndComp
Text GLabel 6050 10525 0    50   Input ~ 0
A_LEFT
Text GLabel 7350 10625 2    50   Input ~ 0
A_GND
Text GLabel 6050 10425 0    50   Input ~ 0
A_RIGHT
Wire Wire Line
	6050 10425 6125 10425
Text GLabel 6050 10625 0    50   Input ~ 0
A_GND
Wire Wire Line
	6050 10625 6125 10625
Wire Wire Line
	6050 10525 6125 10525
Wire Wire Line
	6125 10125 5450 10125
Wire Wire Line
	5450 10125 5450 10225
$Comp
L power:GND #PWR0116
U 1 1 62487A35
P 5450 10225
F 0 "#PWR0116" H 5450 9975 50  0001 C CNN
F 1 "GND" H 5455 10052 50  0000 C CNN
F 2 "" H 5450 10225 50  0001 C CNN
F 3 "" H 5450 10225 50  0001 C CNN
	1    5450 10225
	1    0    0    -1  
$EndComp
Wire Wire Line
	7275 10125 7950 10125
Wire Wire Line
	7950 10125 7950 10225
$Comp
L power:GND #PWR0117
U 1 1 62492E5B
P 7950 10225
F 0 "#PWR0117" H 7950 9975 50  0001 C CNN
F 1 "GND" H 7955 10052 50  0000 C CNN
F 2 "" H 7950 10225 50  0001 C CNN
F 3 "" H 7950 10225 50  0001 C CNN
	1    7950 10225
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7350 10625 7275 10625
Wire Wire Line
	7275 10525 7350 10525
Wire Wire Line
	7350 10425 7275 10425
Text GLabel 9400 2150 2    50   Output ~ 0
MIDI_THRUn
Wire Wire Line
	10450 3100 10875 3100
Wire Wire Line
	9250 1400 9250 1475
Wire Wire Line
	9850 3100 9700 3100
Wire Wire Line
	9400 3100 9250 3100
Wire Wire Line
	9250 3100 9250 2825
Wire Wire Line
	5275 1400 9250 1400
Text GLabel 7350 10825 2    50   Output ~ 0
PI_RX
Wire Wire Line
	7350 10925 7275 10925
Text GLabel 7350 10925 2    50   Input ~ 0
PI_TX
Wire Wire Line
	7350 10825 7275 10825
Text GLabel 6050 10925 0    50   Output ~ 0
SW_ENC
Text GLabel 6050 10825 0    50   Output ~ 0
SW_UP
Text GLabel 6050 10725 0    50   Output ~ 0
SW_DOWN
Wire Wire Line
	6050 10725 6125 10725
Wire Wire Line
	6125 10825 6050 10825
Wire Wire Line
	6050 10925 6125 10925
Text GLabel 5975 4475 2    50   Output ~ 0
MIDI_OUTn
Text GLabel 7350 10425 2    50   Input ~ 0
MIDI_OUTn
NoConn ~ 9975 9950
NoConn ~ 10425 9950
Wire Wire Line
	10425 10550 10425 10825
Wire Wire Line
	10425 10825 10700 10825
Connection ~ 10700 10825
Wire Wire Line
	9975 10550 9975 10825
Wire Wire Line
	9975 10825 10425 10825
Connection ~ 10425 10825
Wire Wire Line
	9250 2075 9250 2150
Wire Wire Line
	9400 2150 9250 2150
Connection ~ 9250 2150
Wire Wire Line
	9250 2150 9250 2225
Text GLabel 7350 10525 2    50   Input ~ 0
MIDI_THRUn
Wire Notes Line
	8700 9025 4700 9025
Text Notes 4725 9125 0    50   ~ 0
Connector for optional extras:
Wire Notes Line
	8700 9025 8700 11150
Wire Notes Line
	8700 11150 4700 11150
Wire Notes Line
	4700 11150 4700 9025
Text Notes 4725 9400 0    50   ~ 0
Optional support for the extras board, duplicating most of the connectors not included on the\nmain board. Includes RS232 as additional MIDI ports (note that these must be inverted in a \nseparate stage).
$Comp
L Jumper:SolderJumper_2_Bridged JP4
U 1 1 62D4CD43
P 13925 1650
F 0 "JP4" H 14125 1700 50  0000 C CNN
F 1 "R" H 13750 1700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 13925 1650 50  0001 C CNN
F 3 "~" H 13925 1650 50  0001 C CNN
	1    13925 1650
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP5
U 1 1 62D70E02
P 13925 1750
F 0 "JP5" H 14125 1800 50  0000 C CNN
F 1 "G" H 13750 1800 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 13925 1750 50  0001 C CNN
F 3 "~" H 13925 1750 50  0001 C CNN
	1    13925 1750
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP6
U 1 1 62D7C338
P 13925 1850
F 0 "JP6" H 14125 1900 50  0000 C CNN
F 1 "L" H 13750 1900 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 13925 1850 50  0001 C CNN
F 3 "~" H 13925 1850 50  0001 C CNN
	1    13925 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	13600 1650 13775 1650
Wire Wire Line
	13600 1750 13775 1750
Wire Wire Line
	13600 1850 13775 1850
Wire Wire Line
	14175 1750 14075 1750
Wire Wire Line
	14175 1750 14475 1750
Connection ~ 14175 1750
Wire Wire Line
	14175 1750 14175 2125
Wire Wire Line
	14475 1750 14475 2125
Wire Wire Line
	14325 1650 14075 1650
Wire Wire Line
	14325 1650 14325 2125
Wire Wire Line
	14625 1850 14075 1850
Wire Wire Line
	14625 1850 14625 2125
$Comp
L BulkyMIDI:Module_Panel J8
U 1 1 62DF1416
P 10825 7525
F 0 "J8" H 10925 8725 50  0000 C CNN
F 1 "Module_Panel" H 10925 8650 50  0000 C CNN
F 2 "BulkyMIDI-32:Module_Panel" H 10825 7525 50  0001 C CNN
F 3 "~" H 10825 7525 50  0001 C CNN
	1    10825 7525
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6225 7950 6225 7625
$Comp
L power:GND #PWR06
U 1 1 62F29FB2
P 6225 7950
F 0 "#PWR06" H 6225 7700 50  0001 C CNN
F 1 "GND" H 6225 7800 50  0000 C CNN
F 2 "" H 6225 7950 50  0001 C CNN
F 3 "" H 6225 7950 50  0001 C CNN
	1    6225 7950
	-1   0    0    -1  
$EndComp
Text GLabel 5950 8150 3    50   Output ~ 0
SW_DOWN
Text GLabel 5850 8150 3    50   Output ~ 0
SW_UP
$Comp
L power:+3.3V #PWR02
U 1 1 62F0DAFE
P 6100 7175
F 0 "#PWR02" H 6100 7025 50  0001 C CNN
F 1 "+3.3V" H 6115 7348 50  0000 C CNN
F 2 "" H 6100 7175 50  0001 C CNN
F 3 "" H 6100 7175 50  0001 C CNN
	1    6100 7175
	1    0    0    -1  
$EndComp
Text GLabel 5750 8150 3    50   Output ~ 0
SW_ENC
$Comp
L BulkyMIDI:KY-040 ENC1
U 1 1 62EDD8FE
P 5850 7575
F 0 "ENC1" H 5550 8000 50  0000 L CNN
F 1 "KY-040" H 5550 7925 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Horizontal" H 6000 7465 50  0001 C CNN
F 3 "~" H 5850 7365 50  0001 C CNN
	1    5850 7575
	1    0    0    -1  
$EndComp
Text Notes 4725 5450 0    50   ~ 0
Control scheme ("simple_encoder")
Text Notes 4725 5975 0    50   ~ 0
5-pin connector for connecting up a rotary encoder such\nas the KY-040, note that we'll still need the SYNTH/ROM\nbuttons from the "simple_buttons" control scheme as\nwell. Currently the board does not have any proper\nmethods for mounting it, unless you're mounting the\nwhole thing in a separate case.
Wire Notes Line
	7000 5350 4700 5350
Wire Notes Line
	7000 8850 4700 8850
Wire Notes Line
	7000 5350 7000 8850
Wire Wire Line
	11175 6525 11175 6450
Connection ~ 11175 6525
$Comp
L power:+3.3V #PWR0118
U 1 1 62F4338D
P 11175 6450
F 0 "#PWR0118" H 11175 6300 50  0001 C CNN
F 1 "+3.3V" H 11190 6623 50  0000 C CNN
F 2 "" H 11175 6450 50  0001 C CNN
F 3 "" H 11175 6450 50  0001 C CNN
	1    11175 6450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11100 6625 11025 6625
Wire Wire Line
	11025 6525 11175 6525
Text GLabel 11250 7125 2    50   Input ~ 0
SW_SYNTH
Text GLabel 11250 7325 2    50   Input ~ 0
SW_UP
Text GLabel 11250 7225 2    50   Input ~ 0
SW_ROM
Text GLabel 11250 7425 2    50   Input ~ 0
SW_DOWN
Text GLabel 11250 7025 2    50   Input ~ 0
SW_ENC
Wire Wire Line
	11250 7025 11025 7025
Wire Wire Line
	11025 7125 11250 7125
Wire Wire Line
	11025 7225 11250 7225
Wire Wire Line
	11025 7325 11250 7325
Wire Wire Line
	11025 7425 11250 7425
Text GLabel 11250 6825 2    60   Input ~ 0
I2C_SDA
Text GLabel 11250 6725 2    60   Input ~ 0
I2C_SCL
Wire Wire Line
	11250 6725 11025 6725
Wire Wire Line
	11025 6825 11250 6825
Wire Wire Line
	11025 7525 11100 7525
Wire Wire Line
	11100 7525 11100 6625
Wire Wire Line
	11025 7625 11175 7625
Wire Wire Line
	11175 7625 11175 6525
$Comp
L power:GND #PWR?
U 1 1 630E6531
P 11100 7725
F 0 "#PWR?" H 11100 7475 50  0001 C CNN
F 1 "GND" H 11105 7552 50  0000 C CNN
F 2 "" H 11100 7725 50  0001 C CNN
F 3 "" H 11100 7725 50  0001 C CNN
	1    11100 7725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11100 7725 11100 7525
Connection ~ 11100 7525
Wire Notes Line
	9650 5350 15375 5350
Wire Notes Line
	9650 8850 15375 8850
$EndSCHEMATC
