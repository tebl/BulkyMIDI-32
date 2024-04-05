EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "BulkyMIDI-32 Power Switch"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "able to turn them on and off."
Comment4 "This might be completely silly, but with all of the modules together - I wanted to be"
$EndDescr
$Comp
L mounting:Mounting M1
U 1 1 5E3B603D
P 10750 575
F 0 "M1" H 10750 675 50  0001 C CNN
F 1 "Mounting" H 10750 500 50  0001 C CNN
F 2 "mounting:M3" H 10750 575 50  0001 C CNN
F 3 "" H 10750 575 50  0001 C CNN
	1    10750 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 62D2AC13
P 10875 575
F 0 "M2" H 10875 675 50  0001 C CNN
F 1 "Mounting" H 10875 500 50  0001 C CNN
F 2 "mounting:M3" H 10875 575 50  0001 C CNN
F 3 "" H 10875 575 50  0001 C CNN
	1    10875 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 5E3B605A
P 11000 575
F 0 "M3" H 11000 675 50  0001 C CNN
F 1 "Mounting" H 11000 500 50  0001 C CNN
F 2 "mounting:M3" H 11000 575 50  0001 C CNN
F 3 "" H 11000 575 50  0001 C CNN
	1    11000 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 5E3B6065
P 11125 575
F 0 "M4" H 11125 675 50  0001 C CNN
F 1 "Mounting" H 11125 500 50  0001 C CNN
F 2 "mounting:M3" H 11125 575 50  0001 C CNN
F 3 "" H 11125 575 50  0001 C CNN
	1    11125 575 
	1    0    0    -1  
$EndComp
$Comp
L barrel_jack:barrel_9v J1
U 1 1 5E61D3D0
P 2275 6525
F 0 "J1" H 2354 6850 50  0000 C CNN
F 1 "DC IN" H 2354 6759 50  0000 C CNN
F 2 "BulkyMIDI-32:BARREL_JACK" H 2325 6485 50  0001 C CNN
F 3 "~" H 2325 6485 50  0001 C CNN
	1    2275 6525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E61DE6E
P 3400 6875
F 0 "#PWR0101" H 3400 6625 50  0001 C CNN
F 1 "GND" H 3405 6702 50  0000 C CNN
F 2 "" H 3400 6875 50  0001 C CNN
F 3 "" H 3400 6875 50  0001 C CNN
	1    3400 6875
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5E6B750D
P 3400 6350
F 0 "#PWR0106" H 3400 6200 50  0001 C CNN
F 1 "+5V" H 3400 6500 50  0000 C CNN
F 2 "" H 3400 6350 50  0001 C CNN
F 3 "" H 3400 6350 50  0001 C CNN
	1    3400 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C6
U 1 1 5F9F946B
P 3400 6650
F 0 "C6" H 3515 6696 50  0000 L CNN
F 1 "470uF" H 3515 6605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3400 6650 50  0001 C CNN
F 3 "~" H 3400 6650 50  0001 C CNN
	1    3400 6650
	1    0    0    -1  
$EndComp
NoConn ~ 6600 150 
$Comp
L BulkyMIDI:DC_5V SYM1
U 1 1 623726BF
P 2350 6025
F 0 "SYM1" H 2350 6246 50  0001 C CNN
F 1 "DC_5V" H 2350 6154 50  0000 C CNN
F 2 "BulkyMIDI-32:PWR_Specification" H 2225 6125 50  0001 C CNN
F 3 "" H 2225 6125 50  0001 C CNN
	1    2350 6025
	1    0    0    -1  
$EndComp
Text Notes 1700 5500 0    50   ~ 0
Power section
$Comp
L Switch:SW_Push SW1
U 1 1 6304EAD7
P 1875 2050
F 0 "SW1" H 1875 2335 50  0000 C CNN
F 1 "CH1" H 1875 2244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 1875 2250 50  0001 C CNN
F 3 "~" H 1875 2250 50  0001 C CNN
	1    1875 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2575 6525 2650 6525
Wire Wire Line
	2650 6525 2650 6625
Wire Wire Line
	3400 6350 3400 6425
Wire Notes Line
	1675 5400 1675 7450
Wire Notes Line
	5650 5400 5650 7450
Wire Notes Line
	5650 5400 1675 5400
Wire Notes Line
	5650 7450 1675 7450
Wire Wire Line
	1675 2050 1600 2050
