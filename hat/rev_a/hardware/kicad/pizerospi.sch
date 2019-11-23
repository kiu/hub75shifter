EESchema Schematic File Version 4
LIBS:pizerospi-cache
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
L Connector_Generic:Conn_02x20_Odd_Even J2
U 1 1 5D7E7CDD
P 9800 1750
F 0 "J2" H 9850 2867 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 9850 2776 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x20_Pitch2.54mm" H 9800 1750 50  0001 C CNN
F 3 "~" H 9800 1750 50  0001 C CNN
	1    9800 1750
	1    0    0    -1  
$EndComp
Text GLabel 9450 850  0    50   Input ~ 0
PI_3V3
Text GLabel 10250 850  2    50   Input ~ 0
PI_5V
Text GLabel 10250 950  2    50   Input ~ 0
PI_5V
Text GLabel 9450 1650 0    50   Input ~ 0
PI_3V3
Text GLabel 10250 1050 2    50   Input ~ 0
PI_GND
Text GLabel 10250 1450 2    50   Input ~ 0
PI_GND
Text GLabel 10250 1750 2    50   Input ~ 0
PI_GND
Text GLabel 10250 2250 2    50   Input ~ 0
PI_GND
Text GLabel 10250 2450 2    50   Input ~ 0
PI_GND
Text GLabel 9450 2750 0    50   Input ~ 0
PI_GND
Text GLabel 9450 2050 0    50   Input ~ 0
PI_GND
Text GLabel 9450 950  0    50   Input ~ 0
PI_GPIO_02_SDA
Text GLabel 9450 1050 0    50   Input ~ 0
PI_GPIO_03_SCL
Text GLabel 9450 1150 0    50   Input ~ 0
PI_GPIO_04
Text GLabel 9450 1250 0    50   Input ~ 0
PI_GND
Text GLabel 9450 1350 0    50   Input ~ 0
PI_GPIO_17
Text GLabel 9450 1450 0    50   Input ~ 0
PI_GPIO_27
Text GLabel 9450 1550 0    50   Input ~ 0
PI_GPIO_22
Text GLabel 9450 1750 0    50   Input ~ 0
PI_GPIO_10_MOSI
Text GLabel 9450 1850 0    50   Input ~ 0
PI_GPIO_09_MISO
Text GLabel 9450 1950 0    50   Input ~ 0
PI_GPIO_11_SCLK
Text GLabel 9450 2250 0    50   Input ~ 0
PI_GPIO_05
Text GLabel 9450 2350 0    50   Input ~ 0
PI_GPIO_06
Text GLabel 9450 2450 0    50   Input ~ 0
PI_GPIO_13
Text GLabel 9450 2550 0    50   Input ~ 0
PI_GPIO_19
Text GLabel 9450 2650 0    50   Input ~ 0
PI_GPIO_26
Text GLabel 10250 1150 2    50   Input ~ 0
PI_GPIO_14_TXD
Text GLabel 10250 1250 2    50   Input ~ 0
PI_GPIO_15_RXD
Text GLabel 10250 1350 2    50   Input ~ 0
PI_GPIO_18_PCM_CLK
Text GLabel 10250 1550 2    50   Input ~ 0
PI_GPIO_23
Text GLabel 10250 1650 2    50   Input ~ 0
PI_GPIO_24
Text GLabel 10250 1850 2    50   Input ~ 0
PI_GPIO_25
Text GLabel 10250 1950 2    50   Input ~ 0
PI_GPIO_08_CE0_N
Text GLabel 10250 2050 2    50   Input ~ 0
PI_GPIO_07_CE1_N
Text GLabel 10250 2350 2    50   Input ~ 0
PI_GPIO_12
Text GLabel 10250 2550 2    50   Input ~ 0
PI_GPIO_16
Text GLabel 10250 2650 2    50   Input ~ 0
PI_GPIO_20
Text GLabel 10250 2750 2    50   Input ~ 0
PI_GPIO_21
Wire Wire Line
	10250 850  10100 850 
Text GLabel 10250 2150 2    50   Input ~ 0
PI_ID_SC
Text GLabel 9450 2150 0    50   Input ~ 0
PI_ID_SD
Wire Wire Line
	10250 950  10100 950 
Wire Wire Line
	10250 1050 10100 1050
Wire Wire Line
	10250 1450 10100 1450
Wire Wire Line
	10250 1750 10100 1750
Wire Wire Line
	10250 2250 10100 2250
