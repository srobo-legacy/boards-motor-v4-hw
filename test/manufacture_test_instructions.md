Student Robotics MCv4b Manufacture Test Procedure[^1]
===============================================

Test Jig Parts
==============

 * Netbook (white)
 * Netbook power supply
 * Micro USB cable (black)
 * Power cable (red/black with green plug and fork terminals)

Test Jig Setup
==============

1. Connect red/black power cable to bench power supply
2. Set bench power supply to 12V with 100mA current limit
3. Plug netbook power supply into netbook/mains socket
4. Plug USB cable into netbook
5. Turn netbook on. It will automatically run the test program.

Board Test Procedure
====================

Figure 1 shows a board with the power and USB cables connected and the location of the various LEDs.

1. Plug red/black power cable into middle socket on board
2. Plug micro USB plug of USB cable into USB socket on board
3. Green LED A must illuminate
4. Turn on bench power supply
5. The board must not draw more than 40mA and green LED B must illuminate
6. Press enter on the netbook
7. The netbook must report that it has found the board
8. Press the push button on the side of the board
9. Press enter on the netbook
10. The netbook must report that it has succesfully flashed the board
11. Two red (C, E), two blue (D, F) and two red/blue bi-colour (G, H, I, J) LEDs must flash in turn. They will flash in the sequence C, D, E, F, G, H, I, J
12. Turn off bench power supply and remove power/USB cables ready for the next board

![LED Locations](led_diagram.jpg)
