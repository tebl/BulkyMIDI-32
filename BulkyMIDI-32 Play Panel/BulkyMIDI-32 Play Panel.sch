EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Play (Panel)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Front panel for the play module, designed for slotting into channel board."
$EndDescr
$Comp
L BulkyMIDI:Play_Panel J1
U 1 1 62825997
P 4275 3400
F 0 "J1" H 4555 3450 50  0000 L CNN
F 1 "Play_Panel" H 4555 3359 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x21_P2.54mm_Horizontal" H 4275 3400 50  0001 C CNN
F 3 "~" H 4275 3400 50  0001 C CNN
	1    4275 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4575 2500 4575 4300
$Comp
L power:GND #PWR0101
U 1 1 6282785A
P 4575 4575
F 0 "#PWR0101" H 4575 4325 50  0001 C CNN
F 1 "GND" H 4580 4402 50  0000 C CNN
F 2 "" H 4575 4575 50  0001 C CNN
F 3 "" H 4575 4575 50  0001 C CNN
	1    4575 4575
	-1   0    0    -1  
$EndComp
Connection ~ 4575 4300
Wire Wire Line
	4650 4400 4650 2400
Wire Wire Line
	4650 2400 4550 2400
Wire Wire Line
	4650 2400 4650 2325
Connection ~ 4650 2400
$Comp
L power:VCC #PWR0102
U 1 1 62828DC5
P 4650 2325
F 0 "#PWR0102" H 4650 2175 50  0001 C CNN
F 1 "VCC" H 4665 2498 50  0000 C CNN
F 2 "" H 4650 2325 50  0001 C CNN
F 3 "" H 4650 2325 50  0001 C CNN
	1    4650 2325
	-1   0    0    -1  
$EndComp
Text Label 4950 2900 2    50   ~ 0
SDA
Text Label 4950 3000 2    50   ~ 0
SCL
Text Label 4950 4000 2    50   ~ 0
BTN
Text Label 4950 4100 2    50   ~ 0
CLK
Text Label 4950 4200 2    50   ~ 0
DAT
Entry Wire Line
	4975 2900 5075 3000
Entry Wire Line
	4975 3000 5075 3100
Entry Wire Line
	4975 4000 5075 4100
Entry Wire Line
	4975 4100 5075 4200
Entry Wire Line
	4975 4200 5075 4300
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 628346CB
P 4550 2400
F 0 "#FLG0101" H 4550 2475 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 2573 50  0001 C CNN
F 2 "" H 4550 2400 50  0001 C CNN
F 3 "~" H 4550 2400 50  0001 C CNN
	1    4550 2400
	-1   0    0    -1  
$EndComp
Connection ~ 4550 2400
Wire Wire Line
	4550 2400 4475 2400
Wire Wire Line
	4575 2500 4475 2500
Wire Wire Line
	4975 2900 4475 2900
Wire Wire Line
	4975 3000 4475 3000
Wire Wire Line
	4975 4000 4475 4000
Wire Wire Line
	4975 4100 4475 4100
Wire Wire Line
	4975 4200 4475 4200
Wire Wire Line
	4575 4300 4475 4300
Wire Wire Line
	4650 4400 4475 4400
$Comp
L Device:LED D1
U 1 1 6283F232
P 6025 5050
F 0 "D1" H 6275 4875 50  0000 R CNN
F 1 "SYSTEM" H 6275 4950 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6025 5050 50  0001 C CNN
F 3 "~" H 6025 5050 50  0001 C CNN
	1    6025 5050
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 628CF525
P 4575 4500
F 0 "#FLG0102" H 4575 4575 50  0001 C CNN
F 1 "PWR_FLAG" V 4575 4627 50  0001 L CNN
F 2 "" H 4575 4500 50  0001 C CNN
F 3 "~" H 4575 4500 50  0001 C CNN
	1    4575 4500
	0    1    -1   0   
$EndComp
Wire Wire Line
	4575 4300 4575 4500
$Comp
L mounting:Mounting_Pin M1
U 1 1 6282631C
P 10725 575
F 0 "M1" H 10725 675 50  0001 C CNN
F 1 "Mounting_Pin" H 10725 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 10725 575 50  0001 C CNN
F 3 "~" H 10725 575 50  0001 C CNN
	1    10725 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M2
U 1 1 62826824
P 10850 575
F 0 "M2" H 10850 675 50  0001 C CNN
F 1 "Mounting_Pin" H 10850 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 10850 575 50  0001 C CNN
F 3 "~" H 10850 575 50  0001 C CNN
	1    10850 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M3
