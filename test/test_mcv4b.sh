#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

while /bin/true; do
	echo "------------------------------------------"
	echo "Press enter to test board."
	read
	if [ -c /dev/ttyUSB0 ]; then
		echo "Board found. Press button then press enter to flash."
		read
		echo "Flashing..."
		if /home/sdop/src/stm32flash/stm32flash -b 115200 -w /home/sdop/mcv4_test.bin /dev/ttyUSB0 &> /dev/null; then
			echo -e $GREEN "SUCCESS." $RESET "Check all LEDs."
		else
			echo -e $RED "FAIL." $RESET "Could not flash board."
		fi
	else
		echo -e $RED "FAIL." $RESET "Board not found."
	fi
	echo
	echo
done
