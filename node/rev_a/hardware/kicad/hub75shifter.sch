EESchema Schematic File Version 4
LIBS:hub75shifter-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x08_Odd_Even JHUB75
U 1 1 5D51B25F
P 5550 2400
F 0 "JHUB75" H 5600 2917 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 5600 2826 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08_Pitch2.54mm" H 5550 2400 50  0001 C CNN
F 3 "~" H 5550 2400 50  0001 C CNN
	1    5550 2400
	1    0    0    -1  
$EndComp
Text GLabel 5950 2100 2    50   Input ~ 0
P_G1
Text GLabel 5250 2100 0    50   Input ~ 0
P_R1
Text GLabel 5250 2200 0    50   Input ~ 0
P_B1
Text GLabel 5250 2300 0    50   Input ~ 0
P_R2
Text GLabel 5950 2300 2    50   Input ~ 0
P_G2
Text GLabel 5250 2400 0    50   Input ~ 0
P_B2
Text GLabel 5950 2700 2    50   Input ~ 0
P_STB
Text GLabel 5250 2800 0    50   Input ~ 0
P_OE
Text GLabel 5250 2700 0    50   Input ~ 0
P_CLK
Text GLabel 5250 2500 0    50   Input ~ 0
P_A
Text GLabel 5950 2500 2    50   Input ~ 0
P_B
Text GLabel 5250 2600 0    50   Input ~ 0
P_C
$Comp
L power:GND #PWR0101
U 1 1 5D51B49B
P 6300 2900
F 0 "#PWR0101" H 6300 2650 50  0001 C CNN
F 1 "GND" H 6305 2727 50  0000 C CNN
F 2 "" H 6300 2900 50  0001 C CNN
F 3 "" H 6300 2900 50  0001 C CNN
	1    6300 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2200 6300 2200
Wire Wire Line
	6300 2200 6300 2400
Wire Wire Line
	5850 2400 6300 2400
Connection ~ 6300 2400
Wire Wire Line
	6300 2400 6300 2600
Wire Wire Line
	5850 2600 6300 2600
Connection ~ 6300 2600
Wire Wire Line
	6300 2600 6300 2800
Wire Wire Line
	5850 2800 6300 2800
Connection ~ 6300 2800
Wire Wire Line
	6300 2800 6300 2900
Wire Wire Line
	5950 2700 5850 2700
Wire Wire Line
	5850 2500 5950 2500
Wire Wire Line
	5950 2300 5850 2300
Wire Wire Line
	5950 2100 5850 2100
Wire Wire Line
	5250 2100 5350 2100
Wire Wire Line
	5250 2200 5350 2200
Wire Wire Line
	5250 2300 5350 2300
Wire Wire Line
	5250 2400 5350 2400
Wire Wire Line
	5250 2500 5350 2500
Wire Wire Line
	5250 2600 5350 2600
Wire Wire Line
	5250 2700 5350 2700
Wire Wire Line
	5250 2800 5350 2800
Text GLabel 3050 1550 2    50   Input ~ 0
P_R1
Text GLabel 3050 1650 2    50   Input ~ 0
P_G1
Text GLabel 3050 1750 2    50   Input ~ 0
P_B1
Text GLabel 3050 1850 2    50   Input ~ 0
P_R2
Text GLabel 3050 1950 2    50   Input ~ 0
P_G2
Text GLabel 3050 2050 2    50   Input ~ 0
P_B2
Text GLabel 3050 2950 2    50   Input ~ 0
P_A
Text GLabel 3050 3050 2    50   Input ~ 0
P_B
Text GLabel 3050 3150 2    50   Input ~ 0
P_C
Text GLabel 3050 2150 2    50   Input ~ 0
P_CLK
Text GLabel 1450 3150 0    50   Input ~ 0
P_STB
Text GLabel 1450 3050 0    50   Input ~ 0
P_OE
$Comp
L Device:C C4
U 1 1 5D51C6AB
P 1550 1250
F 0 "C4" H 1665 1296 50  0000 L CNN
F 1 "100pF" H 1665 1205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1588 1100 50  0001 C CNN
F 3 "~" H 1550 1250 50  0001 C CNN
	1    1550 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D51C7D5
P 4100 4200
F 0 "C3" H 4215 4246 50  0000 L CNN
F 1 "100nF" H 4215 4155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4138 4050 50  0001 C CNN
F 3 "~" H 4100 4200 50  0001 C CNN
	1    4100 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D51C98A
