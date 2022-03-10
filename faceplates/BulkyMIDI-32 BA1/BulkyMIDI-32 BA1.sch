EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "BulkyMIDI-32 Backplate (BA1)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "It's just a backplate, nothing much here apart from mechanical components."
$EndDescr
$Comp
L mounting:Mounting_Pin M1
U 1 1 5E3B603D
P 15550 600
F 0 "M1" H 15550 700 50  0001 C CNN
F 1 "Mounting" H 15550 525 50  0001 C CNN
F 2 "mounting:M3_pin" H 15550 600 50  0001 C CNN
F 3 "" H 15550 600 50  0001 C CNN
	1    15550 600 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M2
U 1 1 62D2AC13
P 15675 600
F 0 "M2" H 15675 700 50  0001 C CNN
F 1 "Mounting" H 15675 525 50  0001 C CNN
F 2 "mounting:M3_pin" H 15675 600 50  0001 C CNN
F 3 "" H 15675 600 50  0001 C CNN
	1    15675 600 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M3
U 1 1 5E3B605A
P 15800 600
F 0 "M3" H 15800 700 50  0001 C CNN
F 1 "Mounting" H 15800 525 50  0001 C CNN
F 2 "mounting:M3_pin" H 15800 600 50  0001 C CNN
F 3 "" H 15800 600 50  0001 C CNN
	1    15800 600 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M4
U 1 1 5E3B6065
P 15925 600
F 0 "M4" H 15925 700 50  0001 C CNN
F 1 "Mounting" H 15925 525 50  0001 C CNN
F 2 "mounting:M3_pin" H 15925 600 50  0001 C CNN
F 3 "" H 15925 600 50  0001 C CNN
	1    15925 600 
	1    0    0    -1  
$EndComp
Wire Wire Line
	15550 750  15550 825 
Wire Wire Line
	15550 825  15675 825 
Wire Wire Line
	15925 825  15925 750 
Wire Wire Line
	15800 750  15800 825 
Connection ~ 15800 825 
Wire Wire Line
	15800 825  15925 825 
Wire Wire Line
	15675 750  15675 825 
Connection ~ 15675 825 
Wire Wire Line
	15675 825  15800 825 
$EndSCHEMATC
