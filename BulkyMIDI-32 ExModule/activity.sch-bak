EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Activity LED"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Lights up an LED when activity is \"seen\" on MIDI."
$EndDescr
Text Notes 2675 3750 0    50   ~ 0
DATA received on MIDI input for main\nboard is also shown, but as I didn't like\nthe flickering we'll light it up as mostly\nsolid - as long as there is activity.  \n\nThis is calculated as\nT = 1.1 * R1 * C2 = 0.33s
$Comp
L Timer:NE555P U?
U 1 1 666C8765
P 6825 4250
AR Path="/666C8765" Ref="U?"  Part="1" 
AR Path="/666B7C2B/666C8765" Ref="U2"  Part="1" 
F 0 "U2" H 6525 4600 50  0000 C CNN
F 1 "NE555P" H 6825 4250 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 7475 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 7675 3850 50  0001 C CNN
	1    6825 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 666C876B
P 5700 3650
AR Path="/666C876B" Ref="#PWR?"  Part="1" 
AR Path="/666B7C2B/666C876B" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 5700 3500 50  0001 C CNN
F 1 "+5V" H 5700 3790 50  0000 C CNN
F 2 "" H 5700 3650 50  0000 C CNN
F 3 "" H 5700 3650 50  0000 C CNN
	1    5700 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 666C8771
P 4575 3025
AR Path="/666C8771" Ref="R?"  Part="1" 
AR Path="/666B7C2B/666C8771" Ref="R1"  Part="1" 
F 0 "R1" V 4368 3025 50  0000 C CNN
F 1 "100k" V 4459 3025 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4505 3025 50  0001 C CNN
F 3 "~" H 4575 3025 50  0001 C CNN
	1    4575 3025
	-1   0    0    1   
$EndComp
Wire Wire Line
	4575 2875 4575 2800
$Comp
L Device:C_Small C?
U 1 1 666C8778
P 6150 4625
AR Path="/666C8778" Ref="C?"  Part="1" 
AR Path="/666B7C2B/666C8778" Ref="C3"  Part="1" 
F 0 "C3" V 6325 4575 50  0000 L CNN
F 1 "10nF" V 6250 4500 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 6150 4625 50  0001 C CNN
F 3 "" H 6150 4625 50  0001 C CNN
	1    6150 4625
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 666C877E
P 6825 4650
AR Path="/666C877E" Ref="#PWR?"  Part="1" 
AR Path="/666B7C2B/666C877E" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 6825 4400 50  0001 C CNN
F 1 "GND" H 6830 4477 50  0000 C CNN
F 2 "" H 6825 4650 50  0001 C CNN
F 3 "" H 6825 4650 50  0001 C CNN
	1    6825 4650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 666C8784
P 5200 4050
AR Path="/666C8784" Ref="Q?"  Part="1" 
AR Path="/666B7C2B/666C8784" Ref="Q1"  Part="1" 
F 0 "Q1" H 5075 4100 50  0000 R CNN
F 1 "2N3906" H 5075 4175 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 5400 3975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 5200 4050 50  0001 L CNN
	1    5200 4050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 666C878A
P 5700 3800
AR Path="/666C878A" Ref="R?"  Part="1" 
AR Path="/666B7C2B/666C878A" Ref="R2"  Part="1" 
F 0 "R2" V 5493 3800 50  0000 C CNN
F 1 "10k" V 5584 3800 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5630 3800 50  0001 C CNN
F 3 "~" H 5700 3800 50  0001 C CNN
	1    5700 3800
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 666C8791
P 4575 2800
AR Path="/666C8791" Ref="#PWR?"  Part="1" 
AR Path="/666B7C2B/666C8791" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 4575 2650 50  0001 C CNN
F 1 "+5V" H 4575 2940 50  0000 C CNN
F 2 "" H 4575 2800 50  0000 C CNN
F 3 "" H 4575 2800 50  0000 C CNN
	1    4575 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 666C8797
P 6250 4450
AR Path="/666C8797" Ref="#PWR?"  Part="1" 
AR Path="/666B7C2B/666C8797" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 6250 4300 50  0001 C CNN
F 1 "+5V" H 6250 4590 50  0000 C CNN
F 2 "" H 6250 4450 50  0000 C CNN
F 3 "" H 6250 4450 50  0000 C CNN
	1    6250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4450 6325 4450
Wire Wire Line
	6150 4525 6150 4250