P 7050 2850
F 0 "#PWR0102" H 7050 2600 50  0001 C CNN
F 1 "GND" H 7055 2677 50  0000 C CNN
F 2 "" H 7050 2850 50  0001 C CNN
F 3 "" H 7050 2850 50  0001 C CNN
	1    7050 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 5D51C9CD
P 7050 2150
F 0 "#PWR0103" H 7050 2000 50  0001 C CNN
F 1 "VCC" H 7067 2323 50  0000 C CNN
F 2 "" H 7050 2150 50  0001 C CNN
F 3 "" H 7050 2150 50  0001 C CNN
	1    7050 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5D51CA21
P 6800 2500
F 0 "C5" H 6915 2546 50  0000 L CNN
F 1 "100nF" H 6915 2455 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6838 2350 50  0001 C CNN
F 3 "~" H 6800 2500 50  0001 C CNN
	1    6800 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 5D51CAA6
P 7300 2500
F 0 "C6" H 7418 2546 50  0000 L CNN
F 1 "10uF" H 7418 2455 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 7338 2350 50  0001 C CNN
F 3 "~" H 7300 2500 50  0001 C CNN
	1    7300 2500
	1    0    0    -1  
$EndComp
Text GLabel 7100 1350 0    50   Input ~ 0
SPI0_SCK
Text GLabel 7900 1250 2    50   Input ~ 0
SPI0_SS
Text GLabel 7100 1450 0    50   Input ~ 0
SPI0_MOSI
Text GLabel 5400 1350 0    50   Input ~ 0
SPI1_SCK
Text GLabel 6200 1250 2    50   Input ~ 0
SPI1_SS
$Comp
L power:VCC #PWR0104
U 1 1 5D51D032
P 5400 1050
F 0 "#PWR0104" H 5400 900 50  0001 C CNN
F 1 "VCC" V 5418 1177 50  0000 L CNN
F 2 "" H 5400 1050 50  0001 C CNN
F 3 "" H 5400 1050 50  0001 C CNN
	1    5400 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D51D15E
P 6200 1450
F 0 "#PWR0105" H 6200 1200 50  0001 C CNN
F 1 "GND" V 6205 1322 50  0000 R CNN
F 2 "" H 6200 1450 50  0001 C CNN
F 3 "" H 6200 1450 50  0001 C CNN
	1    6200 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 5D51D1A0
P 6200 1050
F 0 "#PWR0106" H 6200 900 50  0001 C CNN
F 1 "VCC" V 6217 1178 50  0000 L CNN
F 2 "" H 6200 1050 50  0001 C CNN
F 3 "" H 6200 1050 50  0001 C CNN
	1    6200 1050
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even JIN1
U 1 1 5D51E2D1
P 5750 1250
F 0 "JIN1" H 5800 1667 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 5800 1576 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 5750 1250 50  0001 C CNN
F 3 "~" H 5750 1250 50  0001 C CNN
	1    5750 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even JOUT1
U 1 1 5D51ED9F
P 7450 1250
F 0 "JOUT1" H 7500 1667 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 7500 1576 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 7450 1250 50  0001 C CNN
F 3 "~" H 7450 1250 50  0001 C CNN
	1    7450 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D51F45C
P 9600 1050
F 0 "D1" H 9592 795 50  0000 C CNN
F 1 "LED" H 9592 886 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 9600 1050 50  0001 C CNN
F 3 "~" H 9600 1050 50  0001 C CNN
	1    9600 1050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5D51F5C6
P 9150 1050
F 0 "R1" V 8943 1050 50  0000 C CNN
F 1 "60R" V 9034 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9080 1050 50  0001 C CNN
F 3 "~" H 9150 1050 50  0001 C CNN
	1    9150 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 1050 9300 1050
$Comp
L power:GND #PWR0107
U 1 1 5D51FFFE
P 9900 1050
F 0 "#PWR0107" H 9900 800 50  0001 C CNN
F 1 "GND" H 9905 877 50  0000 C CNN
F 2 "" H 9900 1050 50  0001 C CNN
F 3 "" H 9900 1050 50  0001 C CNN
	1    9900 1050
	0    -1   -1   0   
