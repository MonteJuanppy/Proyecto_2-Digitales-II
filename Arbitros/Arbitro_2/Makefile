#Proyecto II
#Fecha: 14-11-2021
#Version 1.0
#Archivo Makefile

CC = iverilog
PP = vvp

Compile: arbitro_2.v banco_arbitro_2.v probador_arbitro_2.v 
	yosys -s arbitro_2.ys
	sed -i 's/arbitro_2/arbitro_2_synth/' arbitro_2_synth.v
	#emacs  --batch banco_arbitro_2.v -f verilog-batch-auto
	$(CC) -o arbitro_2.vvp banco_arbitro_2.v 
	$(PP) arbitro_2.vvp
	gtkwave arbitro_2.vcd

