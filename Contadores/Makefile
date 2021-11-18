#Proyecto II
#Fecha: 14-11-2021
#Version 1.0
#Archivo Makefile

CC = iverilog
PP = vvp

Compile: contador.v banco_contador.v probador_contador.v 
	yosys -s contador.ys
	sed -i 's/contador/contador_synth/g' contador_synth.v
	#emacs  --batch banco_contador.v -f verilog-batch-auto
	$(CC) -o contador.vvp banco_contador.v 
	$(PP) contador.vvp
	gtkwave contador.vcd