$EndComp
Text GLabel 8850 1050 0    50   Input ~ 0
LED
Text GLabel 7100 1150 0    50   Input ~ 0
SHIFT
Text GLabel 7900 1150 2    50   Input ~ 0
OE
$Comp
L power:VCC #PWR0108
U 1 1 5D521383
P 7100 1050
F 0 "#PWR0108" H 7100 900 50  0001 C CNN
F 1 "VCC" V 7118 1177 50  0000 L CNN
F 2 "" H 7100 1050 50  0001 C CNN
F 3 "" H 7100 1050 50  0001 C CNN
	1    7100 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5D5213B0
P 7900 1350
F 0 "#PWR0109" H 7900 1100 50  0001 C CNN
F 1 "GND" V 7905 1222 50  0000 R CNN
F 2 "" H 7900 1350 50  0001 C CNN
F 3 "" H 7900 1350 50  0001 C CNN
	1    7900 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5D5213DD
P 7900 1450
F 0 "#PWR0110" H 7900 1200 50  0001 C CNN
F 1 "GND" V 7905 1322 50  0000 R CNN
F 2 "" H 7900 1450 50  0001 C CNN
F 3 "" H 7900 1450 50  0001 C CNN
	1    7900 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0111
U 1 1 5D52140A
P 7900 1050
F 0 "#PWR0111" H 7900 900 50  0001 C CNN
F 1 "VCC" V 7917 1178 50  0000 L CNN
F 2 "" H 7900 1050 50  0001 C CNN
F 3 "" H 7900 1050 50  0001 C CNN
	1    7900 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 1050 9000 1050
Text GLabel 1450 2750 0    50   Input ~ 0
LED
Text GLabel 3050 2650 2    50   Input ~ 0
SPI0_SCK
Text GLabel 3050 2550 2    50   Input ~ 0
SPI0_MOSI
Text GLabel 3050 2850 2    50   Input ~ 0
SPI1_SCK
Text GLabel 1450 2250 0    50   Input ~ 0
SPI1_SS
Text GLabel 3050 2750 2    50   Input ~ 0
SPI1_MOSI
Text GLabel 1450 3350 0    50   Input ~ 0
SHIFT
Text GLabel 3050 3950 2    50   Input ~ 0
OE
Text GLabel 1450 1550 0    50   Input ~ 0
MCU_RESET
$Comp
L Connector_Generic:Conn_02x05_Odd_Even JSWD1
U 1 1 5D52366A
P 5550 4300
F 0 "JSWD1" H 5600 4717 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 5600 4626 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 5550 4300 50  0001 C CNN
F 3 "~" H 5550 4300 50  0001 C CNN
	1    5550 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0113
U 1 1 5D52370A
P 5200 4100
F 0 "#PWR0113" H 5200 3950 50  0001 C CNN
F 1 "VCC" V 5218 4227 50  0000 L CNN
F 2 "" H 5200 4100 50  0001 C CNN
F 3 "" H 5200 4100 50  0001 C CNN
	1    5200 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5D523791
P 5200 4600
F 0 "#PWR0114" H 5200 4350 50  0001 C CNN
F 1 "GND" H 5205 4427 50  0000 C CNN
F 2 "" H 5200 4600 50  0001 C CNN
F 3 "" H 5200 4600 50  0001 C CNN
	1    5200 4600
	1    0    0    -1  
$EndComp
Text GLabel 6000 4100 2    50   Input ~ 0
SWDIO
Text GLabel 6550 4200 2    50   Input ~ 0
SWDCLK
Text GLabel 6000 4500 2    50   Input ~ 0
MCU_RESET
$Comp
L Device:R R2
U 1 1 5D52388E
P 6400 3950
F 0 "R2" H 6470 3996 50  0000 L CNN
F 1 "1k" H 6470 3905 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6330 3950 50  0001 C CNN
F 3 "~" H 6400 3950 50  0001 C CNN
	1    6400 3950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0115
U 1 1 5D523E58
P 6400 3700
F 0 "#PWR0115" H 6400 3550 50  0001 C CNN
F 1 "VCC" H 6417 3873 50  0000 C CNN
F 2 "" H 6400 3700 50  0001 C CNN
F 3 "" H 6400 3700 50  0001 C CNN
	1    6400 3700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0117
U 1 1 5D52402A
P 1550 1000
F 0 "#PWR0117" H 1550 850 50  0001 C CNN
F 1 "VCC" H 1567 1173 50  0000 C CNN
F 2 "" H 1550 1000 50  0001 C CNN
F 3 "" H 1550 1000 50  0001 C CNN
	1    1550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4100 5350 4100
Wire Wire Line
	5200 4200 5350 4200