Wire Wire Line
	1675 2475 1600 2475
$Comp
L power:GND #PWR0117
U 1 1 630A876C
P 1600 4600
F 0 "#PWR0117" H 1600 4350 50  0001 C CNN
F 1 "GND" H 1605 4427 50  0000 C CNN
F 2 "" H 1600 4600 50  0001 C CNN
F 3 "" H 1600 4600 50  0001 C CNN
	1    1600 4600
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 6305E7C3
P 1875 2475
F 0 "SW2" H 1875 2760 50  0000 C CNN
F 1 "CH2" H 1875 2669 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 1875 2675 50  0001 C CNN
F 3 "~" H 1875 2675 50  0001 C CNN
	1    1875 2475
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1675 2900 1600 2900
Wire Wire Line
	1675 3300 1600 3300
$Comp
L Switch:SW_Push SW4
U 1 1 63057E26
P 1875 3300
F 0 "SW4" H 1875 3585 50  0000 C CNN
F 1 "CH4" H 1875 3494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 1875 3500 50  0001 C CNN
F 3 "~" H 1875 3500 50  0001 C CNN
	1    1875 3300
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 63052422
P 1875 2900
F 0 "SW3" H 1875 3185 50  0000 C CNN
F 1 "CH3" H 1875 3094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 1875 3100 50  0001 C CNN
F 3 "~" H 1875 3100 50  0001 C CNN
	1    1875 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1600 2050 1600 2475
Connection ~ 1600 2475
Wire Wire Line
	1600 2475 1600 2900
Connection ~ 1600 2900
Wire Wire Line
	1600 2900 1600 3300
Wire Wire Line
	1675 3700 1600 3700
$Comp
L Switch:SW_Push SW5
U 1 1 62D3A6F0
P 1875 3700
F 0 "SW5" H 1875 3985 50  0000 C CNN
F 1 "CH5" H 1875 3894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 1875 3900 50  0001 C CNN
F 3 "~" H 1875 3900 50  0001 C CNN
	1    1875 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1600 3300 1600 3700
Text Label 2100 2050 0    50   ~ 0
SW1
Text Label 2100 2475 0    50   ~ 0
SW2
Text Label 2100 2900 0    50   ~ 0
SW3
Text Label 2100 3300 0    50   ~ 0
SW4
Text Label 2100 3700 0    50   ~ 0
SW5
Connection ~ 1600 3300
Connection ~ 1600 3700
Text Label 7575 2050 0    50   ~ 0
LED1
Text Label 7575 2150 0    50   ~ 0
LED2
Text Label 7575 2250 0    50   ~ 0
LED3
Text Label 7575 2350 0    50   ~ 0
LED4
Text Label 7575 2450 0    50   ~ 0
LED5
Text Label 9900 2950 0    50   ~ 0
LED5
Text Label 9900 2750 0    50   ~ 0
LED4
Text Label 9900 2550 0    50   ~ 0
LED3
Text Label 9900 2350 0    50   ~ 0
LED2
Text Label 9900 2150 0    50   ~ 0
LED1
Text Label 9900 2850 0    50   ~ 0
SW5
Text Label 9900 2650 0    50   ~ 0
SW4
Text Label 9900 2450 0    50   ~ 0
SW3
Text Label 9900 2250 0    50   ~ 0
SW2
Text Label 9900 2050 0    50   ~ 0
SW1
Entry Wire Line
	9875 2950 9775 2850
Entry Wire Line
	9875 2850 9775 2750
Entry Wire Line
	9875 2750 9775 2650
Entry Wire Line
	9875 2650 9775 2550
Entry Wire Line
	9875 2550 9775 2450
Entry Wire Line
	9875 2450 9775 2350
Entry Wire Line
	9875 2350 9775 2250
Entry Wire Line
	9875 2250 9775 2150
Entry Wire Line
	9875 2150 9775 2050
Entry Wire Line
	9875 2050 9775 1950
Wire Wire Line
	10475 1850 10475 3650
Wire Wire Line
	10400 1675 10400 1750
$Comp
L power:+5V #PWR0120
U 1 1 63514BEA
P 10400 1675
F 0 "#PWR0120" H 10400 1525 50  0001 C CNN
F 1 "+5V" H 10400 1815 50  0000 C CNN
F 2 "" H 10400 1675 50  0000 C CNN
F 3 "" H 10400 1675 50  0000 C CNN
	1    10400 1675
	-1   0    0    -1  
