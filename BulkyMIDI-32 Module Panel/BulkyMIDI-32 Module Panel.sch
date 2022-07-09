EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Module (Panel)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Front panel for the main module, designed for slotting into it."
$EndDescr
$Comp
L mounting:Mounting_Pin M1
U 1 1 6282631C
P 10725 600
F 0 "M1" H 10725 700 50  0001 C CNN
F 1 "Mounting_Pin" H 10725 525 50  0001 C CNN
F 2 "mounting:M3_pin" H 10725 600 50  0001 C CNN
F 3 "~" H 10725 600 50  0001 C CNN
	1    10725 600 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M2
U 1 1 62826824
P 10850 600
F 0 "M2" H 10850 700 50  0001 C CNN
F 1 "Mounting_Pin" H 10850 525 50  0001 C CNN
F 2 "mounting:M3_pin" H 10850 600 50  0001 C CNN
F 3 "~" H 10850 600 50  0001 C CNN
	1    10850 600 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M3
U 1 1 62826D8F
P 10975 600
F 0 "M3" H 10975 700 50  0001 C CNN
F 1 "Mounting_Pin" H 10975 525 50  0001 C CNN
F 2 "mounting:M3_pin" H 10975 600 50  0001 C CNN
F 3 "~" H 10975 600 50  0001 C CNN
	1    10975 600 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M4
U 1 1 62827110
P 11100 600
F 0 "M4" H 11100 700 50  0001 C CNN
F 1 "Mounting_Pin" H 11100 525 50  0001 C CNN
F 2 "mounting:M3_pin" H 11100 600 50  0001 C CNN
F 3 "~" H 11100 600 50  0001 C CNN
	1    11100 600 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 6282AADA
P 11100 900
F 0 "#PWR0111" H 11100 650 50  0001 C CNN
F 1 "GND" H 11105 727 50  0000 C CNN
F 2 "" H 11100 900 50  0001 C CNN
F 3 "" H 11100 900 50  0001 C CNN
	1    11100 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10725 750  10725 825 
Wire Wire Line
	10725 825  10850 825 
Wire Wire Line
	11100 825  11100 750 
Wire Wire Line
	10850 750  10850 825 
Connection ~ 10850 825 
Wire Wire Line
	10850 825  10975 825 
Wire Wire Line
	10975 750  10975 825 
Connection ~ 10975 825 
Wire Wire Line
	10975 825  11100 825 
Wire Wire Line
	11100 825  11100 900 
Connection ~ 11100 825 
Entry Wire Line
	5275 2100 5375 2200
Text Label 5250 2100 2    50   ~ 0
PWR
Wire Wire Line
	5275 2100 4775 2100
$Comp
L power:GND #PWR02
U 1 1 62E74547
P 4575 5000
F 0 "#PWR02" H 4575 4750 50  0001 C CNN
F 1 "GND" H 4580 4827 50  0000 C CNN
F 2 "" H 4575 5000 50  0001 C CNN
F 3 "" H 4575 5000 50  0001 C CNN
	1    4575 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 62E71D8E
P 4575 4850
F 0 "D1" V 4614 4732 50  0000 R CNN
F 1 "POWER" V 4523 4732 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4575 4850 50  0001 C CNN
F 3 "~" H 4575 4850 50  0001 C CNN
	1    4575 4850
	0    -1   -1   0   
$EndComp
Text Label 5700 2200 0    50   ~ 0
SCL
Text Label 5700 2300 0    50   ~ 0
SDA
Wire Bus Line
	5575 2100 5575 2200
Entry Bus Bus
	5475 2000 5575 2100
Wire Wire Line
	5675 2200 6500 2200
Wire Wire Line
	5675 2300 6350 2300
Entry Wire Line
	5675 2200 5575 2100
Entry Wire Line
	5675 2300 5575 2200
Text Label 5250 2000 2    50   ~ 0
SDA
Text Label 5250 1900 2    50   ~ 0
SCL
Entry Wire Line
	5275 2300 5375 2400
Entry Wire Line
	5275 2200 5375 2300
