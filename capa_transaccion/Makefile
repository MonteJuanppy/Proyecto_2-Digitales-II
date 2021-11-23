#Proyecto Digitales II
#Fecha: 21-11-2021
#Version 1.0
#Archivo Makefile

CC = iverilog
PP = vvp

Compile: banco_capa.v capa_transaccion.v probador_capa.v 
	yosys -s capa.ys
	sed -i 's/capa_transaccion/capa_transaccion_synth/g' capa_transaccion_synth.v
	sed -i 's/FIFO/FIFO_synth/g' capa_transaccion_synth.v
	sed -i 's/memoria/memoria_synth/g' capa_transaccion_synth.v
	sed -i 's/FSM/FSM_synth/g' capa_transaccion_synth.v
	sed -i 's/contador/contador_synth/g' capa_transaccion_synth.v
	sed -i 's/arbitro_1/arbitro_1_synth/g' capa_transaccion_synth.v
	sed -i 's/arbitro_2/arbitro_2_synth/g' capa_transaccion_synth.v
	#emacs  --batch banco_capa.v -f verilog-batch-auto
	$(CC) -o capa.vvp banco_capa.v 
	$(PP) capa.vvp
	gtkwave capa.vcd
