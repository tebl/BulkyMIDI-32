EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BulkyMIDI-32 Wavetable"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Adapter for connecting MIDI through Wavetable header found on many ISA sound cards."
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
L power:+5V #PWR0119
U 1 1 5FD00C6D
P 8425 4250
F 0 "#PWR0119" H 8425 4100 50  0001 C CNN
F 1 "+5V" H 8425 4390 50  0000 C CNN
F 2 "" H 8425 4250 50  0000 C CNN
F 3 "" H 8425 4250 50  0000 C CNN
	1    8425 4250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FD00C73
P 8425 4450
F 0 "R2" H 8350 4500 50  0000 R CNN
F 1 "220" H 8375 4425 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8355 4450 50  0001 C CNN
F 3 "~" H 8425 4450 50  0001 C CNN
	1    8425 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 4250 8425 4300
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
	10925 1150 10925 3425
Wire Notes Line
	5100 3425 5100 1150
Wire Wire Line
	8425 4675 8425 4600
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
P 7550 4775
F 0 "U3" H 7550 5100 50  0000 C CNN
F 1 "74LS00" H 7550 5009 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 7550 4775 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 7550 4775 50  0001 C CNN
	3    7550 4775
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U3
U 4 1 620D7ACB
P 6800 4775
F 0 "U3" H 6800 5100 50  0000 C CNN
F 1 "74LS00" H 6800 5009 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6800 4775 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6800 4775 50  0001 C CNN
	4    6800 4775
	1    0    0    -1  
$EndComp
Text GLabel 3625 3575 3    50   Input ~ 0
MIDI_RxD
Wire Wire Line
	10375 2500 10450 2500
Text GLabel 10450 2500 2    50   Output ~ 0
MIDI_RxD
Wire Wire Line
	8625 1875 8625 1950
Connection ~ 8625 1950
Wire Wire Line
	8950 1950 8625 1950
Wire Wire Line
	8950 2025 8950 1950
Wire Wire Line
	8625 1950 8625 2200
Connection ~ 8950 2400
Wire Wire Line
	8950 2325 8950 2400
$Comp
L Device:R R1
U 1 1 6219F0FD
P 8950 2175
F 0 "R1" H 8875 2225 50  0000 R CNN
F 1 "2k2" H 8900 2150 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8880 2175 50  0001 C CNN
F 3 "~" H 8950 2175 50  0001 C CNN
	1    8950 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2500 8950 2400
Connection ~ 8950 2500
Wire Wire Line
	8550 2500 8950 2500
Wire Wire Line
	7875 2300 7950 2300
Connection ~ 7875 2300
Wire Wire Line
	7875 2300 7750 2300
Connection ~ 7875 2500
Wire Wire Line
	7875 2700 7875 2500
NoConn ~ 8550 2300
$Comp
L power:+5V #PWR0104
U 1 1 62130EBF
P 8625 1875
F 0 "#PWR0104" H 8625 1725 50  0001 C CNN
F 1 "+5V" H 8625 2015 50  0000 C CNN
F 2 "" H 8625 1875 50  0000 C CNN
F 3 "" H 8625 1875 50  0000 C CNN
	1    8625 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2200 8625 2200
$Comp
L power:GND #PWR0105
U 1 1 6212BC17
P 8625 2700
F 0 "#PWR0105" H 8625 2450 50  0001 C CNN
F 1 "GND" H 8630 2527 50  0000 C CNN
F 2 "" H 8625 2700 50  0001 C CNN
F 3 "" H 8625 2700 50  0001 C CNN
	1    8625 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8625 2600 8625 2700
Wire Wire Line
	8550 2600 8625 2600
Wire Wire Line
	7950 2500 7875 2500
$Comp
L Isolator:6N138 U1
U 1 1 62109585
P 8250 2400
F 0 "U1" H 8250 1933 50  0000 C CNN
F 1 "6N138" H 8250 2024 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 8540 2100 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 8540 2100 50  0001 C CNN
	1    8250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2400 9025 2400
Wire Wire Line
	8950 2600 8950 2500
Wire Wire Line
	9025 2600 8950 2600
Wire Wire Line
	9700 2500 9700 2400
Connection ~ 9700 2500
Wire Wire Line
	9700 2500 9625 2500
