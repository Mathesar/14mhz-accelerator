EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Dennis
LIBS:14MHz_Accelerator_V2_2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "14MHz accelerator"
Date "2021-06-30"
Rev "2.2"
Comp "Livio Plos / Jorg Richter / Dennis van Weeren"
Comment1 "rev 2.0 added fast ram"
Comment2 "rev 2.1 added optional ram disable circuit"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74HCT08 U8
U 1 1 6043E71F
P 5050 1550
F 0 "U8" H 5050 1600 50  0000 C CNN
F 1 "74ACT08" H 5050 1500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 5050 1550 50  0001 C CNN
F 3 "" H 5050 1550 50  0001 C CNN
	1    5050 1550
	1    0    0    1   
$EndComp
$Comp
L 74HCT08 U8
U 2 1 6043E7A0
P 3750 1300
F 0 "U8" H 3750 1350 50  0000 C CNN
F 1 "74ACT08" H 3750 1250 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3750 1300 50  0001 C CNN
F 3 "" H 3750 1300 50  0001 C CNN
	2    3750 1300
	1    0    0    1   
$EndComp
$Comp
L 74HCT08 U8
U 3 1 6043E7F1
P 6400 2450
F 0 "U8" H 6400 2500 50  0000 C CNN
F 1 "74ACT08" H 6400 2400 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 6400 2450 50  0001 C CNN
F 3 "" H 6400 2450 50  0001 C CNN
	3    6400 2450
	1    0    0    -1  
$EndComp
$Comp
L 74HCT08 U8
U 4 1 6043E844
P 4100 3850
F 0 "U8" H 4100 3900 50  0000 C CNN
F 1 "74ACT08" H 4100 3800 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4100 3850 50  0001 C CNN
F 3 "" H 4100 3850 50  0001 C CNN
	4    4100 3850
	1    0    0    1   
$EndComp
$Comp
L 74HCT32 U10
U 2 1 604526F0
P 7700 2350
F 0 "U10" H 7700 2400 50  0000 C CNN
F 1 "74ACT32" H 7700 2300 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 7700 2350 50  0001 C CNN
F 3 "" H 7700 2350 50  0001 C CNN
	2    7700 2350
	1    0    0    -1  
$EndComp
$Comp
L 74HCT32 U10
U 1 1 60452749
P 2450 2050
F 0 "U10" H 2450 2100 50  0000 C CNN
F 1 "74ACT32" H 2450 2000 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2450 2050 50  0001 C CNN
F 3 "" H 2450 2050 50  0001 C CNN
	1    2450 2050
	1    0    0    -1  
$EndComp
$Comp
L 74HCT32 U10
U 4 1 604527A2
P 4100 4850
F 0 "U10" H 4100 4900 50  0000 C CNN
F 1 "74ACT32" H 4100 4800 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4100 4850 50  0001 C CNN
F 3 "" H 4100 4850 50  0001 C CNN
	4    4100 4850
	1    0    0    -1  
$EndComp
$Comp
L 74HCT32 U10
U 3 1 604527F1
P 4100 4350
F 0 "U10" H 4100 4400 50  0000 C CNN
F 1 "74ACT32" H 4100 4300 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4100 4350 50  0001 C CNN
F 3 "" H 4100 4350 50  0001 C CNN
	3    4100 4350
	1    0    0    -1  
$EndComp
Text Notes 3450 1050 0    60   ~ 0
DECODE @ $C00000 - $CFFFFF\nTpd ~~12ns (3 gate delay)\n
$Comp
L GND #PWR029
U 1 1 60455765
P 2150 5400
F 0 "#PWR029" H 2150 5150 50  0001 C CNN
F 1 "GND" H 2150 5250 50  0000 C CNN
F 2 "" H 2150 5400 50  0001 C CNN
F 3 "" H 2150 5400 50  0001 C CNN
	1    2150 5400
	1    0    0    -1  
