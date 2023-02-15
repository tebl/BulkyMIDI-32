EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BulkyMIDI-32 TRS MIDI"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "need to be linked horizontally for type A wiring, vertically for type B."
Comment4 "Allows the use of a male-to-male 3.5mm audio cable (TRS) as MIDI-cables. The jumpers"
$EndDescr
$Comp
L Connector:DIN-5_180degree J2
U 1 1 5FBFBE67
P 7200 3725
F 0 "J2" H 7200 3358 50  0000 C CNN
F 1 "MIDI" H 7200 3449 50  0000 C CNN
F 2 "BulkyMIDI-32:DIN5_MIDI_ANY" H 7200 3725 50  0001 C CNN
F 3 "" H 7200 3725 50  0001 C CNN
	1    7200 3725
	-1   0    0    1   
$EndComp
NoConn ~ 7500 3725
NoConn ~ 6900 3725
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
$Comp
L audio_jack:TRS_3.5mm J1
U 1 1 63F0688A
P 4925 4400
F 0 "J1" H 4903 4825 50  0000 C CNN
F 1 "TRS" H 4903 4734 50  0000 C CNN
F 2 "audio_jack:PJ-317" H 5175 4500 50  0001 C CNN
F 3 "~" H 5175 4500 50  0001 C CNN
	1    4925 4400
	1    0    0    -1  
$EndComp
$Comp
L solder_select:Jumper_4_Swappable J3
U 1 1 63F07631
P 5875 4300
F 0 "J3" H 5925 4517 50  0000 C CNN
F 1 "TYPE A/B" H 5925 4426 50  0000 C CNN
F 2 "solder_bridge:select_swappable_THT" H 5865 4300 50  0001 C CNN
F 3 "~" H 5865 4300 50  0001 C CNN
	1    5875 4300
	1    0    0    -1  
$EndComp
NoConn ~ 5125 4200
NoConn ~ 5125 4500
Wire Wire Line
	4725 4600 4725 4675
Wire Wire Line
	7200 4025 7200 4675
Wire Wire Line
	5125 4400 5675 4400
Text Label 5150 4400 0    50   ~ 0
TIP
Text Label 5150 4300 0    50   ~ 0
RING
Wire Wire Line
	6900 3825 6825 3825
Wire Wire Line
	6825 3825 6825 4400
Wire Wire Line
	5125 4300 5675 4300
Text Label 5150 4675 0    50   ~ 0
SHIELD
Wire Wire Line
	7500 3825 7600 3825
Wire Wire Line
	7600 3825 7600 3275
Wire Wire Line
	7600 3275 6725 3275
Wire Wire Line
	6725 3275 6725 4300
Text Label 6200 4300 0    50   ~ 0
SOURCE
Text Label 6200 4400 0    50   ~ 0
SINK
Wire Wire Line
	6175 4300 6725 4300
Wire Wire Line
	6175 4400 6825 4400
Wire Wire Line
	4725 4675 7200 4675
$EndSCHEMATC