Text Label 5700 4425 0    50   ~ 0
ROM
Text Label 5700 3900 0    50   ~ 0
SYNTH
$Comp
L power:VCC #PWR0106
U 1 1 62DEB31B
P 7025 1150
F 0 "#PWR0106" H 7025 1000 50  0001 C CNN
F 1 "VCC" H 7040 1323 50  0000 C CNN
F 2 "" H 7025 1150 50  0001 C CNN
F 3 "" H 7025 1150 50  0001 C CNN
	1    7025 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 62DE2D1A
P 6850 4500
F 0 "#PWR0105" H 6850 4250 50  0001 C CNN
F 1 "GND" H 6855 4327 50  0000 C CNN
F 2 "" H 6850 4500 50  0001 C CNN
F 3 "" H 6850 4500 50  0001 C CNN
	1    6850 4500
	-1   0    0    -1  
$EndComp
Connection ~ 6850 4425
Wire Wire Line
	6850 4425 6850 4500
Wire Bus Line
	5575 3800 5575 4325
Wire Wire Line
	5675 4425 6375 4425
Wire Wire Line
	6375 3900 5675 3900
Wire Wire Line
	6850 4425 6775 4425
Wire Wire Line
	6850 3900 6850 4425
Wire Wire Line
	6775 3900 6850 3900
$Comp
L Switch:SW_Push SW2
U 1 1 62DCCF03
P 6575 4425
F 0 "SW2" H 6575 4710 50  0000 C CNN
F 1 "ROM" H 6575 4619 50  0000 C CNN
F 2 "switch_cutout:SW_PUSH_6mm" H 6575 4625 50  0001 C CNN
F 3 "~" H 6575 4625 50  0001 C CNN
	1    6575 4425
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 62DCBDEC
P 6575 3900
F 0 "SW1" H 6575 4185 50  0000 C CNN
F 1 "SYNTH" H 6575 4094 50  0000 C CNN
F 2 "switch_cutout:SW_PUSH_6mm" H 6575 4100 50  0001 C CNN
F 3 "~" H 6575 4100 50  0001 C CNN
	1    6575 3900
	1    0    0    -1  
$EndComp
Entry Bus Bus
	5475 3700 5575 3800
Entry Wire Line
	5675 3900 5575 3800
Entry Wire Line
	5675 4425 5575 4325
Entry Bus Bus
	5475 1900 5375 2000
Text Label 5250 2500 2    50   ~ 0
UP
Text Label 5250 2600 2    50   ~ 0
DOWN
Entry Wire Line
	5275 2500 5375 2600
Entry Wire Line
	5275 2600 5375 2700
Wire Wire Line
	5275 2500 4775 2500
Wire Wire Line
	5275 2600 4775 2600
Wire Wire Line
	6350 2300 6350 2375
Wire Wire Line
	6500 2200 6500 2375
Wire Wire Line
	6650 2375 6650 1500
Wire Wire Line
	6800 1500 6800 2375
Wire Wire Line
	5275 2000 4775 2000
Wire Wire Line
	5275 1900 4775 1900
Connection ~ 7025 1225
Wire Wire Line
	7025 1150 7025 1225
Wire Wire Line
	7025 1225 6425 1225
Wire Wire Line
	6875 1500 6800 1500
Wire Wire Line
	6650 1500 6575 1500
$Comp
L power:GND #PWR0113
U 1 1 5F14C68D
P 7025 1775
F 0 "#PWR0113" H 7025 1525 50  0001 C CNN
F 1 "GND" H 7030 1602 50  0000 C CNN
F 2 "" H 7025 1775 50  0001 C CNN
F 3 "" H 7025 1775 50  0001 C CNN
	1    7025 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	7025 1700 7025 1775
Wire Wire Line
	7025 1300 7025 1225