$EndComp
Text Notes 3200 2650 0    60   ~ 0
delay ~AS_CPU~ to not arrive before ~DECODE~\n(addr setup to ~AS~ on MC68HC000FN20\nmeasured @ ~~35ns)
$Comp
L VCC #PWR030
U 1 1 60456837
P 5750 2550
F 0 "#PWR030" H 5750 2400 50  0001 C CNN
F 1 "VCC" V 5750 2750 50  0000 C CNN
F 2 "" H 5750 2550 50  0001 C CNN
F 3 "" H 5750 2550 50  0001 C CNN
	1    5750 2550
	0    -1   -1   0   
$EndComp
$Comp
L C C13
U 1 1 60458CD7
P 1550 6700
F 0 "C13" H 1600 6800 50  0000 L CNN
F 1 "100n" H 1600 6600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1588 6550 50  0001 C CNN
F 3 "" H 1550 6700 50  0001 C CNN
	1    1550 6700
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 60458CDE
P 1850 6700
F 0 "C14" H 1900 6800 50  0000 L CNN
F 1 "100n" H 1900 6600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1888 6550 50  0001 C CNN
F 3 "" H 1850 6700 50  0001 C CNN
	1    1850 6700
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 60458CE5
P 1250 6700
F 0 "C12" H 1300 6800 50  0000 L CNN
F 1 "100n" H 1300 6600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1288 6550 50  0001 C CNN
F 3 "" H 1250 6700 50  0001 C CNN
	1    1250 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 60458CF6
P 1550 7050
F 0 "#PWR031" H 1550 6800 50  0001 C CNN
F 1 "GND" H 1550 6900 50  0000 C CNN
F 2 "" H 1550 7050 50  0001 C CNN
F 3 "" H 1550 7050 50  0001 C CNN
	1    1550 7050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR032
U 1 1 60458CFC
P 1550 6350
F 0 "#PWR032" H 1550 6200 50  0001 C CNN
F 1 "VCC" H 1550 6500 50  0000 C CNN
F 2 "" H 1550 6350 50  0001 C CNN
F 3 "" H 1550 6350 50  0001 C CNN
	1    1550 6350
	1    0    0    -1  
$EndComp
Text Notes 1700 7100 0    60   ~ 0
decoupling
$Comp
L 74HCT02 U9
U 1 1 6045A7BD
P 3750 1800
F 0 "U9" H 3750 1850 50  0000 C CNN
F 1 "74ACT02" H 3800 1750 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3750 1800 50  0001 C CNN
F 3 "" H 3750 1800 50  0001 C CNN
	1    3750 1800
	1    0    0    1   
$EndComp
$Comp
L 74HCT02 U9
U 2 1 6045A874
P 6400 1950
F 0 "U9" H 6400 2000 50  0000 C CNN
F 1 "74ACT02" H 6450 1900 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 6400 1950 50  0001 C CNN
F 3 "" H 6400 1950 50  0001 C CNN
	2    6400 1950
	1    0    0    -1  
$EndComp
$Comp
L 74HCT02 U9
U 4 1 6045A8B3
P 4100 5550
F 0 "U9" H 4100 5600 50  0000 C CNN
F 1 "74ACT02" H 4150 5500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4100 5550 50  0001 C CNN
F 3 "" H 4100 5550 50  0001 C CNN
	4    4100 5550
	1    0    0    -1  
$EndComp
$Comp
L 74HCT02 U9
U 3 1 6045A908
P 2800 5250
F 0 "U9" H 2800 5300 50  0000 C CNN
F 1 "74ACT02" H 2850 5200 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2800 5250 50  0001 C CNN
F 3 "" H 2800 5250 50  0001 C CNN
	3    2800 5250
	1    0    0    -1  
$EndComp
Entry Wire Line
	1600 1100 1700 1200
Entry Wire Line
	1600 1300 1700 1400
Entry Wire Line
	1600 1600 1700 1700
Entry Wire Line
	1600 1850 1700 1950