$Comp
L Device:CP_Small C?
U 1 1 666C879F
P 4575 3525
AR Path="/666C879F" Ref="C?"  Part="1" 
AR Path="/666B7C2B/666C879F" Ref="C2"  Part="1" 
F 0 "C2" H 4690 3571 50  0000 L CNN
F 1 "3.3uF" H 4690 3480 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4575 3525 50  0001 C CNN
F 3 "~" H 4575 3525 50  0001 C CNN
	1    4575 3525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 666C87A8
P 5100 4250
AR Path="/666C87A8" Ref="#PWR?"  Part="1" 
AR Path="/666B7C2B/666C87A8" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 5100 4000 50  0001 C CNN
F 1 "GND" H 5105 4077 50  0000 C CNN
F 2 "" H 5100 4250 50  0001 C CNN
F 3 "" H 5100 4250 50  0001 C CNN
	1    5100 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 666C87AE
P 4575 3725
AR Path="/666C87AE" Ref="#PWR?"  Part="1" 
AR Path="/666B7C2B/666C87AE" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 4575 3475 50  0001 C CNN
F 1 "GND" H 4580 3552 50  0000 C CNN
F 2 "" H 4575 3725 50  0001 C CNN
F 3 "" H 4575 3725 50  0001 C CNN
	1    4575 3725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 666C87B4
P 6150 4725
AR Path="/666C87B4" Ref="#PWR?"  Part="1" 
AR Path="/666B7C2B/666C87B4" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 6150 4475 50  0001 C CNN
F 1 "GND" H 6155 4552 50  0000 C CNN
F 2 "" H 6150 4725 50  0001 C CNN
F 3 "" H 6150 4725 50  0001 C CNN
	1    6150 4725
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 666C87BA
P 6825 3700
AR Path="/666C87BA" Ref="#PWR?"  Part="1" 
AR Path="/666B7C2B/666C87BA" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 6825 3550 50  0001 C CNN
F 1 "+5V" H 6825 3840 50  0000 C CNN
F 2 "" H 6825 3700 50  0000 C CNN
F 3 "" H 6825 3700 50  0000 C CNN
	1    6825 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 3175 4575 3250
Connection ~ 4575 3250
Connection ~ 7575 4250
Wire Wire Line
	7575 4250 7575 4450
Wire Wire Line
	7325 4450 7575 4450
Wire Wire Line
	7325 4250 7575 4250
$Comp
L Device:C_Small C?
U 1 1 666C87C6
P 7125 3775
AR Path="/666C87C6" Ref="C?"  Part="1" 
AR Path="/666B7C2B/666C87C6" Ref="C4"  Part="1" 
F 0 "C4" V 7300 3725 50  0000 L CNN
F 1 "100nF" V 7225 3650 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7125 3775 50  0001 C CNN
F 3 "" H 7125 3775 50  0001 C CNN
	1    7125 3775
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6825 3775 6825 3850
Wire Wire Line
	6825 3700 6825 3775
Connection ~ 6825 3775
$Comp
L power:GND #PWR?
U 1 1 666C87CF
P 7400 3825
AR Path="/666C87CF" Ref="#PWR?"  Part="1" 
AR Path="/666B7C2B/666C87CF" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 7400 3575 50  0001 C CNN
F 1 "GND" H 7405 3652 50  0000 C CNN
F 2 "" H 7400 3825 50  0001 C CNN
F 3 "" H 7400 3825 50  0001 C CNN
	1    7400 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	7575 3250 7575 4250
Wire Wire Line
	4575 3250 4575 3425
Wire Wire Line
	4575 3625 4575 3725
Wire Wire Line
	6150 4250 6325 4250
Wire Wire Line
	5100 3250 5100 3850
Wire Wire Line
	4575 3250 5100 3250
Connection ~ 5100 3250
Wire Wire Line
	7400 3825 7400 3775
Wire Wire Line
	6825 3775 7025 3775
Wire Wire Line
	7225 3775 7400 3775
Text HLabel 3825 4050 0    50   Input ~ 0
MIDI
Text HLabel 7925 4050 2    50   Output ~ 0
Activity
Wire Wire Line
	5100 3250 7575 3250
Wire Wire Line
	5700 3950 5700 4050
Connection ~ 5700 4050
Wire Wire Line
	5700 4050 6325 4050
Wire Wire Line
	5700 4050 5700 4725
Wire Wire Line
	5400 4050 5700 4050
Wire Wire Line
	4250 4725 5700 4725
Wire Wire Line
	3825 4050 4250 4050
Wire Wire Line
	4250 4050 4250 4725
Wire Wire Line
	7325 4050 7925 4050
$EndSCHEMATC