Wire Wire Line
	5200 4600 5200 4500
Wire Wire Line
	5200 4500 5350 4500
Wire Wire Line
	5350 4300 5200 4300
Wire Wire Line
	5200 4300 5200 4500
Connection ~ 5200 4300
Connection ~ 5200 4500
Wire Wire Line
	5200 4200 5200 4300
NoConn ~ 5350 4400
NoConn ~ 5850 4400
Wire Wire Line
	6000 4100 5850 4100
Wire Wire Line
	6000 4500 5850 4500
Wire Wire Line
	5850 4200 6400 4200
Wire Wire Line
	6400 4200 6400 4100
Wire Wire Line
	6400 3700 6400 3800
Wire Wire Line
	6550 4200 6400 4200
Connection ~ 6400 4200
Text GLabel 1450 1950 0    50   Input ~ 0
SWDIO
Text GLabel 1450 1850 0    50   Input ~ 0
SWDCLK
$Comp
L power:VCC #PWR0118
U 1 1 5D52AC54
P 4100 3950
F 0 "#PWR0118" H 4100 3800 50  0001 C CNN
F 1 "VCC" H 4117 4123 50  0000 C CNN
F 2 "" H 4100 3950 50  0001 C CNN
F 3 "" H 4100 3950 50  0001 C CNN
	1    4100 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5D52ACC5
P 4100 4600
F 0 "#PWR0119" H 4100 4350 50  0001 C CNN
F 1 "GND" H 4105 4427 50  0000 C CNN
F 2 "" H 4100 4600 50  0001 C CNN
F 3 "" H 4100 4600 50  0001 C CNN
	1    4100 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4050 4100 3950
Wire Wire Line
	6800 2350 6800 2250
Wire Wire Line
	6800 2750 6800 2650
$Comp
L Device:C C1
U 1 1 5D530312
P 900 4200
F 0 "C1" H 1015 4246 50  0000 L CNN
F 1 "100nF" H 1015 4155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 938 4050 50  0001 C CNN
F 3 "~" H 900 4200 50  0001 C CNN
	1    900  4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D530352
P 1400 4200
F 0 "C2" H 1515 4246 50  0000 L CNN
F 1 "1uF" H 1515 4155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1438 4050 50  0001 C CNN
F 3 "~" H 1400 4200 50  0001 C CNN
	1    1400 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5D53128D
P 2250 4600
F 0 "#PWR0120" H 2250 4350 50  0001 C CNN
F 1 "GND" H 2255 4427 50  0000 C CNN
F 2 "" H 2250 4600 50  0001 C CNN
F 3 "" H 2250 4600 50  0001 C CNN
	1    2250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4350 2050 4450
Wire Wire Line
	2050 4450 2150 4450
Wire Wire Line
	2450 4450 2450 4350
Wire Wire Line
	2150 4350 2150 4450
Connection ~ 2150 4450
Wire Wire Line
	2150 4450 2250 4450
Wire Wire Line
	2250 4350 2250 4450
Connection ~ 2250 4450
Wire Wire Line
	2250 4450 2450 4450
Wire Wire Line
	2250 4450 2250 4600
Wire Wire Line
	900  4350 900  4450
Wire Wire Line
	900  4450 1150 4450
Wire Wire Line
	1400 4450 1400 4350
$Comp
L power:GND #PWR0121
U 1 1 5D537EC8
P 1150 4600
F 0 "#PWR0121" H 1150 4350 50  0001 C CNN
F 1 "GND" H 1155 4427 50  0000 C CNN
F 2 "" H 1150 4600 50  0001 C CNN
F 3 "" H 1150 4600 50  0001 C CNN
	1    1150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4450 1150 4600
Connection ~ 1150 4450
Wire Wire Line
	1150 4450 1400 4450
NoConn ~ 5850 4300
Wire Wire Line
	1650 1850 1450 1850
Wire Wire Line
	1650 1950 1450 1950
Wire Wire Line
	1550 1000 1550 1100
Wire Wire Line
	900  4050 900  3950
Wire Wire Line
	1400 3950 1400 4050
Wire Wire Line
	900  3950 1150 3950
Wire Wire Line
	1150 3950 1150 3650
Connection ~ 1150 3950
Wire Wire Line
	1150 3950 1400 3950
