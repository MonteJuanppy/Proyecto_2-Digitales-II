//Proyecto Circuitors Digitales II
//21-11-2021
//Capa de transaccion

//Banco de pruebas para capa de transacción

// escala	unidad temporal (valor de "#1") / precisión
`timescale 	1ns	/ 100ps

// Se incluyen los archivos necesario
`include "capa_transaccion.v"
//`include "capa_transaccion_synth.v"
`include "probador_capa.v"


module banco_capa;

    //Wires
    wire [11:0] FIFO_in;//Entrada principal
    wire PUSH;//push para Fifo principal
    wire [3:0] pop_fifo_azules;//pop para FIFO azules
    wire [2:0] umbral_bajo;//umbral de los FIFO para almost Empty
    wire [2:0] umbral_alto;//umbral de los FIFO para almost Full
    wire clk; //señal de reloj
    wire reset;
    wire Enable;
    wire init;//señal de init para FSM
    wire req; //señal de request para los contadores
    wire [2:0] idx; //señal para indexar el contador
    wire [4:0] salida_contador;
    wire valid_contador;
    wire [11:0] data_out_fifo_azules[0:3]; 
    wire idle; //señal de idle de FSM
    

	// Se instancia el módulo de memoria conductual
	capa_transaccion conductual(/*AUTOINST*/);

   //capa_transaccion_synth estructural(/*AUTOINST*/);

	// Probador
	probador_capa probador(/*AUTOINST*/);

endmodule