$EndComp
Connection ~ 10475 3650
Wire Wire Line
	10475 3800 10475 3650
$Comp
L power:GND #PWR0118
U 1 1 635034D3
P 10475 3800
F 0 "#PWR0118" H 10475 3550 50  0001 C CNN
F 1 "GND" H 10480 3627 50  0000 C CNN
F 2 "" H 10475 3800 50  0001 C CNN
F 3 "" H 10475 3800 50  0001 C CNN
	1    10475 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1750 10550 1750
Wire Wire Line
	10475 3650 10550 3650
Wire Wire Line
	10550 1850 10475 1850
$Comp
L BulkyMIDI:Power_Panel J6
U 1 1 6340BF35
P 10750 2750
F 0 "J6" H 10768 3975 50  0000 C CNN
F 1 "Power Panel" H 10768 3884 50  0000 C CNN
F 2 "BulkyMIDI-32:Switch_Panel" H 10750 2750 50  0001 C CNN
F 3 "~" H 10750 2750 50  0001 C CNN
	1    10750 2750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5819 D1
U 1 1 66131C9C
P 3100 6425
F 0 "D1" H 3100 6208 50  0000 C CNN
F 1 "1N5819" H 3100 6299 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3100 6250 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 3100 6425 50  0001 C CNN
	1    3100 6425
	-1   0    0    1   
$EndComp
Wire Wire Line
	2575 6625 2650 6625
Connection ~ 2650 6625
Wire Wire Line
	3250 6425 3400 6425
$Comp
L power:GND #PWR0102
U 1 1 66145DCB
P 2650 6700
F 0 "#PWR0102" H 2650 6450 50  0001 C CNN
F 1 "GND" H 2655 6527 50  0000 C CNN
F 2 "" H 2650 6700 50  0001 C CNN
F 3 "" H 2650 6700 50  0001 C CNN
	1    2650 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6625 2650 6700
Wire Wire Line
	3400 6500 3400 6425
Connection ~ 3400 6425
Wire Wire Line
	3400 6800 3400 6875
$Sheet
S 6700 1975 850  1100
U 635D4EBA
F0 "Channel Control" 50
F1 "Channels.sch" 50
F2 "CH1" I L 6700 2050 50 
F3 "CH2" I L 6700 2150 50 
F4 "CH3" I L 6700 2250 50 
F5 "CH4" I L 6700 2350 50 
F6 "CH5" I L 6700 2450 50 
F7 "LED1" O R 7550 2050 50 
F8 "LED2" O R 7550 2150 50 
F9 "LED3" O R 7550 2250 50 
F10 "LED4" O R 7550 2350 50 
F11 "LED5" O R 7550 2450 50 
$EndSheet
$Comp
L barrel_jack:VIN #PWR0113
U 1 1 6646E06E
P 2800 6350
F 0 "#PWR0113" H 2800 6200 50  0001 C CNN
F 1 "VIN" H 2817 6523 50  0000 C CNN
F 2 "" H 2800 6350 50  0001 C CNN
F 3 "" H 2800 6350 50  0001 C CNN
	1    2800 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6350 2800 6425
Wire Wire Line
	2800 6425 2950 6425
Wire Wire Line
	2575 6425 2800 6425
Connection ~ 2800 6425
Wire Wire Line
	7550 2050 7900 2050
Wire Wire Line
	7550 2150 7900 2150
Wire Wire Line
	7550 2250 7900 2250
Wire Wire Line
	7550 2350 7900 2350
Wire Wire Line
	7550 2450 7900 2450
$Comp
L arduino_pro_micro:Arduino_Pro_Micro A1
U 1 1 66499DD0
P 5200 1900
F 0 "A1" H 5250 2375 50  0000 L CNN
F 1 "Arduino_Pro_Micro" H 5250 2300 50  0000 L CNN
F 2 "arduino_pro_micro:Arduino_Pro_Micro" H 5150 1900 50  0001 C CNN
F 3 "~" H 5150 1900 50  0001 C CNN
	1    5200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3000 5100 3075
Wire Wire Line
	5100 3075 5200 3075
Wire Wire Line
	5300 3075 5300 3000
Wire Wire Line
	5300 3075 5300 3150
Connection ~ 5300 3075
Wire Wire Line
	5200 3000 5200 3075
