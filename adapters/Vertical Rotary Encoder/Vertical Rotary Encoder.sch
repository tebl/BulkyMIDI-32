EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Vertical Rotary Encoder"
Date ""
Rev "B"
Comp ""
Comment1 "Jumpers allow reversing direction."
Comment2 ""
Comment3 "large, so I made a smaller one that would fit this project."
Comment4 "It seems that right-angle rotary encoders are very expensive and the encoder modules too"
$EndDescr
$Comp
L Device:Rotary_Encoder_Switch ENC1
U 1 1 620DA106
P 5700 3450
F 0 "ENC1" H 5700 3083 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 5700 3174 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 5550 3610 50  0001 C CNN
F 3 "~" H 5700 3710 50  0001 C CNN
	1    5700 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6075 3725 6075 3450
Wire Wire Line
	6075 3450 6000 3450
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 620DC68C
P 4300 3825
F 0 "J1" V 4172 4005 50  0000 L CNN
F 1 "Conn_01x04" V 4263 4005 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 4300 3825 50  0001 C CNN
F 3 "~" H 4300 3825 50  0001 C CNN
	1    4300 3825
	-1   0    0    1   
$EndComp
Text Label 5025 3725 2    50   ~ 0
GND
$Comp
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 620E742C
P 6725 3550
F 0 "JP1" H 6650 3675 50  0000 C CNN
F 1 "CLK" H 6800 3675 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 6725 3550 50  0001 C CNN
F 3 "~" H 6725 3550 50  0001 C CNN
	1    6725 3550
	-1   0    0    1   
$EndComp
Text GLabel 5325 3550 0    50   Output ~ 0
BTN
Wire Wire Line
	5400 3550 5325 3550
Wire Wire Line
	5075 3725 5075 3350
Wire Wire Line
	5075 3350 5400 3350
Text GLabel 4575 3625 2    50   Input ~ 0
BTN
Wire Wire Line
	4575 3625 4500 3625
Text GLabel 4575 3925 2    50   Input ~ 0
DAT
Text GLabel 4575 3825 2    50   Input ~ 0
CLK
Wire Wire Line
	4575 3925 4500 3925
Wire Wire Line
	4500 3825 4575 3825
Wire Wire Line
	4500 3725 5075 3725
Connection ~ 5075 3725
Wire Wire Line
	5075 3725 6075 3725
Text GLabel 6725 3125 1    50   Output ~ 0
CLK
$Comp
L Jumper:SolderJumper_3_Bridged12 JP2
U 1 1 6210F04F
P 7425 3350
F 0 "JP2" H 7350 3475 50  0000 C CNN
F 1 "DAT" H 7500 3475 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 7425 3350 50  0001 C CNN
F 3 "~" H 7425 3350 50  0001 C CNN
	1    7425 3350
	-1   0    0    1   
$EndComp
Text GLabel 7425 3125 1    50   Output ~ 0
DAT
Wire Wire Line
	6000 3350 7000 3350
Wire Wire Line
	6925 3550 7000 3550
Wire Wire Line
	7000 3550 7000 3350
Connection ~ 7000 3350
Wire Wire Line
	7000 3350 7225 3350
Wire Wire Line
	6000 3550 6450 3550
Wire Wire Line
	6450 3550 6450 3925
Wire Wire Line
	6450 3925 7700 3925
Wire Wire Line
	7700 3925 7700 3350
Connection ~ 6450 3550
Wire Wire Line
	6450 3550 6525 3550
Wire Wire Line
	7700 3350 7625 3350
Text Label 6100 3550 0    50   ~ 0
A
Text Label 6100 3350 0    50   ~ 0
B
Wire Wire Line
	7425 3200 7425 3125
Wire Wire Line
	6725 3125 6725 3400
$EndSCHEMATC