U 1 1 62826D8F
P 10975 575
F 0 "M3" H 10975 675 50  0001 C CNN
F 1 "Mounting_Pin" H 10975 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 10975 575 50  0001 C CNN
F 3 "~" H 10975 575 50  0001 C CNN
	1    10975 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M4
U 1 1 62827110
P 11100 575
F 0 "M4" H 11100 675 50  0001 C CNN
F 1 "Mounting_Pin" H 11100 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 11100 575 50  0001 C CNN
F 3 "~" H 11100 575 50  0001 C CNN
	1    11100 575 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 6282AADA
P 11100 875
F 0 "#PWR0111" H 11100 625 50  0001 C CNN
F 1 "GND" H 11105 702 50  0000 C CNN
F 2 "" H 11100 875 50  0001 C CNN
F 3 "" H 11100 875 50  0001 C CNN
	1    11100 875 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10725 725  10725 800 
Wire Wire Line
	10725 800  10850 800 
Wire Wire Line
	11100 800  11100 725 
Wire Wire Line
	10850 725  10850 800 
Connection ~ 10850 800 
Wire Wire Line
	10850 800  10975 800 
Wire Wire Line
	10975 725  10975 800 
Connection ~ 10975 800 
Wire Wire Line
	10975 800  11100 800 
Wire Wire Line
	11100 800  11100 875 
Connection ~ 11100 800 
Wire Wire Line
	4975 2600 4475 2600
Wire Wire Line
	4475 2700 4975 2700
Wire Wire Line
	4975 2800 4475 2800
$Comp
L Device:LED D2
U 1 1 62901D33
P 6025 5375
F 0 "D2" H 6275 5200 50  0000 R CNN
F 1 "ACTIVITY" H 6275 5275 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6025 5375 50  0001 C CNN
F 3 "~" H 6025 5375 50  0001 C CNN
	1    6025 5375
	-1   0    0    1   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch ENC1
U 1 1 620DA106
P 7375 3850
F 0 "ENC1" H 7375 3483 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 7375 3574 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 7225 4010 50  0001 C CNN
F 3 "~" H 7375 4110 50  0001 C CNN
	1    7375 3850
	1    0    0    1   
$EndComp
Wire Wire Line
	7000 4125 7000 3850
Wire Wire Line
	7000 3850 7075 3850
$Comp
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 620E742C
P 6350 3950
F 0 "JP1" H 6275 4075 50  0000 C CNN
F 1 "CLK" H 6425 4075 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 6350 3950 50  0001 C CNN
F 3 "~" H 6350 3950 50  0001 C CNN
	1    6350 3950
	1    0    0    1   
$EndComp
Wire Wire Line
	8000 4125 8000 3750
Wire Wire Line
	8000 3750 7675 3750
Wire Wire Line
	8000 4125 7000 4125
$Comp
L Jumper:SolderJumper_3_Bridged12 JP2
U 1 1 6210F04F
P 5650 3750
F 0 "JP2" H 5575 3875 50  0000 C CNN
F 1 "DAT" H 5725 3875 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 5650 3750 50  0001 C CNN
F 3 "~" H 5650 3750 50  0001 C CNN
	1    5650 3750
	1    0    0    1   
$EndComp
Wire Wire Line
	7075 3750 6075 3750
Wire Wire Line
	6150 3950 6075 3950
Wire Wire Line
	6075 3950 6075 3750
Connection ~ 6075 3750
Wire Wire Line
	6075 3750 5850 3750
Wire Wire Line
	7075 3950 6625 3950
Wire Wire Line
	6625 3950 6625 4325
Wire Wire Line
	6625 4325 5375 4325
Wire Wire Line
	5375 4325 5375 3750
Connection ~ 6625 3950
Wire Wire Line
	6625 3950 6550 3950
Wire Wire Line
	5375 3750 5450 3750
Text Label 6975 3950 2    50   ~ 0
A
Text Label 6975 3750 2    50   ~ 0
B
Wire Wire Line
	5650 3600 5650 3525
Wire Wire Line
	8000 4125 8000 4200
Connection ~ 8000 4125
$Comp
L power:GND #PWR0103
U 1 1 62920E91
P 8000 4200
F 0 "#PWR0103" H 8000 3950 50  0001 C CNN
F 1 "GND" H 8005 4027 50  0000 C CNN
F 2 "" H 8000 4200 50  0001 C CNN
F 3 "" H 8000 4200 50  0001 C CNN
	1    8000 4200
	-1   0    0    -1  