Connection ~ 5200 3075
Wire Wire Line
	5200 3075 5300 3075
$Comp
L power:GND #PWR0114
U 1 1 6649DC3A
P 5300 3150
F 0 "#PWR0114" H 5300 2900 50  0001 C CNN
F 1 "GND" H 5305 2977 50  0000 C CNN
F 2 "" H 5300 3150 50  0001 C CNN
F 3 "" H 5300 3150 50  0001 C CNN
	1    5300 3150
	-1   0    0    -1  
$EndComp
NoConn ~ 4725 1650
NoConn ~ 4725 1750
NoConn ~ 5675 1650
NoConn ~ 5675 1850
$Comp
L power:+5V #PWR0115
U 1 1 664A4D53
P 5200 1400
F 0 "#PWR0115" H 5200 1250 50  0001 C CNN
F 1 "+5V" H 5200 1550 50  0000 C CNN
F 2 "" H 5200 1400 50  0001 C CNN
F 3 "" H 5200 1400 50  0001 C CNN
	1    5200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3700 1600 4100
Text Label 4700 2050 2    50   ~ 0
SW1
Text Label 4700 2150 2    50   ~ 0
SW2
Text Label 4700 2250 2    50   ~ 0
SW3
Text Label 4700 2350 2    50   ~ 0
SW4
Text Label 4700 2450 2    50   ~ 0
SW5
$Comp
L Device:R R1
U 1 1 664E2F97
P 4650 2975
AR Path="/664E2F97" Ref="R1"  Part="1" 
AR Path="/635D4EBA/664E2F97" Ref="R?"  Part="1" 
F 0 "R1" H 4580 2929 50  0000 R CNN
F 1 "470" H 4580 3020 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4580 2975 50  0001 C CNN
F 3 "~" H 4650 2975 50  0001 C CNN
	1    4650 2975
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 664E799F
P 4650 3425
F 0 "D2" V 4689 3307 50  0000 R CNN
F 1 "LED" V 4598 3307 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4650 3425 50  0001 C CNN
F 3 "~" H 4650 3425 50  0001 C CNN
	1    4650 3425
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 664E9624
P 4650 3575
F 0 "#PWR0119" H 4650 3325 50  0001 C CNN
F 1 "GND" H 4655 3402 50  0000 C CNN
F 2 "" H 4650 3575 50  0001 C CNN
F 3 "" H 4650 3575 50  0001 C CNN
	1    4650 3575
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 2825 4650 2750
Wire Wire Line
	4650 2750 4725 2750
Text GLabel 4475 3275 3    50   Output ~ 0
PWR
Wire Wire Line
	4650 3125 4650 3200
Wire Wire Line
	4650 3200 4475 3200
Wire Wire Line
	4475 3200 4475 3275
Wire Wire Line
	4650 3200 4650 3275
Connection ~ 4650 3200
Text GLabel 10325 1950 0    50   Input ~ 0
PWR
Wire Wire Line
	10325 1950 10550 1950
Wire Wire Line
	2075 2050 2425 2050
Wire Wire Line
	2075 2475 2425 2475
Wire Wire Line
	2075 2900 2425 2900
Wire Wire Line
	2075 3300 2425 3300
Wire Wire Line
	2075 3700 2425 3700
Wire Wire Line
	4725 2050 4375 2050
Wire Wire Line
	4725 2150 4375 2150
Wire Wire Line
	4725 2250 4375 2250
Wire Wire Line
	4725 2350 4375 2350
Wire Wire Line
	4725 2450 4375 2450
$Comp
L Switch:SW_Push SW6
U 1 1 665240AF
P 1875 4100
F 0 "SW6" H 1875 4385 50  0000 C CNN
F 1 "SYS" H 1875 4294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 1875 4300 50  0001 C CNN
F 3 "~" H 1875 4300 50  0001 C CNN
	1    1875 4100
	-1   0    0    -1  
$EndComp
Text Label 2100 4100 0    50   ~ 0
SW6
Wire Wire Line
	2075 4100 2425 4100
Wire Wire Line
	1675 4100 1600 4100
Connection ~ 1600 4100
Wire Wire Line
	1600 4100 1600 4600
Text Label 4700 2550 2    50   ~ 0
SW6
Wire Wire Line
	4725 2550 4375 2550
Text Label 9900 3050 0    50   ~ 0
SW6
Entry Wire Line
	9875 3050 9775 2950
