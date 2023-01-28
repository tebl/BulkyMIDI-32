EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Module (FP2)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Use with 1.3\" display without the extras-board."
Comment4 "Module front panel, mounts on the panel itself."
$EndDescr
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
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 62926ECA
P 10600 725
F 0 "#FLG0101" H 10600 800 50  0001 C CNN
F 1 "PWR_FLAG" H 10600 898 50  0001 C CNN
F 2 "" H 10600 725 50  0001 C CNN
F 3 "~" H 10600 725 50  0001 C CNN
	1    10600 725 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 725  10600 800 
Wire Wire Line
	10600 800  10725 800 
Connection ~ 10725 800 
$EndSCHEMATC