$EndComp
Text Label 5400 3425 0    50   ~ 0
CLK
Text Label 5400 3525 0    50   ~ 0
DAT
Text Label 5400 3325 0    50   ~ 0
BTN
Wire Wire Line
	5375 3525 5650 3525
Wire Wire Line
	6350 3425 6350 3800
Wire Wire Line
	6350 3425 5375 3425
Wire Wire Line
	7900 3950 7900 3325
Wire Wire Line
	7900 3950 7675 3950
Wire Wire Line
	7900 3325 5375 3325
Entry Wire Line
	5375 3325 5275 3425
Entry Wire Line
	5375 3425 5275 3525
Entry Wire Line
	5375 3525 5275 3625
$Comp
L I2C_OLED:0.91_I2C_OLED IC1
U 1 1 62944F41
P 6600 2325
F 0 "IC1" H 6505 2571 60  0000 C CNN
F 1 "0.91_I2C_OLED" H 6505 2478 43  0000 C CNN
F 2 "i2c_oled:0.91_I2C_OLED" H 6600 2950 60  0001 C CNN
F 3 "" H 6600 2950 60  0001 C CNN
	1    6600 2325
	1    0    0    -1  
$EndComp
Text Label 5400 2300 0    50   ~ 0
SDA
Text Label 5400 2400 0    50   ~ 0
SCL
Entry Wire Line
	5375 2300 5275 2400
Entry Wire Line
	5375 2400 5275 2500
Wire Wire Line
	5375 2300 5875 2300
Wire Wire Line
	5375 2400 5875 2400
Wire Wire Line
	5875 2600 5800 2600
Wire Wire Line
	5800 2600 5800 2675
$Comp
L power:GND #PWR02
U 1 1 62954715
P 5800 2675
F 0 "#PWR02" H 5800 2425 50  0001 C CNN
F 1 "GND" H 5805 2502 50  0000 C CNN
F 2 "" H 5800 2675 50  0001 C CNN
F 3 "" H 5800 2675 50  0001 C CNN
	1    5800 2675
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 6295569B
P 5800 2225
F 0 "#PWR01" H 5800 2075 50  0001 C CNN
F 1 "VCC" H 5815 2398 50  0000 C CNN
F 2 "" H 5800 2225 50  0001 C CNN
F 3 "" H 5800 2225 50  0001 C CNN
	1    5800 2225
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5800 2225 5800 2500
Wire Wire Line
	5800 2500 5875 2500
Text Label 4950 2600 2    50   ~ 0
SYS
Text Label 4950 2700 2    50   ~ 0
ACT
Text Label 4950 2800 2    50   ~ 0
COM
Entry Wire Line
	4975 2700 5075 2800
Entry Wire Line
	4975 2800 5075 2900
Entry Wire Line
	4975 2600 5075 2700
Wire Wire Line
	5375 5050 5875 5050
Wire Wire Line
	5875 5375 5375 5375
Text Label 5400 5050 0    50   ~ 0
SYS
Text Label 5400 5375 0    50   ~ 0
ACT
Text Label 5400 5500 0    50   ~ 0
COM
Entry Wire Line
	5375 5050 5275 5150
Entry Wire Line
	5375 5375 5275 5475
Entry Wire Line
	5375 5500 5275 5600
Wire Bus Line
	5275 2500 5275 2400
Entry Bus Bus
	5175 5700 5275 5600
Entry Bus Bus
	5175 3725 5275 3625
Entry Bus Bus
	5175 2600 5275 2500
Entry Bus Bus
	5175 2600 5075 2700
Wire Wire Line
	4575 4500 4575 4575
Connection ~ 4575 4500
Wire Wire Line
	6350 5050 6350 5375
Connection ~ 6350 5375
Wire Wire Line
	6350 5375 6350 5500
Wire Wire Line
	6175 5050 6350 5050
Wire Wire Line
	6175 5375 6350 5375
Wire Wire Line
	5375 5500 6350 5500
NoConn ~ 4475 3800
NoConn ~ 4475 3900
Wire Bus Line
	5275 5150 5275 5600
Wire Bus Line
	5275 3425 5275 3625
Wire Bus Line
	5175 2600 5175 5700
Wire Bus Line
	5075 2700 5075 4300
$EndSCHEMATC