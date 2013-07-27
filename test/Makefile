SHELL := /bin/bash

.PHONY: instructions clean

HASH=`git rev-parse --short HEAD`
DATE=`date -Iseconds`

instructions_files = manufacture_test_instructions.md

instructions: manufacture_test_instructions.pdf

manufacture_test_instructions.pdf: ${instructions_files}
	pandoc -f markdown -V geometry="paper=a4paper,margin=2cm" -o $@ <(cat $< <(echo -e "\n [^1]: Generated from ${HASH} at ${DATE}"))

clean: *.pdf
	rm -f $^