Text Label 1750 1200 0    60   ~ 0
A23
Text Label 1750 1400 0    60   ~ 0
A22
Text Label 1750 1700 0    60   ~ 0
A21
Text Label 1750 1950 0    60   ~ 0
A20
Text HLabel 1450 950  0    60   Input ~ 0
A[0..23]
Text HLabel 1450 3550 0    60   Input ~ 0
~DTACK_MB
Text HLabel 1450 4450 0    60   Input ~ 0
~UDS
Text HLabel 1450 4950 0    60   Input ~ 0
~LDS
Text HLabel 1450 5150 0    60   Input ~ 0
R/~W
Text HLabel 5500 3700 2    60   Output ~ 0
~DTACK_CPU
Text HLabel 5500 4350 2    60   Output ~ 0
~CS_URAM
Text HLabel 5500 4850 2    60   Output ~ 0
~CS_LRAM
Text HLabel 5500 5250 2    60   Output ~ 0
~OE_RAM
Text HLabel 5500 5550 2    60   Output ~ 0
~WE_RAM
Text HLabel 1450 2350 0    60   Input ~ 0
~AS_CPU
Text HLabel 8300 1550 2    60   Output ~ 0
DECODE
$Comp
L GS3 JP3
U 1 1 609EF6C4
P 4950 3700
F 0 "JP3" H 5000 3900 50  0000 C CNN
F 1 "GS3" H 5000 3501 50  0000 C CNN
F 2 "Connectors:GS3" V 5038 3626 50  0001 C CNN
F 3 "" H 4950 3700 50  0001 C CNN
	1    4950 3700
	1    0    0    1   
$EndComp
$Comp
L GND #PWR033
U 1 1 60A171BC
P 5700 2100
F 0 "#PWR033" H 5700 1850 50  0001 C CNN
F 1 "GND" H 5700 1950 50  0000 C CNN
F 2 "" H 5700 2100 50  0001 C CNN
F 3 "" H 5700 2100 50  0001 C CNN
	1    5700 2100
	1    0    0    -1  
$EndComp
Text GLabel 8300 2350 2    60   Output ~ 0
~RAM_CYCLE
Text GLabel 3150 3950 0    60   Input ~ 0
~RAM_CYCLE
Text Label 7050 1950 0    60   ~ 0
~DECODE
$Comp
L TLC555CD U11
U 1 1 60A41254
P 8750 4250
F 0 "U11" H 8350 4600 50  0000 L CNN
F 1 "TLC555CD" H 8950 3900 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 8750 4250 50  0001 C CNN
F 3 "" H 8750 4250 50  0001 C CNN
	1    8750 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 60A41B9A
P 7600 5200
F 0 "#PWR034" H 7600 4950 50  0001 C CNN
F 1 "GND" H 7600 5050 50  0000 C CNN
F 2 "" H 7600 5200 50  0001 C CNN
F 3 "" H 7600 5200 50  0001 C CNN
	1    7600 5200
	-1   0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 60A41D3C
P 7750 4050
F 0 "R5" V 7830 4050 50  0000 C CNN
F 1 "100K" V 7750 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7680 4050 50  0001 C CNN
F 3 "" H 7750 4050 50  0001 C CNN
	1    7750 4050
	0    1    1    0   
$EndComp
$Comp
L CP C16
U 1 1 60A41E3B
P 8200 3550
F 0 "C16" H 8225 3650 50  0000 L CNN
F 1 "47u/16V" H 8250 3450 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 8238 3400 50  0001 C CNN
F 3 "" H 8200 3550 50  0001 C CNN
	1    8200 3550
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 60A42126
P 9000 3550
F 0 "C17" H 9050 3650 50  0000 L CNN
F 1 "100n" H 9050 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9038 3400 50  0001 C CNN
F 3 "" H 9000 3550 50  0001 C CNN
	1    9000 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 60A42305
P 9000 3750
F 0 "#PWR035" H 9000 3500 50  0001 C CNN
F 1 "GND" H 9000 3600 50  0000 C CNN
F 2 "" H 9000 3750 50  0001 C CNN
F 3 "" H 9000 3750 50  0001 C CNN
	1    9000 3750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR036