Wire Wire Line
	9700 2400 9775 2400
Wire Wire Line
	9700 2600 9700 2500
Wire Wire Line
	9775 2600 9700 2600
$Comp
L 74xx:74LS00 U3
U 2 1 620D5C38
P 10075 2500
F 0 "U3" H 10075 2183 50  0000 C CNN
F 1 "74LS00" H 10075 2274 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10075 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 10075 2500 50  0001 C CNN
	2    10075 2500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U3
U 1 1 620D4FC2
P 9325 2500
F 0 "U3" H 9325 2183 50  0000 C CNN
F 1 "74LS00" H 9325 2274 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9325 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 9325 2500 50  0001 C CNN
	1    9325 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F99E885
P 7600 2300
F 0 "R4" V 7393 2300 50  0000 C CNN
F 1 "220" V 7484 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7530 2300 50  0001 C CNN
F 3 "~" H 7600 2300 50  0001 C CNN
	1    7600 2300
	0    1    1    0   
$EndComp
$Comp
L Device:D_Small D1
U 1 1 5F99E152
P 7875 2400
F 0 "D1" V 7975 2325 50  0000 R CNN
F 1 "1N4148" V 7900 2325 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7875 2400 50  0001 C CNN
F 3 "~" H 7875 2400 50  0001 C CNN
	1    7875 2400
	0    1    1    0   
$EndComp
Text GLabel 3825 3575 3    50   Output ~ 0
MIDI_TxD
Wire Wire Line
	3625 3575 3625 3425
Wire Wire Line
	3825 3575 3825 3425
$Comp
L Device:R R3
U 1 1 622D9678
P 8175 4775
F 0 "R3" V 7968 4775 50  0000 C CNN
F 1 "220" V 8059 4775 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8105 4775 50  0001 C CNN
F 3 "~" H 8175 4775 50  0001 C CNN
	1    8175 4775
	0    1    -1   0   
$EndComp
Wire Wire Line
	7250 4675 7175 4675
Wire Wire Line
	7175 4675 7175 4775
Wire Wire Line
	7175 4875 7250 4875
Wire Wire Line
	7175 4775 7100 4775
Connection ~ 7175 4775
Wire Wire Line
	7175 4775 7175 4875
Wire Wire Line
	6500 4675 6425 4675
Wire Wire Line
	6425 4675 6425 4775
Wire Wire Line
	6425 4875 6500 4875
Wire Wire Line
	6425 4775 6350 4775
Connection ~ 6425 4775
Wire Wire Line
	6425 4775 6425 4875
Wire Wire Line
	8625 4675 8425 4675
Text GLabel 6350 4775 0    50   Input ~ 0
MIDI_TxD
Wire Notes Line
	10925 3525 10925 5800
Wire Notes Line
	5100 5800 5100 3525
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
Text Notes 1925 1250 0    50   ~ 0
Wavetable
$Comp
L wavetable:Wavetable J1
U 1 1 63DF49BC
P 3275 2875
F 0 "J1" H 4200 2900 50  0000 C CNN
F 1 "Wavetable" H 4200 2825 50  0000 C CNN
F 2 "BulkyMIDI-32:Wavetable" V 3325 2925 50  0001 C CNN
F 3 "~" V 3325 2925 50  0001 C CNN
	1    3275 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3725 3425 3725 3500
Wire Wire Line
	3725 3500 3525 3500
$Comp
L power:+5V #PWR0101
U 1 1 63E3E835
P 2525 3350
F 0 "#PWR0101" H 2525 3200 50  0001 C CNN
F 1 "+5V" H 2525 3490 50  0000 C CNN
F 2 "" H 2525 3350 50  0000 C CNN
F 3 "" H 2525 3350 50  0000 C CNN
	1    2525 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 3350 2525 3500
Wire Wire Line
	3525 3425 3525 3500
Connection ~ 3525 3500
Wire Wire Line
	3525 3500 3325 3500
Wire Wire Line
	3325 3425 3325 3500
Connection ~ 3325 3500
Wire Wire Line
	3325 3500 2525 3500
