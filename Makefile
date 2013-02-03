GAF=gaf
PCB=pcb
PROJECTRC=projectrc

BOARD=motor

.PHONY: pdf photo bom clean

pdf: ${BOARD}-schematic.pdf

${BOARD}-schematic.pdf: motor-title.sch motor-logic.sch motor-power.sch
	${GAF} export -p iso_a4 -l landscape -m 10mm -o $@ $^

photo: ${BOARD}-top.png ${BOARD}-bottom.png

${BOARD}-top.png: ${BOARD}.pcb
	${PCB} -x png --dpi 600 --photo-mode --outfile $@ $^

${BOARD}-bottom.png: ${BOARD}.pcb
	${PCB} -x png --dpi 600 --photo-mode --photo-flip-y --outfile $@ $^

bom: bom.html

bom.html: motor-logic.sch motor-power.sch
	sr create_bom $^ $@

clean:
	-rm -f ${BOARD}-{top,bottom}.png bom.html ${BOARD}-schematic.pdf