Wire Wire Line
	10250 2450 10100 2450
Wire Wire Line
	9450 1250 9600 1250
Wire Wire Line
	9450 1650 9600 1650
Wire Wire Line
	9450 1750 9600 1750
Wire Wire Line
	9450 1950 9600 1950
Wire Wire Line
	9450 2050 9600 2050
Wire Wire Line
	9450 2250 9600 2250
Wire Wire Line
	9450 2350 9600 2350
Wire Wire Line
	9450 2450 9600 2450
Wire Wire Line
	9450 2550 9600 2550
Wire Wire Line
	9450 2750 9600 2750
Text GLabel 1050 1250 0    50   Input ~ 0
PI_GND
Text GLabel 1050 1150 0    50   Input ~ 0
PI_5V
Text GLabel 5050 3850 0    50   Input ~ 0
PI_GPIO_10_MOSI
Text GLabel 5050 3750 0    50   Input ~ 0
PI_GPIO_11_SCLK
Text GLabel 5300 1500 0    50   Input ~ 0
H75_MOSI
Text GLabel 6100 1200 2    50   Input ~ 0
H75_OE
Text GLabel 6100 1300 2    50   Input ~ 0
H75_SS
Text GLabel 5300 1200 0    50   Input ~ 0
H75_SHIFT
Text GLabel 5300 1300 0    50   Input ~ 0
H75_CLEAR
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5D7FA137
P 5650 1300
F 0 "J1" H 5700 1717 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 5700 1626 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 5650 1300 50  0001 C CNN
F 3 "~" H 5650 1300 50  0001 C CNN
	1    5650 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5D7FA181
P 5300 1100
F 0 "#PWR01" H 5300 950 50  0001 C CNN
F 1 "+5V" H 5315 1273 50  0000 C CNN
F 2 "" H 5300 1100 50  0001 C CNN
F 3 "" H 5300 1100 50  0001 C CNN
	1    5300 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5D7FA196
P 6100 1100
F 0 "#PWR02" H 6100 950 50  0001 C CNN
F 1 "+5V" H 6115 1273 50  0000 C CNN
F 2 "" H 6100 1100 50  0001 C CNN
F 3 "" H 6100 1100 50  0001 C CNN
	1    6100 1100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D7FA1A9
P 6100 1400
F 0 "#PWR05" H 6100 1150 50  0001 C CNN
F 1 "GND" V 6105 1272 50  0000 R CNN
F 2 "" H 6100 1400 50  0001 C CNN
F 3 "" H 6100 1400 50  0001 C CNN
	1    6100 1400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D7FA1BE
P 6100 1500
F 0 "#PWR06" H 6100 1250 50  0001 C CNN
F 1 "GND" V 6105 1372 50  0000 R CNN
F 2 "" H 6100 1500 50  0001 C CNN
F 3 "" H 6100 1500 50  0001 C CNN
	1    6100 1500
	0    -1   -1   0   
$EndComp
Text GLabel 5300 1400 0    50   Input ~ 0
H75_SCK
Wire Wire Line
	5300 1100 5450 1100
Wire Wire Line
	5300 1200 5450 1200
Wire Wire Line
	5300 1300 5450 1300
Wire Wire Line
	5300 1400 5450 1400
Wire Wire Line
	5300 1500 5450 1500
Wire Wire Line
	5950 1100 6100 1100
Wire Wire Line
	5950 1200 6100 1200
Wire Wire Line
	5950 1300 6100 1300
Wire Wire Line
	5950 1400 6100 1400
Wire Wire Line
	5950 1500 6100 1500
Text GLabel 6350 3750 2    50   Input ~ 0
H75_SCK
Text GLabel 6350 3850 2    50   Input ~ 0
H75_MOSI
Text GLabel 6350 3650 2    50   Input ~ 0
H75_SS
Text GLabel 6350 3250 2    50   Input ~ 0
H75_SHIFT
Text GLabel 6350 3450 2    50   Input ~ 0
H75_CLEAR
Text GLabel 6350 3350 2    50   Input ~ 0
H75_OE
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5D80B3D5
P 1550 1150
F 0 "J3" H 1630 1142 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1630 1051 50  0000 L CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1550 1150 50  0001 C CNN
F 3 "~" H 1550 1150 50  0001 C CNN
	1    1550 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5D80B423
P 1200 1000
F 0 "#PWR08" H 1200 850 50  0001 C CNN
F 1 "+5V" H 1215 1173 50  0000 C CNN
F 2 "" H 1200 1000 50  0001 C CNN
F 3 "" H 1200 1000 50  0001 C CNN
	1    1200 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D80B434