NoConn ~ 2925 3425
NoConn ~ 3125 3425
NoConn ~ 2725 3425
$Comp
L power:GND #PWR0102
U 1 1 620CCE57
P 4125 2475
F 0 "#PWR0102" H 4125 2225 50  0001 C CNN
F 1 "GND" H 4130 2302 50  0000 C CNN
F 2 "" H 4125 2475 50  0001 C CNN
F 3 "" H 4125 2475 50  0001 C CNN
	1    4125 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 2325 3425 2250
Wire Wire Line
	3425 2250 3525 2250
Wire Wire Line
	4125 2250 4125 2475
Wire Wire Line
	3525 2325 3525 2250
Connection ~ 3525 2250
Wire Wire Line
	3525 2250 3625 2250
Wire Wire Line
	3625 2325 3625 2250
Connection ~ 3625 2250
Wire Wire Line
	3625 2250 3725 2250
Wire Wire Line
	3725 2325 3725 2250
Connection ~ 3725 2250
Wire Wire Line
	3725 2250 3825 2250
Wire Wire Line
	3825 2325 3825 2250
Connection ~ 3825 2250
Wire Wire Line
	3825 2250 3925 2250
Wire Wire Line
	3925 2325 3925 2250
Connection ~ 3925 2250
Wire Wire Line
	3925 2250 4125 2250
$Comp
L power:GNDA #PWR0106
U 1 1 63E82E9C
P 2525 2475
F 0 "#PWR0106" H 2525 2225 50  0001 C CNN
F 1 "GNDA" H 2530 2302 50  0000 C CNN
F 2 "" H 2525 2475 50  0001 C CNN
F 3 "" H 2525 2475 50  0001 C CNN
	1    2525 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 2475 2525 2250
Wire Wire Line
	2525 2250 2725 2250
Wire Wire Line
	3225 2250 3225 2325
Wire Wire Line
	3125 2325 3125 2250
Connection ~ 3125 2250
Wire Wire Line
	3125 2250 3225 2250
Wire Wire Line
	3025 2325 3025 2250
Connection ~ 3025 2250
Wire Wire Line
	3025 2250 3125 2250
Wire Wire Line
	2925 2325 2925 2250
Connection ~ 2925 2250
Wire Wire Line
	2925 2250 3025 2250
Wire Wire Line
	2825 2325 2825 2250
Connection ~ 2825 2250
Wire Wire Line
	2825 2250 2925 2250
Wire Wire Line
	2725 2325 2725 2250
Connection ~ 2725 2250
Wire Wire Line
	2725 2250 2825 2250
NoConn ~ 3225 3425
NoConn ~ 3425 3425
$Comp
L BulkyMIDI:Analog_Audio J4
U 1 1 63ED3E35
P 4400 4400
F 0 "J4" H 4525 4000 50  0000 C CNN
F 1 "AUDIO_IN" H 4550 4075 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 4400 4400 50  0001 C CNN
F 3 "~" H 4400 4400 50  0001 C CNN
	1    4400 4400
	1    0    0    1   
$EndComp
Wire Wire Line
	2825 3425 2825 4400
Wire Wire Line
	4200 4300 4125 4300
Wire Wire Line
	4125 4300 4125 4400
Wire Wire Line
	4200 4400 4125 4400
Connection ~ 4125 4400
Wire Wire Line
	4125 4400 4125 4575
$Comp
L power:GNDA #PWR0107
U 1 1 63EF6FF7
P 4125 4575
F 0 "#PWR0107" H 4125 4325 50  0001 C CNN
F 1 "GNDA" H 4130 4402 50  0000 C CNN
F 2 "" H 4125 4575 50  0001 C CNN
F 3 "" H 4125 4575 50  0001 C CNN
	1    4125 4575
	1    0    0    -1  
$EndComp
Text Label 2850 4400 0    50   ~ 0
LEFT
Text Label 3050 4300 0    50   ~ 0
RIGHT
$Comp
L solder_select:Jumper_4_Swappable J5
U 1 1 63EFE311
P 3550 4300
F 0 "J5" H 3600 4517 50  0000 C CNN
F 1 "SWAP_LR" H 3600 4426 50  0000 C CNN
F 2 "solder_bridge:select_swappable" H 3540 4300 50  0001 C CNN
F 3 "~" H 3540 4300 50  0001 C CNN
	1    3550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4300 3925 4300
Wire Wire Line
	3925 4300 3925 4200
