v 20130925 2
C 40000 40000 0 0 0 title-bordered-A2.sym
C 42900 53300 1 0 0 gnd-1.sym
C 44400 54500 1 0 0 5V-plus-1.sym
T 56200 41100 9 20 1 0 0 0 1
Digital PID controller for Peltier cooler
T 61400 40600 9 15 1 0 0 3 1
2018-05-10
N 43000 54500 45600 54500 4
C 45000 54500 1 0 0 vdd-1.sym
C 43800 53600 1 180 0 vss-1.sym
N 43600 53600 43000 53600 4
T 45000 48900 9 14 1 0 0 0 1
Microcontroller
T 61400 40300 9 15 1 0 0 3 1
Antony Chan
T 40900 55500 9 14 1 0 0 0 1
I2C communication from master
C 41300 53400 1 0 0 connector4-1.sym
{
T 43100 54300 5 10 0 1 0 0 1
device=CONNECTOR_4
T 41300 54800 5 10 1 1 0 0 1
refdes=MASTER
T 41300 53400 5 10 0 1 0 0 1
footprint=JUMPER4
}
C 43000 54100 1 0 0 output-2.sym
{
T 43900 54300 5 10 0 0 0 0 1
net=SDA:1
T 43200 54800 5 10 0 0 0 0 1
device=none
T 43900 54200 5 10 1 1 0 1 1
value=SDA
}
C 43000 53800 1 0 0 output-2.sym
{
T 43900 54000 5 10 0 0 0 0 1
net=SCL:1
T 43200 54500 5 10 0 0 0 0 1
device=none
T 43900 53900 5 10 1 1 0 1 1
value=SCL
}
C 45100 44100 1 0 0 ATmega8-1.sym
{
T 45200 48900 5 10 0 1 0 0 1
footprint=DIP28N
T 47400 48700 5 10 1 1 0 6 1
refdes=U5
T 45200 49700 5 10 0 1 0 0 1
device=ATmega8
T 45100 44100 5 10 0 1 0 0 1
component_label=556-ATMEGA328P-PU
T 45100 44100 5 10 0 1 0 0 1
MOUSER_PART=ATMEGA328P-PU
T 45100 44100 5 10 0 1 0 0 1
value=Atmega328p
}
C 47800 46500 1 0 0 output-2.sym
{
T 48700 46700 5 10 0 0 0 0 1
net=SDA:1
T 48000 47200 5 10 0 0 0 0 1
device=none
T 48700 46600 5 10 1 1 0 1 1
value=SDA
}
C 47800 46300 1 0 0 output-2.sym
{
T 48700 46500 5 10 0 0 0 0 1
net=SCL:1
T 48000 47000 5 10 0 0 0 0 1
device=none
T 48700 46400 5 10 1 1 0 1 1
value=SCL
}
N 47700 46400 47800 46400 4
N 47700 46600 47800 46600 4
N 47700 46200 49400 46200 4
C 49500 46200 1 90 0 resistor-1.sym
{
T 49100 46500 5 10 0 1 90 0 1
device=RESISTOR
T 49800 46800 5 10 1 1 180 0 1
refdes=R4
T 49500 46200 5 10 0 1 0 0 1
footprint=RESC3216M
T 49500 46200 5 10 0 1 0 0 1
value=10k
}
C 49200 47100 1 0 0 5V-plus-1.sym
C 49400 46000 1 270 0 switch-pushbutton-no-1.sym
{
T 49600 45200 5 10 1 1 0 0 1
refdes=RESET
T 50000 45600 5 10 0 1 270 0 1
device=SWITCH_PUSHBUTTON_NO
T 49400 46000 5 10 0 1 270 0 1
footprint=tact_button
T 49400 46000 5 10 0 1 270 0 1
RS_PART=479-1413
}
C 44100 44000 1 0 0 crystal-1.sym
{
T 44300 44500 5 10 0 1 0 0 1
device=CRYSTAL
T 44300 44300 5 10 1 1 0 0 1
refdes=U6
T 44100 44000 5 10 0 1 0 0 1
footprint=CRYSTAL 300
T 44100 44000 5 10 0 1 0 0 1
value=16MHz
T 44100 44000 5 10 0 1 0 0 1
MOUSER_PART=520-HCU1600-20X
}
C 44300 43200 1 90 0 capacitor-1.sym
{
T 43600 43400 5 10 0 1 90 0 1
device=CAPACITOR
T 43800 43400 5 10 1 1 90 0 1
refdes=C7
T 44300 43200 5 10 0 1 0 0 1
footprint=CAPC3225N
T 44300 43200 5 10 0 1 0 0 1
value=22p
T 44300 43200 5 10 0 1 0 0 1
MOUSER_PART=77-VJ1206A220JXQPBC
T 44300 43200 5 10 0 1 0 0 1
MPN=VJ1206A220JXQPW1BC
}
C 45000 43200 1 90 0 capacitor-1.sym
{
T 44300 43400 5 10 0 1 90 0 1
device=CAPACITOR
T 44500 43400 5 10 1 1 90 0 1
refdes=C8
T 45000 43200 5 10 0 1 0 0 1
footprint=CAPC3225N
T 45000 43200 5 10 0 1 0 0 1
value=22p
T 45000 43200 5 10 0 1 0 0 1
MOUSER_PART=77-VJ1206A220JXQPBC
T 45000 43200 5 10 0 1 0 0 1
MPN=VJ1206A220JXQPW1BC
}
C 44600 42900 1 0 0 ground.sym
N 44100 43200 44800 43200 4
N 45100 44500 44100 44500 4
N 44100 44500 44100 44100 4
N 45100 44300 44800 44300 4
N 44800 44300 44800 44100 4
N 45100 47400 43100 47400 4
N 43100 47400 43100 45700 4
N 43100 45700 42400 45700 4
C 48200 45100 1 0 0 5V-plus-1.sym
C 48600 44200 1 90 0 capacitor-1.sym
{
T 47900 44400 5 10 0 1 90 0 1
device=CAPACITOR
T 48100 44400 5 10 1 1 90 0 1
refdes=C9
T 48600 44200 5 10 0 1 0 0 1
footprint=CAPC3225N
T 48600 44200 5 10 0 1 0 0 1
value=100n
T 48600 44200 5 10 0 1 0 0 1
MOUSER_PART=581-12101C104KAZ4A
T 48600 44200 5 10 0 1 0 0 1
MPN=12101C104KAZ4A
}
N 47700 45100 48400 45100 4
C 48300 43900 1 0 0 gnd-1.sym
C 42400 44900 1 0 1 led-1.sym
{
T 41600 45500 5 10 0 1 0 6 1
device=LED
T 41600 45300 5 10 1 1 0 6 1
refdes=LOCK
T 42400 44900 5 10 0 1 0 0 1
footprint=LED3
T 42400 44900 5 10 0 1 0 0 1
value=GREEN
}
C 42400 44200 1 0 1 led-1.sym
{
T 41600 44800 5 10 0 1 0 6 1
device=LED
T 41600 44600 5 10 1 1 0 6 1
refdes=ALARM
T 42400 44200 5 10 0 1 0 0 1
footprint=LED3
T 42400 44200 5 10 0 1 0 0 1
value=RED
}
C 40800 44100 1 0 1 gnd-1.sym
N 40700 44400 40700 45700 4
N 41500 45100 40700 45100 4
N 41500 44400 40700 44400 4
N 41400 45700 40700 45700 4
C 42400 45700 1 0 1 switch-pushbutton-nc-2.sym
{
T 42000 45950 5 10 1 1 0 6 1
refdes=INTERLOCK
T 42100 46300 5 10 0 1 0 6 1
device=SWITCH_PUSHBUTTON_NC
T 42400 45700 5 10 0 1 0 6 1
footprint=JUMPER2
}
N 45100 47200 43300 47200 4
N 43300 47200 43300 45100 4
N 45100 47000 43500 47000 4
N 43500 44400 43500 47000 4
C 43700 48300 1 0 0 input-2.sym
{
T 43700 48500 5 10 0 0 0 0 1
net=RX:1
T 44300 49000 5 10 0 0 0 0 1
device=none
T 44200 48400 5 10 1 1 0 7 1
value=RX
}
C 43700 48100 1 0 0 input-2.sym
{
T 43700 48300 5 10 0 0 0 0 1
net=TX:1
T 44300 48800 5 10 0 0 0 0 1
device=none
T 44200 48200 5 10 1 1 0 7 1
value=TX
}
C 49300 44700 1 0 0 gnd-1.sym
N 49400 46000 49400 46200 4
C 52900 53000 1 90 0 capacitor-1.sym
{
T 52200 53200 5 10 0 1 90 0 1
device=CAPACITOR
T 52900 53000 5 10 0 1 0 0 1
footprint=CAPC3225N
T 52900 53000 5 10 0 1 0 0 1
value=100n
T 52900 53000 5 10 0 1 0 0 1
RS_PART=434-8104
T 52400 53200 5 10 1 1 90 0 1
refdes=C4
T 52900 53000 5 10 0 1 0 0 1
MOUSER_PART=581-12101C104KAZ4A
T 52900 53000 5 10 0 1 0 0 1
MPN=12101C104KAZ4A
}
C 52500 53900 1 0 0 5V-plus-1.sym
C 52600 52700 1 0 0 gnd-1.sym
C 42400 45000 1 0 0 resistor-1.sym
{
T 42700 45400 5 10 0 1 0 0 1
device=RESISTOR
T 42600 45300 5 10 1 1 0 0 1
refdes=R2
T 42400 45000 5 10 0 1 0 0 1
footprint=RESC3216M
T 42400 45000 5 10 0 1 0 0 1
value=10k
}
C 42400 44300 1 0 0 resistor-1.sym
{
T 42700 44700 5 10 0 1 0 0 1
device=RESISTOR
T 42600 44600 5 10 1 1 0 0 1
refdes=R3
T 42400 44300 5 10 0 1 0 0 1
footprint=RESC3216M
T 42400 44300 5 10 0 1 0 0 1
value=10k
}
C 49400 46000 1 0 0 capacitor-1.sym
{
T 49600 46700 5 10 0 1 0 0 1
device=CAPACITOR
T 50000 46400 5 10 1 1 0 0 1
refdes=C10
T 49400 46000 5 10 0 1 0 0 1
value=100n
T 49400 46000 5 10 0 1 0 0 1
MOUSER_PART=581-12101C104KAZ4A
T 49400 46000 5 10 0 1 0 0 1
MPN=12101C104KAZ4A
T 49400 46000 5 10 0 1 0 0 1
footprint=CAPC3225N
}
C 51700 46100 1 0 1 input-2.sym
{
T 51700 46300 5 10 0 0 0 6 1
net=FTDI_BOOT:1
T 51100 46800 5 10 0 0 0 6 1
device=none
T 51200 46200 5 10 1 1 0 1 1
value=FTDI_BOOT
}
N 43500 44400 43300 44400 4
C 45400 54500 1 0 0 vcc-1.sym
C 48300 53800 1 0 0 connector3-1.sym
{
T 50100 54700 5 10 0 0 0 0 1
device=CONNECTOR_3
T 48300 54900 5 10 1 1 0 0 1
refdes=CONN?
}
C 48300 52400 1 0 0 connector3-1.sym
{
T 50100 53300 5 10 0 0 0 0 1
device=CONNECTOR_3
T 48300 53500 5 10 1 1 0 0 1
refdes=CONN?
}
C 48300 51000 1 0 0 connector3-1.sym
{
T 50100 51900 5 10 0 0 0 0 1
device=CONNECTOR_3
T 48300 52100 5 10 1 1 0 0 1
refdes=CONN?
}
C 48300 49500 1 0 0 connector3-1.sym
{
T 50100 50400 5 10 0 0 0 0 1
device=CONNECTOR_3
T 48300 50600 5 10 1 1 0 0 1
refdes=CONN?
}
N 50000 54300 50900 54300 4
N 50900 54300 50900 50000 4
N 50000 54000 50600 54000 4
N 50600 54000 50600 49700 4
N 50000 54600 51200 54600 4
N 51200 54600 51200 50300 4
N 50000 49700 50600 49700 4
N 50000 50000 52500 50000 4
N 50000 50300 51200 50300 4
N 50000 51200 50600 51200 4
N 50000 51500 50900 51500 4
N 50000 51800 51200 51800 4
N 50000 52600 50600 52600 4
N 50000 52900 50900 52900 4
N 50000 53200 51200 53200 4
C 52000 50000 1 90 0 resistor-1.sym
{
T 51600 50300 5 10 0 1 90 0 1
device=RESISTOR
T 52300 50600 5 10 1 1 180 0 1
refdes=R4
T 52000 50000 5 10 0 1 0 0 1
footprint=RESC3216M
T 52000 50000 5 10 0 1 0 0 1
value=10k
}
C 51700 50900 1 0 0 5V-plus-1.sym
N 51900 50900 51200 50900 4
C 50500 49400 1 0 0 gnd-1.sym
C 41400 50300 1 0 0 connector6-1.sym
{
T 43200 52100 5 10 0 1 0 0 1
device=CONNECTOR_6
T 41400 50300 5 10 0 1 0 0 1
footprint=JUMPER6
T 41500 52300 5 10 1 1 0 0 1
refdes=FTDI
}
C 43000 50200 1 0 0 gnd-1.sym
C 43100 52400 1 0 0 5V-plus-1.sym
N 43300 52400 43300 51100 4
N 43300 51100 43100 51100 4
N 43100 51700 43500 51700 4
N 43100 51400 43500 51400 4
C 43500 51600 1 0 0 output-2.sym
{
T 44400 51800 5 10 0 0 0 0 1
net=TX:1
T 43700 52300 5 10 0 0 0 0 1
device=none
T 44400 51700 5 10 1 1 0 1 1
value=TX
}
C 43500 51300 1 0 0 output-2.sym
{
T 44400 51500 5 10 0 0 0 0 1
net=RX:1
T 43700 52000 5 10 0 0 0 0 1
device=none
T 44400 51400 5 10 1 1 0 1 1
value=RX
}
C 43500 51900 1 0 0 output-2.sym
{
T 44400 52100 5 10 0 0 0 0 1
net=FTDI_BOOT:1
T 43700 52600 5 10 0 0 0 0 1
device=none
T 44400 52000 5 10 1 1 0 1 1
value=FTDI_BOOT
}
N 43100 52000 43500 52000 4
T 40700 50400 9 12 1 0 0 0 1
Black
T 40700 51900 9 12 1 0 0 0 1
Green
T 40700 52700 9 14 1 0 0 0 1
Debug
C 52500 49900 1 0 0 output-2.sym
{
T 53400 50100 5 10 0 0 0 0 1
net=ONE_WIRE:1
T 52700 50600 5 10 0 0 0 0 1
device=none
T 53400 50000 5 10 1 1 0 1 1
value=ONE_WIRE
}
C 43700 47500 1 0 0 input-2.sym
{
T 43700 47700 5 10 0 0 0 0 1
net=ONE_WIRE:1
T 44300 48200 5 10 0 0 0 0 1
device=none
T 44200 47600 5 10 1 1 0 7 1
value=ONE_WIRE
}
C 56000 53500 1 0 0 pmos-3.sym
{
T 56600 54000 5 10 0 0 0 0 1
device=PMOS_TRANSISTOR
T 56700 54100 5 10 1 1 0 0 1
refdes=Q?
}
C 56000 52200 1 0 0 pmos-3.sym
{
T 56600 52700 5 10 0 0 0 0 1
device=PMOS_TRANSISTOR
T 56700 52800 5 10 1 1 0 0 1
refdes=Q?
}
C 56000 51000 1 0 0 pmos-3.sym
{
T 56600 51500 5 10 0 0 0 0 1
device=PMOS_TRANSISTOR
T 56700 51600 5 10 1 1 0 0 1
refdes=Q?
}
C 56000 49800 1 0 0 pmos-3.sym
{
T 56600 50300 5 10 0 0 0 0 1
device=PMOS_TRANSISTOR
T 56700 50400 5 10 1 1 0 0 1
refdes=Q?
}
C 57000 44700 1 0 1 connector6-1.sym
{
T 55200 46500 5 10 0 0 0 6 1
device=CONNECTOR_6
T 56900 46700 5 10 1 1 0 6 1
refdes=OLED
}
T 55300 47200 9 14 1 0 0 0 1
OLED display