$Comp
L power:VCC #PWR0122
U 1 1 5D577944
P 2250 1000
F 0 "#PWR0122" H 2250 850 50  0001 C CNN
F 1 "VCC" H 2267 1173 50  0000 C CNN
F 2 "" H 2250 1000 50  0001 C CNN
F 3 "" H 2250 1000 50  0001 C CNN
	1    2250 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1350 2050 1100
Wire Wire Line
	2050 1100 2150 1100
Wire Wire Line
	2250 1100 2250 1000
Wire Wire Line
	2150 1350 2150 1100
Connection ~ 2150 1100
Wire Wire Line
	2150 1100 2250 1100
Wire Wire Line
	2350 1350 2350 1100
Wire Wire Line
	2350 1100 2250 1100
Connection ~ 2250 1100
Wire Wire Line
	2450 1350 2450 1100
Wire Wire Line
	2450 1100 2350 1100
Connection ~ 2350 1100
Wire Wire Line
	1650 3050 1450 3050
Wire Wire Line
	2850 1550 3050 1550
Wire Wire Line
	3050 1650 2850 1650
Wire Wire Line
	3050 1750 2850 1750
Wire Wire Line
	3050 1850 2850 1850
Wire Wire Line
	3050 1950 2850 1950
Wire Wire Line
	3050 2050 2850 2050
Wire Wire Line
	3050 2950 2850 2950
Wire Wire Line
	3050 3050 2850 3050
Wire Wire Line
	3050 3150 2850 3150
NoConn ~ 2850 3250
NoConn ~ 2850 3350
NoConn ~ 2850 3450
NoConn ~ 2850 3550
NoConn ~ 2850 3650
NoConn ~ 2850 3850
NoConn ~ 2850 4050
Text GLabel 6200 1150 2    50   Input ~ 0
OE
Text GLabel 5400 1150 0    50   Input ~ 0
SHIFT
$Comp
L power:GND #PWR0127
U 1 1 5D616471
P 6200 1350
F 0 "#PWR0127" H 6200 1100 50  0001 C CNN
F 1 "GND" V 6205 1222 50  0000 R CNN
F 2 "" H 6200 1350 50  0001 C CNN
F 3 "" H 6200 1350 50  0001 C CNN
	1    6200 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 1050 7250 1050
Wire Wire Line
	7750 1050 7900 1050
Wire Wire Line
	7100 1150 7250 1150
Wire Wire Line
	7750 1150 7900 1150
Wire Wire Line
	7100 1250 7250 1250
Wire Wire Line
	7750 1250 7900 1250
Wire Wire Line
	7100 1350 7250 1350
Wire Wire Line
	7750 1350 7900 1350
Wire Wire Line
	7100 1450 7250 1450
Wire Wire Line
	7750 1450 7900 1450
Wire Wire Line
	5400 1050 5550 1050
Wire Wire Line
	5400 1150 5550 1150
Wire Wire Line
	5400 1250 5550 1250
Wire Wire Line
	5400 1350 5550 1350
Wire Wire Line
	5400 1450 5550 1450
Wire Wire Line
	6050 1050 6200 1050
Wire Wire Line
	6050 1150 6200 1150
Wire Wire Line
	6050 1250 6200 1250
Wire Wire Line
	6050 1350 6200 1350
Wire Wire Line
	6050 1450 6200 1450
Wire Wire Line
	1150 3650 1650 3650
Wire Wire Line
	4100 4350 4100 4600
Wire Notes Line
	4850 1750 4850 3200
Wire Notes Line
	4850 3200 6450 3200
Wire Notes Line
	6450 3200 6450 1750
Wire Notes Line
	6450 1750 4850 1750
Wire Notes Line
	700  4900 4600 4900
Wire Notes Line
	4600 4900 4600 700 
Wire Notes Line
	4600 700  700  700 
Wire Notes Line
	700  700  700  4900
Wire Notes Line
	4850 1600 4850 700 
Wire Notes Line
	10250 700  8550 700 
Wire Wire Line
	7300 2250 7300 2350
Wire Wire Line
	7300 2650 7300 2750
Wire Wire Line
	6800 2250 7050 2250
Wire Wire Line
	6800 2750 7050 2750
Wire Wire Line
	7050 2850 7050 2750
Connection ~ 7050 2750
Wire Wire Line
	7050 2750 7300 2750
Wire Wire Line
	7050 2150 7050 2250
Connection ~ 7050 2250
Wire Wire Line
	7050 2250 7300 2250
Wire Wire Line
	1450 2250 1650 2250
Wire Wire Line
	2850 2450 3050 2450