Wire Wire Line
	3925 4200 4200 4200
Wire Wire Line
	3850 4400 3925 4400
Wire Wire Line
	3925 4400 3925 4500
Wire Wire Line
	3925 4500 4200 4500
Wire Wire Line
	3025 3425 3025 4300
Wire Wire Line
	2825 4400 3350 4400
Wire Wire Line
	3025 4300 3350 4300
$Comp
L audio_jack:TRS_3.5mm J2
U 1 1 63F851AC
P 5800 2400
F 0 "J2" H 5778 2825 50  0000 C CNN
F 1 "MIDI_IN" H 5778 2734 50  0000 C CNN
F 2 "audio_jack:PJ-317_IN" H 6050 2500 50  0001 C CNN
F 3 "~" H 6050 2500 50  0001 C CNN
	1    5800 2400
	1    0    0    -1  
$EndComp
$Comp
L solder_select:Jumper_4_Swappable J3
U 1 1 63F893A5
P 6325 2300
F 0 "J3" H 6375 2517 50  0000 C CNN
F 1 "MIDI_IN_TYPE" H 6375 2426 50  0000 C CNN
F 2 "solder_bridge:select_swappable" H 6315 2300 50  0001 C CNN
F 3 "~" H 6315 2300 50  0001 C CNN
	1    6325 2300
	1    0    0    -1  
$EndComp
NoConn ~ 6000 2500
NoConn ~ 6000 2200
NoConn ~ 5600 2600
Wire Wire Line
	6000 2300 6125 2300
Wire Wire Line
	6000 2400 6125 2400
Text Label 6725 2300 0    50   ~ 0
MIDI_IN_SOURCE
Wire Wire Line
	6625 2300 7450 2300
Wire Wire Line
	6625 2400 6700 2400
Wire Wire Line
	6700 2400 6700 2700
Wire Wire Line
	6700 2700 7875 2700
Text Label 6725 2700 0    50   ~ 0
MIDI_IN_SINK
Wire Notes Line
	5100 1150 10925 1150
Wire Notes Line
	5100 3425 10925 3425
Wire Notes Line
	5100 3525 10925 3525
Wire Notes Line
	5100 5800 10925 5800
$Comp
L audio_jack:TRS_3.5mm J7
U 1 1 64086CBE
P 9450 4775
F 0 "J7" H 9162 4843 50  0000 R CNN
F 1 "MIDI_OUT" H 9162 4752 50  0000 R CNN
F 2 "audio_jack:PJ-317_OUT" H 9700 4875 50  0001 C CNN
F 3 "~" H 9700 4875 50  0001 C CNN
	1    9450 4775
	-1   0    0    -1  
$EndComp
$Comp
L solder_select:Jumper_4_Swappable J6
U 1 1 64086CC4
P 8925 4675
F 0 "J6" H 8975 4892 50  0000 C CNN
F 1 "MIDI_OUT_TYPE" H 8975 4801 50  0000 C CNN
F 2 "solder_bridge:select_swappable" H 8915 4675 50  0001 C CNN
F 3 "~" H 8915 4675 50  0001 C CNN
	1    8925 4675
	-1   0    0    -1  
$EndComp
NoConn ~ 9250 4875
NoConn ~ 9250 4575
Wire Wire Line
	9250 4675 9125 4675
Wire Wire Line
	9250 4775 9125 4775
Wire Wire Line
	8325 4775 8625 4775
Wire Wire Line
	7850 4775 8025 4775
$Comp
L power:GND #PWR0108
U 1 1 640E5CDB
P 9650 4975
F 0 "#PWR0108" H 9650 4725 50  0001 C CNN
F 1 "GND" H 9655 4802 50  0000 C CNN
F 2 "" H 9650 4975 50  0001 C CNN
F 3 "" H 9650 4975 50  0001 C CNN
	1    9650 4975
	1    0    0    -1  
$EndComp
Text Notes 5125 1525 0    50   ~ 0
This might not actually exist on your soundcard, it does not show up in all of the resources I've seen while there doesn't seem to be any official\nstandard for it. That probably means that no harm will come from adding it, you probably just won't see the use of it. A TRS jack is used for it,\nthese are wired in two different ways with type A marked as default.
$EndSCHEMATC