$Comp
L I2C_OLED:PowerSelect JP3
U 1 1 5F14C67F
P 7025 1500
F 0 "JP3" V 7071 1568 50  0000 L CNN
F 1 "P1_GND" V 6980 1568 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 7025 1500 50  0001 C CNN
F 3 "~" H 7025 1500 50  0001 C CNN
	1    7025 1500
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F14A813
P 6425 1775
F 0 "#PWR0104" H 6425 1525 50  0001 C CNN
F 1 "GND" H 6430 1602 50  0000 C CNN
F 2 "" H 6425 1775 50  0001 C CNN
F 3 "" H 6425 1775 50  0001 C CNN
	1    6425 1775
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6425 1700 6425 1775
Wire Wire Line
	6425 1300 6425 1225
$Comp
L I2C_OLED:PowerSelect JP4
U 1 1 5F12F8C1
P 6425 1500
F 0 "JP4" V 6379 1568 50  0000 L CNN
F 1 "P2_VCC" V 6470 1568 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 6425 1500 50  0001 C CNN
F 3 "~" H 6425 1500 50  0001 C CNN
	1    6425 1500
	0    -1   1    0   
$EndComp
Wire Wire Line
	4775 1700 4950 1700
Connection ~ 4950 1700
Wire Wire Line
	4950 2800 4950 1700
Wire Wire Line
	4775 2800 4950 2800
Connection ~ 4875 2900
Wire Wire Line
	4875 2900 4875 2975
Connection ~ 4875 2700
Entry Bus Bus
	5475 4900 5575 5000
Entry Wire Line
	5275 2000 5375 2100
Entry Wire Line
	5275 2400 5375 2500
Text Label 5250 2400 2    50   ~ 0
ROM
Text Label 5250 2300 2    50   ~ 0
SYNTH
$Comp
L I2C_OLED:0.96_I2C_OLED IC1
U 1 1 62944F41
P 6575 2825
F 0 "IC1" H 6575 2650 60  0000 C CNN
F 1 "OLED" H 6575 2775 43  0000 C CNN
F 2 "i2c_oled:1.3_I2C_OLED_No_mounting" H 6575 3450 60  0001 C CNN
F 3 "" H 6575 3450 60  0001 C CNN
	1    6575 2825
	-1   0    0    -1  
$EndComp
Entry Wire Line
	5675 5100 5575 5000
Entry Wire Line
	5675 5200 5575 5100
Entry Wire Line
	5675 5300 5575 5200
Wire Wire Line
	8200 5100 5675 5100
Wire Wire Line
	8200 5725 7975 5725
Wire Wire Line
	8200 5725 8200 5100
Wire Wire Line
	6650 5200 5675 5200
Wire Wire Line
	6650 5200 6650 5575
Wire Wire Line
	5675 5300 5950 5300
Text Label 5700 5100 0    50   ~ 0
BTN
Text Label 5700 5300 0    50   ~ 0
UP
Text Label 5700 5200 0    50   ~ 0
DOWN
$Comp
L power:GND #PWR0103
U 1 1 62920E91
P 8300 5975
F 0 "#PWR0103" H 8300 5725 50  0001 C CNN
F 1 "GND" H 8305 5802 50  0000 C CNN
F 2 "" H 8300 5975 50  0001 C CNN
F 3 "" H 8300 5975 50  0001 C CNN
	1    8300 5975
	-1   0    0    -1  
$EndComp
Connection ~ 8300 5900
Wire Wire Line
	8300 5900 8300 5975
Wire Wire Line
	5950 5375 5950 5300
Text Label 7275 5525 2    50   ~ 0
B
Text Label 7275 5725 2    50   ~ 0
A
Wire Wire Line
	5675 5525 5750 5525
Wire Wire Line
	6925 5725 6850 5725
Connection ~ 6925 5725
Wire Wire Line
	5675 6100 5675 5525
Wire Wire Line
	6925 6100 5675 6100
Wire Wire Line
	6925 5725 6925 6100
Wire Wire Line
	7375 5725 6925 5725
Wire Wire Line
	6375 5525 6150 5525
Connection ~ 6375 5525
Wire Wire Line
	6375 5725 6375 5525
Wire Wire Line
	6450 5725 6375 5725
Wire Wire Line
	7375 5525 6375 5525