Text GLabel 10325 3150 0    50   Input ~ 0
SYS
Wire Wire Line
	10325 3150 10550 3150
Wire Wire Line
	9875 2050 10550 2050
Wire Wire Line
	9875 2150 10550 2150
Wire Wire Line
	9875 2250 10550 2250
Wire Wire Line
	9875 2350 10550 2350
Wire Wire Line
	9875 2450 10550 2450
Wire Wire Line
	9875 2550 10550 2550
Wire Wire Line
	9875 2650 10550 2650
Wire Wire Line
	9875 2750 10550 2750
Wire Wire Line
	9875 2850 10550 2850
Wire Wire Line
	9875 2950 10550 2950
Wire Wire Line
	9875 3050 10550 3050
NoConn ~ 4725 2650
$Comp
L Device:R R2
U 1 1 6655E4D4
P 5750 2975
AR Path="/6655E4D4" Ref="R2"  Part="1" 
AR Path="/635D4EBA/6655E4D4" Ref="R?"  Part="1" 
F 0 "R2" H 5680 2929 50  0000 R CNN
F 1 "470" H 5680 3020 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 2975 50  0001 C CNN
F 3 "~" H 5750 2975 50  0001 C CNN
	1    5750 2975
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 6655E4DA
P 5750 3425
F 0 "D3" V 5789 3307 50  0000 R CNN
F 1 "LED" V 5698 3307 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 5750 3425 50  0001 C CNN
F 3 "~" H 5750 3425 50  0001 C CNN
	1    5750 3425
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 6655E4E0
P 5750 3575
F 0 "#PWR0122" H 5750 3325 50  0001 C CNN
F 1 "GND" H 5755 3402 50  0000 C CNN
F 2 "" H 5750 3575 50  0001 C CNN
F 3 "" H 5750 3575 50  0001 C CNN
	1    5750 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2825 5750 2750
Wire Wire Line
	5750 2750 5675 2750
Text GLabel 5925 3275 3    50   Output ~ 0
SYS
Wire Wire Line
	5750 3125 5750 3200
Wire Wire Line
	5750 3200 5925 3200
Wire Wire Line
	5925 3200 5925 3275
Wire Wire Line
	5750 3200 5750 3275
Connection ~ 5750 3200
NoConn ~ 5675 2550
NoConn ~ 5675 2650
Wire Wire Line
	5675 2050 6700 2050
Wire Wire Line
	5675 2150 6700 2150
Wire Wire Line
	5675 2250 6700 2250
Wire Wire Line
	5675 2350 6700 2350
Wire Wire Line
	5675 2450 6700 2450
Text Label 5700 2050 0    50   ~ 0
CH1
Text Label 5700 2150 0    50   ~ 0
CH2
Text Label 5700 2250 0    50   ~ 0
CH3
Text Label 5700 2350 0    50   ~ 0
CH4
Text Label 5700 2450 0    50   ~ 0
CH5
Entry Wire Line
	8000 1950 7900 2050
Entry Wire Line
	8000 2050 7900 2150
Entry Wire Line
	8000 2150 7900 2250
Entry Wire Line
	8000 2250 7900 2350
Entry Wire Line
	8000 2350 7900 2450
Entry Wire Line
	4275 1950 4375 2050
Entry Wire Line
	4275 2050 4375 2150
Entry Wire Line
	4275 2150 4375 2250
Entry Wire Line
	4275 2250 4375 2350
Entry Wire Line
	4275 2350 4375 2450
Entry Wire Line
	4275 2450 4375 2550
Entry Wire Line
	2525 1950 2425 2050
Entry Wire Line
	2525 2375 2425 2475
Entry Wire Line
	2525 2800 2425 2900
Entry Wire Line
	2525 3200 2425 3300
Entry Wire Line
	2525 3600 2425 3700
Entry Wire Line
	2525 4000 2425 4100
Wire Bus Line
	2525 1000 4275 1000
Connection ~ 4275 1000
Wire Bus Line
	4275 1000 8000 1000
Connection ~ 8000 1000
Wire Bus Line
	8000 1000 9775 1000
Wire Bus Line
	8000 1000 8000 2350
Wire Bus Line
	4275 1000 4275 2450
Wire Bus Line
	2525 1000 2525 4000
Wire Bus Line
	9775 1000 9775 2950
$EndSCHEMATC