P 1200 1400
F 0 "#PWR09" H 1200 1150 50  0001 C CNN
F 1 "GND" H 1205 1227 50  0000 C CNN
F 2 "" H 1200 1400 50  0001 C CNN
F 3 "" H 1200 1400 50  0001 C CNN
	1    1200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1150 1200 1150
Wire Wire Line
	1200 1150 1200 1000
Wire Wire Line
	1350 1250 1200 1250
Wire Wire Line
	1200 1250 1200 1400
Text GLabel 5050 3650 0    50   Input ~ 0
PI_GPIO_05
Text GLabel 5050 3250 0    50   Input ~ 0
PI_GPIO_06
Text GLabel 5050 3350 0    50   Input ~ 0
PI_GPIO_13
Text GLabel 5050 3450 0    50   Input ~ 0
PI_GPIO_19
$Comp
L 74xx:74HC245 U1
U 1 1 5D817E7C
P 5700 3650
F 0 "U1" H 5700 4628 50  0000 C CNN
F 1 "74HC245" H 5700 4537 50  0000 C CNN
F 2 "Housings_SOIC:SO-20_12.8x7.5mm_Pitch1.27mm" H 5700 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 5700 3650 50  0001 C CNN
	1    5700 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5D817F00
P 5700 2550
F 0 "#PWR010" H 5700 2400 50  0001 C CNN
F 1 "+5V" H 5715 2723 50  0000 C CNN
F 2 "" H 5700 2550 50  0001 C CNN
F 3 "" H 5700 2550 50  0001 C CNN
	1    5700 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D817F13
P 5700 4600
F 0 "#PWR013" H 5700 4350 50  0001 C CNN
F 1 "GND" H 5705 4427 50  0000 C CNN
F 2 "" H 5700 4600 50  0001 C CNN
F 3 "" H 5700 4600 50  0001 C CNN
	1    5700 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D81996E
P 5050 4300
F 0 "#PWR012" H 5050 4050 50  0001 C CNN
F 1 "GND" H 5055 4127 50  0000 C CNN
F 2 "" H 5050 4300 50  0001 C CNN
F 3 "" H 5050 4300 50  0001 C CNN
	1    5050 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5D819981
P 5050 4050
F 0 "#PWR011" H 5050 3900 50  0001 C CNN
F 1 "+5V" H 5065 4223 50  0000 C CNN
F 2 "" H 5050 4050 50  0001 C CNN
F 3 "" H 5050 4050 50  0001 C CNN
	1    5050 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 3250 6200 3250
Wire Wire Line
	6350 3350 6200 3350
Wire Wire Line
	6350 3650 6200 3650
Wire Wire Line
	5050 3250 5200 3250
Wire Wire Line
	5200 4050 5050 4050
Wire Wire Line
	5200 4150 5050 4150
Wire Wire Line
	5050 4150 5050 4300
Wire Wire Line
	5700 4450 5700 4600
Wire Wire Line
	5700 2850 5700 2550
