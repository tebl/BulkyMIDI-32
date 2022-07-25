EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BulkyMIDI-32 Faceplate (FB2)"
Date ""
Rev "A"
Comp ""
Comment1 "Features the 8bit version of the logo."
Comment2 ""
Comment3 "no active components, but makes the front panels mechanically viable."
Comment4 "This is a clean version of the faceplate, intended for use with secondary module. It has"
$EndDescr
$Comp
L Connector:Conn_01x01_Female M1
U 1 1 5E3B603D
P 10775 550
F 0 "M1" H 10775 650 50  0001 C CNN
F 1 "Mounting" H 10775 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10775 550 50  0001 C CNN
F 3 "" H 10775 550 50  0001 C CNN
	1    10775 550 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female M2
U 1 1 61F083B7
P 10900 550
F 0 "M2" H 10900 650 50  0001 C CNN
F 1 "Mounting" H 10900 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10900 550 50  0001 C CNN
F 3 "" H 10900 550 50  0001 C CNN
	1    10900 550 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female M3
U 1 1 5E3B605A
P 11025 550
F 0 "M3" H 11025 650 50  0001 C CNN
F 1 "Mounting" H 11025 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 11025 550 50  0001 C CNN
F 3 "" H 11025 550 50  0001 C CNN
	1    11025 550 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female M4
U 1 1 61F083B9
P 11150 550
F 0 "M4" H 11150 650 50  0001 C CNN
F 1 "Mounting" H 11150 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 11150 550 50  0001 C CNN
F 3 "" H 11150 550 50  0001 C CNN
	1    11150 550 
	0    -1   -1   0   
$EndComp
NoConn ~ 6650 100 
Wire Wire Line
	10775 750  10775 825 
Wire Wire Line
	10775 825  10900 825 
Wire Wire Line
	11150 825  11150 750 
Wire Wire Line
	11025 750  11025 825 
Connection ~ 11025 825 
Wire Wire Line
	11025 825  11150 825 
Wire Wire Line
	10900 750  10900 825 
Connection ~ 10900 825 
Wire Wire Line
	10900 825  11025 825 
$EndSCHEMATC