$Comp
L Jumper:SolderJumper_3_Bridged12 JP2
U 1 1 6210F04F
P 5950 5525
F 0 "JP2" H 5875 5650 50  0000 C CNN
F 1 "DAT" H 6025 5650 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 5950 5525 50  0001 C CNN
F 3 "~" H 5950 5525 50  0001 C CNN
	1    5950 5525
	1    0    0    1   
$EndComp
Wire Wire Line
	8300 5900 7300 5900
Wire Wire Line
	8300 5525 7975 5525
Wire Wire Line
	8300 5900 8300 5525
$Comp
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 620E742C
P 6650 5725
F 0 "JP1" H 6575 5850 50  0000 C CNN
F 1 "CLK" H 6725 5850 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 6650 5725 50  0001 C CNN
F 3 "~" H 6650 5725 50  0001 C CNN
	1    6650 5725
	1    0    0    1   
$EndComp
Wire Wire Line
	7300 5625 7375 5625
Wire Wire Line
	7300 5900 7300 5625
$Comp
L Device:Rotary_Encoder_Switch ENC1
U 1 1 620DA106
P 7675 5625
F 0 "ENC1" H 7675 5258 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 7675 5349 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 7525 5785 50  0001 C CNN
F 3 "~" H 7675 5885 50  0001 C CNN
	1    7675 5625
	1    0    0    1   
$EndComp
Wire Wire Line
	4775 2400 5275 2400
Wire Wire Line
	5275 2300 4775 2300
Wire Wire Line
	4875 2700 4875 2900
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 628CF525
P 4875 2900
F 0 "#FLG0102" H 4875 2975 50  0001 C CNN
F 1 "PWR_FLAG" V 4875 3027 50  0001 L CNN
F 2 "" H 4875 2900 50  0001 C CNN
F 3 "~" H 4875 2900 50  0001 C CNN
	1    4875 2900
	0    1    -1   0   
$EndComp
Wire Wire Line
	4875 2700 4775 2700
Wire Wire Line
	5275 2200 4775 2200
Wire Wire Line
	4875 1800 4775 1800
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 628346CB
P 4950 1700
F 0 "#FLG0101" H 4950 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 4950 1873 50  0001 C CNN
F 2 "" H 4950 1700 50  0001 C CNN
F 3 "~" H 4950 1700 50  0001 C CNN
	1    4950 1700
	0    1    -1   0   
$EndComp
Entry Wire Line
	5275 1900 5375 2000
Text Label 5250 2200 2    50   ~ 0
BTN
$Comp
L power:VCC #PWR0102
U 1 1 62828DC5
P 4950 1625
F 0 "#PWR0102" H 4950 1475 50  0001 C CNN
F 1 "VCC" H 4965 1798 50  0000 C CNN
F 2 "" H 4950 1625 50  0001 C CNN
F 3 "" H 4950 1625 50  0001 C CNN
	1    4950 1625
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4950 1700 4950 1625
$Comp
L power:GND #PWR0101
U 1 1 6282785A
P 4875 2975
F 0 "#PWR0101" H 4875 2725 50  0001 C CNN
F 1 "GND" H 4880 2802 50  0000 C CNN
F 2 "" H 4875 2975 50  0001 C CNN
F 3 "" H 4875 2975 50  0001 C CNN
	1    4875 2975
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4875 1800 4875 2700
$Comp
L BulkyMIDI:Module_Panel J1
U 1 1 62825997
P 4575 2700
F 0 "J1" H 4875 3725 50  0000 L CNN
F 1 "Module Panel" H 4875 3650 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Horizontal" H 4575 2700 50  0001 C CNN
F 3 "~" H 4575 2700 50  0001 C CNN
	1    4575 2700
	-1   0    0    -1  
$EndComp
Text Label 5250 4625 2    50   ~ 0
PWR
Entry Bus Bus
	5475 4350 5375 4450
Entry Wire Line
	5275 4625 5375 4525
Wire Wire Line
	4575 4700 4575 4625
Wire Bus Line
	5375 4450 5375 4525
Wire Wire Line
	4575 4625 5275 4625
Wire Bus Line
	5575 5000 5575 5200
Wire Bus Line
	5475 1900 5475 4900
Wire Bus Line
	5375 2000 5375 2700
$EndSCHEMATC