U 1 1 60A42C44
P 8750 3300
F 0 "#PWR036" H 8750 3150 50  0001 C CNN
F 1 "VCC" H 8750 3450 50  0000 C CNN
F 2 "" H 8750 3300 50  0001 C CNN
F 3 "" H 8750 3300 50  0001 C CNN
	1    8750 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 60A42EA1
P 8750 4700
F 0 "#PWR037" H 8750 4450 50  0001 C CNN
F 1 "GND" H 8750 4550 50  0000 C CNN
F 2 "" H 8750 4700 50  0001 C CNN
F 3 "" H 8750 4700 50  0001 C CNN
	1    8750 4700
	1    0    0    -1  
$EndComp
Text GLabel 10350 4150 2    60   Output ~ 0
RAM_DIS
Text GLabel 1450 2150 0    60   Input ~ 0
RAM_DIS
Text HLabel 7400 4500 0    60   Input ~ 0
~RESET
$Comp
L 74HCT02 U4
U 4 1 60A44AC4
P 8250 5050
F 0 "U4" H 8250 5100 50  0000 C CNN
F 1 "74ACT02" H 8300 5000 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8250 5050 50  0001 C CNN
F 3 "" H 8250 5050 50  0001 C CNN
	4    8250 5050
	1    0    0    1   
$EndComp
Wire Wire Line
	7100 2450 7000 2450
Wire Wire Line
	4350 1300 4400 1300
Wire Wire Line
	4400 1300 4400 1450
Wire Wire Line
	4400 1450 4450 1450
Wire Wire Line
	4350 1800 4400 1800
Wire Wire Line
	4400 1800 4400 1650
Wire Wire Line
	4400 1650 4450 1650
Wire Wire Line
	3150 1700 1700 1700
Wire Wire Line
	3150 1400 1700 1400
Wire Wire Line
	3150 1200 1700 1200
Wire Wire Line
	5650 1550 8300 1550
Wire Wire Line
	1450 2350 5800 2350
Wire Wire Line
	5800 2550 5750 2550
Wire Wire Line
	2200 5350 2150 5350
Wire Wire Line
	2150 5350 2150 5400
Wire Wire Line
	3400 5250 5500 5250
Wire Wire Line
	1450 5150 2200 5150
Wire Wire Line
	5500 4350 4700 4350
Wire Wire Line
	5500 4850 4700 4850
Wire Wire Line
	3500 4450 1450 4450
Wire Wire Line
	3500 4950 1450 4950
Wire Wire Line
	3250 4750 3500 4750
Wire Wire Line
	3250 4250 3500 4250
Connection ~ 3250 4250
Wire Wire Line
	1250 6850 1250 6950
Wire Wire Line
	1250 6950 1850 6950
Wire Wire Line
	1850 6950 1850 6850
Wire Wire Line
	1250 6550 1250 6450
Wire Wire Line
	1250 6450 1850 6450
Wire Wire Line
	1850 6450 1850 6550
Wire Wire Line
	1550 6350 1550 6550
Connection ~ 1550 6450
Wire Wire Line
	1550 6850 1550 7050
Connection ~ 1550 6950
Wire Bus Line
	1600 950  1600 1850
Wire Bus Line
	1600 950  1450 950 
Connection ~ 5700 1550
Wire Wire Line
	5500 3700 5100 3700
Wire Wire Line
	1850 1950 1700 1950
Wire Wire Line
	1850 2150 1450 2150
Wire Wire Line
	3100 2050 3100 1900
Wire Wire Line
	3100 1900 3150 1900
Wire Wire Line
	3100 2050 3050 2050
Wire Wire Line
	5700 1550 5700 1850
Wire Wire Line
	5700 1850 5800 1850
Wire Wire Line
	5800 2050 5700 2050
Wire Wire Line
	5700 2050 5700 2100
Wire Wire Line
	7000 1950 7050 1950
Wire Wire Line
	7100 2250 7050 2250
Wire Wire Line
	7050 2250 7050 1950
Wire Wire Line
	4800 3800 4750 3800
Wire Wire Line
	4750 3800 4750 3850
Wire Wire Line
	4750 3850 4700 3850
Wire Wire Line
	4800 3600 4750 3600
Wire Wire Line
	4750 3600 4750 3550