Text GLabel 10650 3550 0    50   Input ~ 0
PI_GPIO_19
Text GLabel 9650 4350 0    50   Input ~ 0
PI_GPIO_13
Text GLabel 9650 4150 0    50   Input ~ 0
PI_GPIO_11_SCLK
Text GLabel 9650 4050 0    50   Input ~ 0
PI_GPIO_10_MOSI
Text GLabel 9650 3650 0    50   Input ~ 0
PI_GPIO_06
Text GLabel 9650 3550 0    50   Input ~ 0
PI_GPIO_05
NoConn ~ 10650 4350
NoConn ~ 10650 4250
NoConn ~ 10650 4150
NoConn ~ 10650 4050
NoConn ~ 10650 3950
NoConn ~ 10650 3850
NoConn ~ 10650 3750
NoConn ~ 10650 3650
NoConn ~ 10650 3450
NoConn ~ 10650 3350
NoConn ~ 10650 3250
NoConn ~ 10650 3150
NoConn ~ 10650 3050
NoConn ~ 9650 4250
NoConn ~ 9650 3950
NoConn ~ 9650 3850
NoConn ~ 9650 3750
NoConn ~ 9650 3350
NoConn ~ 9650 3250
NoConn ~ 9650 3150
NoConn ~ 9650 3050
Text GLabel 10650 3750 0    50   Input ~ 0
PI_GPIO_21
Text GLabel 10650 3650 0    50   Input ~ 0
PI_GPIO_20
Text GLabel 10650 3250 0    50   Input ~ 0
PI_GPIO_16
Text GLabel 9650 4250 0    50   Input ~ 0
PI_GPIO_12
Text GLabel 9650 3150 0    50   Input ~ 0
PI_ID_SC
Text GLabel 9650 3750 0    50   Input ~ 0
PI_GPIO_07_CE1_N
Text GLabel 9650 3850 0    50   Input ~ 0
PI_GPIO_08_CE0_N
Text GLabel 10650 4150 0    50   Input ~ 0
PI_GPIO_25
Text GLabel 10650 4050 0    50   Input ~ 0
PI_GPIO_24
Text GLabel 10650 3950 0    50   Input ~ 0
PI_GPIO_23
Text GLabel 10650 3450 0    50   Input ~ 0
PI_GPIO_18_PCM_CLK
Text GLabel 10650 3150 0    50   Input ~ 0
PI_GPIO_15_RXD
Text GLabel 10650 3050 0    50   Input ~ 0
PI_GPIO_14_TXD
Text GLabel 10650 4250 0    50   Input ~ 0
PI_GPIO_26
Text GLabel 9650 3050 0    50   Input ~ 0
PI_ID_SD
Text GLabel 9650 3950 0    50   Input ~ 0
PI_GPIO_09_MISO
Text GLabel 10650 3850 0    50   Input ~ 0
PI_GPIO_22
Text GLabel 10650 4350 0    50   Input ~ 0
PI_GPIO_27
Text GLabel 10650 3350 0    50   Input ~ 0
PI_GPIO_17
Text GLabel 9650 3450 0    50   Input ~ 0
PI_GPIO_04
Text GLabel 9650 3350 0    50   Input ~ 0
PI_GPIO_03_SCL
Text GLabel 9650 3250 0    50   Input ~ 0
PI_GPIO_02_SDA
Wire Wire Line
	10250 2750 10100 2750
Wire Wire Line
	10250 2650 10100 2650
Wire Wire Line
	10250 2550 10100 2550
Wire Wire Line
	10250 2350 10100 2350
Wire Wire Line
	10250 2150 10100 2150
Wire Wire Line
	10250 2050 10100 2050
Wire Wire Line
	10250 1950 10100 1950
Wire Wire Line
	10250 1850 10100 1850
Wire Wire Line
	10250 1650 10100 1650
Wire Wire Line
	10250 1550 10100 1550
Wire Wire Line
	10250 1350 10100 1350
Wire Wire Line
	10250 1250 10100 1250
Wire Wire Line
	10250 1150 10100 1150
Wire Wire Line
	9450 2650 9600 2650
Wire Wire Line
	9450 2150 9600 2150
Wire Wire Line
	9450 1850 9600 1850
Wire Wire Line
	9450 1550 9600 1550
Wire Wire Line
	9450 1450 9600 1450
Wire Wire Line
	9450 1350 9600 1350
Wire Wire Line
	9450 1150 9600 1150
Wire Wire Line
	9450 1050 9600 1050
Wire Wire Line
	9450 950  9600 950 
Wire Wire Line
	9450 850  9600 850 
Wire Wire Line
	1200 1150 1050 1150
Connection ~ 1200 1150
Wire Wire Line
	1050 1250 1200 1250
Connection ~ 1200 1250
Wire Notes Line
	11150 550  8700 550 
Wire Notes Line
	8700 550  8700 4450
Wire Notes Line
	8700 4450 11150 4450
Wire Notes Line
	11150 4450 11150 550 
$Comp
L Device:C C1
U 1 1 5D917179
P 3000 1200
F 0 "C1" H 3115 1246 50  0000 L CNN
F 1 "100nF" H 3115 1155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3038 1050 50  0001 C CNN
F 3 "~" H 3000 1200 50  0001 C CNN
	1    3000 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5D917209
P 3500 1200
F 0 "C2" H 3618 1246 50  0000 L CNN
F 1 "100uF" H 3618 1155 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 3538 1050 50  0001 C CNN
F 3 "~" H 3500 1200 50  0001 C CNN
	1    3500 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5D9174CF
P 3250 800
F 0 "#PWR03" H 3250 650 50  0001 C CNN
F 1 "+5V" H 3265 973 50  0000 C CNN
F 2 "" H 3250 800 50  0001 C CNN
F 3 "" H 3250 800 50  0001 C CNN
	1    3250 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1050 3000 900 
