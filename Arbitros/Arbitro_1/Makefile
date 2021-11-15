#Proyecto II
#Fecha: 15-11-2021
#Version 1.0
#Archivo Makefile

CC = iverilog
PP = vvp

Compile: arbitro_1.v banco_arbitro_1.v probador_arbitro_1.v 
	yosys -s arbitro_1.ys
	sed -i 's/arbitro_1/arbitro_1_synth/' arbitro_1_synth.v
	#emacs  --batch banco_arbitro_1.v -f verilog-batch-auto
	$(CC) -o arbitro_1.vvp banco_arbitro_1.v 
	$(PP) arbitro_1.vvp
	gtkwave arbitro_1.vcd