Wire Wire Line
	4750 3550 1450 3550
Wire Wire Line
	3500 3750 3450 3750
Wire Wire Line
	3450 3750 3450 3550
Connection ~ 3450 3550
Wire Wire Line
	3150 3950 3500 3950
Wire Wire Line
	3250 3950 3250 4750
Connection ~ 3250 3950
Wire Wire Line
	7650 5150 7600 5150
Wire Wire Line
	7600 5150 7600 5200
Wire Wire Line
	7900 4050 8250 4050
Wire Wire Line
	8750 3300 8750 3850
Wire Wire Line
	9000 3700 9000 3750
Wire Wire Line
	9000 3350 9000 3400
Wire Wire Line
	8750 4650 8750 4700
Wire Wire Line
	7600 4050 7550 4050
Wire Wire Line
	7550 4050 7550 4950
Wire Wire Line
	7550 4950 7650 4950
Wire Wire Line
	8850 5050 9400 5050
Wire Wire Line
	9400 5050 9400 4450
Wire Wire Line
	9400 4450 9250 4450
Wire Wire Line
	8250 4450 8000 4450
Wire Wire Line
	8000 4450 8000 3350
Wire Wire Line
	9250 4050 9950 4050
Wire Wire Line
	8000 3350 9000 3350
Connection ~ 8750 3350
Wire Wire Line
	8200 3400 8200 3350
Connection ~ 8200 3350
Wire Wire Line
	8200 3700 8200 4050
Connection ~ 8200 4050
Wire Wire Line
	7400 4500 7550 4500
Connection ~ 7550 4500
Wire Wire Line
	3500 5450 3450 5450
Wire Wire Line
	3450 5450 3450 5250
Connection ~ 3450 5250
Wire Wire Line
	5500 5550 4700 5550
$Comp
L GND #PWR038
U 1 1 60A45CD4
P 3450 5700
F 0 "#PWR038" H 3450 5450 50  0001 C CNN
F 1 "GND" H 3450 5550 50  0000 C CNN
F 2 "" H 3450 5700 50  0001 C CNN
F 3 "" H 3450 5700 50  0001 C CNN
	1    3450 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5650 3450 5650
Wire Wire Line
	3450 5650 3450 5700
$Comp
L GS3 JP4
U 1 1 60A4713E
P 10100 4150
F 0 "JP4" H 10150 4350 50  0000 C CNN
F 1 "GS3" H 10150 3951 50  0000 C CNN
F 2 "Connectors:GS3" V 10188 4076 50  0001 C CNN
F 3 "" H 10100 4150 50  0001 C CNN
	1    10100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 4150 10250 4150
Wire Wire Line
	9950 4250 9900 4250
Wire Wire Line
	9900 4250 9900 4300
$Comp
L GND #PWR039
U 1 1 60A47423
P 9900 4300
F 0 "#PWR039" H 9900 4050 50  0001 C CNN
F 1 "GND" H 9900 4150 50  0000 C CNN
F 2 "" H 9900 4300 50  0001 C CNN
F 3 "" H 9900 4300 50  0001 C CNN
	1    9900 4300
	1    0    0    -1  
$EndComp
Wire Notes Line
	6850 3000 9750 3000
Wire Notes Line
	9750 3000 9750 5600
Wire Notes Line
	9750 5600 6850 5600
Wire Notes Line
	6850 5600 6850 3000
Text Notes 6900 5550 0    60   ~ 0
optional ram disable via long reset
Text Notes 6300 1500 0    60   ~ 0
(goes to bus controller to \n"hide" ~AS~ to motherboard)
Text Notes 3550 3500 0    60   ~ 0
generate fast ~DTACK~
Text Notes 3100 7500 0    60   ~ 0
Populate parts on this sheet only when optional ram chips are also populated\nSet jumpers JP2..JP4 accordingly\n\nJumper JP3:\n1-2: fast ram populated\n2-3: fast ram NOT populated\n\nJumper JP4:\n1-2: ram disable option populated\n2-3: ram disable option NOT populated
$EndSCHEMATC