Wire Wire Line
	3000 900  3250 900 
Wire Wire Line
	3250 900  3250 800 
Wire Wire Line
	3000 1500 3000 1350
$Comp
L power:GND #PWR04
U 1 1 5D91F9CC
P 3250 1650
F 0 "#PWR04" H 3250 1400 50  0001 C CNN
F 1 "GND" H 3255 1477 50  0000 C CNN
F 2 "" H 3250 1650 50  0001 C CNN
F 3 "" H 3250 1650 50  0001 C CNN
	1    3250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1650 3250 1500
Wire Wire Line
	3250 1500 3000 1500
Wire Wire Line
	3250 1500 3500 1500
Wire Wire Line
	3500 1500 3500 1350
Connection ~ 3250 1500
Wire Wire Line
	3500 1050 3500 900 
Wire Wire Line
	3500 900  3250 900 
Connection ~ 3250 900 
Wire Wire Line
	6350 3750 6200 3750
Wire Wire Line
	6350 3850 6200 3850
Wire Wire Line
	5200 3650 5050 3650
Wire Wire Line
	5200 3750 5050 3750
Wire Wire Line
	5200 3850 5050 3850
Wire Wire Line
	5200 3350 5050 3350
NoConn ~ 6200 3550
NoConn ~ 5200 3550
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5D893F0F
P 1850 2550
F 0 "J4" H 1930 2542 50  0000 L CNN
F 1 "Conn_01x02" H 1930 2451 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1850 2550 50  0001 C CNN
F 3 "~" H 1850 2550 50  0001 C CNN
	1    1850 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D893FAB
P 1200 2200
F 0 "R1" H 1270 2246 50  0000 L CNN
F 1 "R" H 1270 2155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1130 2200 50  0001 C CNN
F 3 "~" H 1200 2200 50  0001 C CNN
	1    1200 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D8940E3
P 1200 2850
F 0 "#PWR0101" H 1200 2600 50  0001 C CNN
F 1 "GND" H 1205 2677 50  0000 C CNN
F 2 "" H 1200 2850 50  0001 C CNN
F 3 "" H 1200 2850 50  0001 C CNN
	1    1200 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5D89A648
P 1200 1950
F 0 "#PWR0102" H 1200 1800 50  0001 C CNN
F 1 "+5V" H 1215 2123 50  0000 C CNN
F 2 "" H 1200 1950 50  0001 C CNN
F 3 "" H 1200 1950 50  0001 C CNN
	1    1200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2450 1200 2400
$Comp
L Device:C C3
U 1 1 5D8A1502
P 1200 2600
F 0 "C3" H 1315 2646 50  0000 L CNN
F 1 "100nF" H 1315 2555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1238 2450 50  0001 C CNN
F 3 "~" H 1200 2600 50  0001 C CNN
	1    1200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2750 1200 2800
Wire Wire Line
	1200 2800 1650 2800
Wire Wire Line
	1650 2800 1650 2650
Connection ~ 1200 2800
Wire Wire Line
	1200 2800 1200 2850
Wire Wire Line
	1200 2400 1650 2400
Connection ~ 1200 2400
Wire Wire Line
	1200 2400 1200 2350
Wire Wire Line
	1650 2400 1650 2550
Wire Wire Line
	1050 2400 1200 2400
Wire Wire Line
	1200 2050 1200 1950
Text GLabel 1050 2400 0    50   Input ~ 0
PI_GPIO_04
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5D9A88F9
P 1850 3550
F 0 "J5" H 1930 3592 50  0000 L CNN
F 1 "Conn_01x03" H 1930 3501 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1850 3550 50  0001 C CNN
F 3 "~" H 1850 3550 50  0001 C CNN
	1    1850 3550
	1    0    0    -1  
$EndComp
Text GLabel 1500 3450 0    50   Input ~ 0
PI_GPIO_14_TXD
Text GLabel 1500 3550 0    50   Input ~ 0
PI_GPIO_15_RXD
Text GLabel 1500 3650 0    50   Input ~ 0
PI_GND
Wire Wire Line
	1500 3450 1650 3450
Wire Wire Line
	1500 3550 1650 3550
Wire Wire Line
	1500 3650 1650 3650
NoConn ~ 6200 3150
NoConn ~ 5200 3150
Wire Wire Line
	5200 3450 5050 3450
Wire Wire Line
	6350 3450 6200 3450
$EndSCHEMATC