Wire Wire Line
	3050 2650 2850 2650
Wire Wire Line
	2850 2750 3050 2750
Wire Wire Line
	2850 2850 3050 2850
Wire Notes Line
	4850 4900 7000 4900
Text GLabel 3050 2450 2    50   Input ~ 0
SPI0_SS
Text GLabel 5400 1450 0    50   Input ~ 0
SPI1_MOSI
Wire Notes Line
	8400 1600 8400 700 
Wire Notes Line
	4850 700  8400 700 
Wire Notes Line
	4850 1600 8400 1600
Wire Wire Line
	3050 2150 2850 2150
Text GLabel 7100 1250 0    50   Input ~ 0
CLEAR
Text GLabel 5400 1250 0    50   Input ~ 0
CLEAR
Text GLabel 1450 3250 0    50   Input ~ 0
CLEAR
$Comp
L MCU_Microchip_SAMC:SAMC20G17A-A U1
U 1 1 5D530E73
P 2250 2850
F 0 "U1" H 2250 4528 50  0000 C CNN
F 1 "SAMC20G17A-A" H 2250 4437 50  0000 C CNN
F 2 "Housings_QFP:TQFP-48_7x7mm_Pitch0.5mm" H 2250 1000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/DS60001479B.pdf" H 2250 2850 50  0001 C CNN
	1    2250 2850
	1    0    0    -1  
$EndComp
NoConn ~ 2850 2250
Wire Wire Line
	1650 3150 1450 3150
Wire Wire Line
	3050 2550 2850 2550
Wire Wire Line
	1650 3250 1450 3250
Wire Wire Line
	1650 3350 1450 3350
Wire Wire Line
	3050 3950 2850 3950
Wire Wire Line
	1650 2750 1450 2750
Wire Wire Line
	1650 1550 1550 1550
Wire Wire Line
	1550 1550 1550 1400
Wire Wire Line
	1550 1550 1450 1550
Connection ~ 1550 1550
Text GLabel 1450 2350 0    50   Input ~ 0
SPI1_MISO_NC
Text GLabel 3050 2350 2    50   Input ~ 0
SPI0_MISO_NC
Wire Wire Line
	3050 2350 2850 2350
Wire Wire Line
	1650 2350 1450 2350
NoConn ~ 1650 2650
NoConn ~ 1650 2850
NoConn ~ 1650 2950
NoConn ~ 2850 3750
Text GLabel 4450 850  0    50   Input ~ 0
SPI0_MISO_NC
Text GLabel 4450 1000 0    50   Input ~ 0
SPI1_MISO_NC
NoConn ~ 4450 850 
NoConn ~ 4450 1000
$Comp
L Connector:Screw_Terminal_01x02 JPWR1
U 1 1 5D902E1D
P 8000 2450
F 0 "JPWR1" H 8080 2396 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8080 2351 50  0001 L CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 8000 2450 50  0001 C CNN
F 3 "~" H 8000 2450 50  0001 C CNN
	1    8000 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5D902F06
P 7700 2850
F 0 "#PWR0112" H 7700 2600 50  0001 C CNN
F 1 "GND" H 7705 2677 50  0000 C CNN
F 2 "" H 7700 2850 50  0001 C CNN
F 3 "" H 7700 2850 50  0001 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0116
U 1 1 5D902F7A
P 7700 2150
F 0 "#PWR0116" H 7700 2000 50  0001 C CNN
F 1 "VCC" H 7717 2323 50  0000 C CNN
F 2 "" H 7700 2150 50  0001 C CNN
F 3 "" H 7700 2150 50  0001 C CNN
	1    7700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2450 7700 2450
Wire Wire Line
	7800 2550 7700 2550
Wire Wire Line
	9900 1050 9750 1050
Wire Notes Line
	8550 1250 10250 1250
Wire Notes Line
	10250 1250 10250 700 
Wire Notes Line
	8550 700  8550 1250
Wire Wire Line
	7700 2550 7700 2850
Wire Wire Line
	7700 2150 7700 2450
Wire Notes Line
	6600 1750 8400 1750
Wire Notes Line
	8400 3200 6600 3200
Wire Notes Line
	6600 1750 6600 3200
Wire Notes Line
	8400 1750 8400 3200
Wire Notes Line
	4850 4900 4850 3350
Wire Notes Line
	4850 3350 7000 3350
Wire Notes Line
	7000 3350 7000 4900
$EndSCHEMATC
