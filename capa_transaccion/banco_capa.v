//Proyecto Circuitors Digitales II
//21-11-2021
//Capa de transaccion

//Banco de pruebas para capa de transacción

// escala	unidad temporal (valor de "#1") / precisión
`timescale 	1ns	/ 100ps

// Se incluyen los archivos necesario
`include "capa_transaccion.v"
`include "capa_transaccion_synth.v"
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
    wire [4:0] salida_contador_synth;
    wire valid_contador_synth;
    wire [11:0] data_out_fifo_azul_p0_synth;
    wire [11:0] data_out_fifo_azul_p1_synth;
    wire [11:0] data_out_fifo_azul_p2_synth;
    wire [11:0] data_out_fifo_azul_p3_synth;
    wire [11:0] data_out_fifo_azul_p0;
    wire [11:0] data_out_fifo_azul_p1;
    wire [11:0] data_out_fifo_azul_p2;
    wire [11:0] data_out_fifo_azul_p3;
    wire idle; //señal de idle de FSM
    wire idle_synth; //señal de idle de FSM
    

	// Se instancia el módulo de memoria conductual
	capa_transaccion conductual(/*AUTOINST*/
				    // Outputs
				    .salida_contador	(salida_contador[4:0]),
				    .valid_contador	(valid_contador),
				    .data_out_fifo_azul_p0(data_out_fifo_azul_p0[11:0]),
				    .data_out_fifo_azul_p1(data_out_fifo_azul_p1[11:0]),
				    .data_out_fifo_azul_p2(data_out_fifo_azul_p2[11:0]),
				    .data_out_fifo_azul_p3(data_out_fifo_azul_p3[11:0]),
				    .idle		(idle),
				    // Inputs
				    .FIFO_in		(FIFO_in[11:0]),
				    .PUSH		(PUSH),
				    .pop_fifo_azules	(pop_fifo_azules[3:0]),
				    .umbral_bajo	(umbral_bajo[2:0]),
				    .umbral_alto	(umbral_alto[2:0]),
				    .clk		(clk),
				    .reset		(reset),
				    .Enable		(Enable),
				    .init		(init),
				    .req		(req),
				    .idx		(idx[2:0]));

   capa_transaccion_synth estructural(/*AUTOINST*/

                    // Outputs
				    .salida_contador_synth	(salida_contador_synth[4:0]),
				    .valid_contador_synth	(valid_contador_synth),
				    .data_out_fifo_azul_p0(data_out_fifo_azul_p0_synth[11:0]),
				    .data_out_fifo_azul_p1(data_out_fifo_azul_p1_synth[11:0]),
				    .data_out_fifo_azul_p2(data_out_fifo_azul_p2_synth[11:0]),
				    .data_out_fifo_azul_p3(data_out_fifo_azul_p3_synth[11:0]),
				    .idle		(idle_synth),
				    // Inputs
				    .FIFO_synth_in	(FIFO_in[11:0]),
				    .PUSH		(PUSH),
				    .pop_fifo_azules	(pop_fifo_azules[3:0]),
				    .umbral_bajo	(umbral_bajo[2:0]),
				    .umbral_alto	(umbral_alto[2:0]),
				    .clk		(clk),
				    .reset		(reset),
				    .Enable		(Enable),
				    .init		(init),
				    .req		(req),
				    .idx		(idx[2:0]));

	// Probador
	probador_capa probador(/*AUTOINST*/
			       // Outputs
			       .FIFO_in		(FIFO_in[11:0]),
			       .PUSH		(PUSH),
			       .pop_fifo_azules	(pop_fifo_azules[3:0]),
			       .umbral_bajo	(umbral_bajo[2:0]),
			       .umbral_alto	(umbral_alto[2:0]),
			       .clk		(clk),
			       .reset		(reset),
			       .Enable		(Enable),
			       .init		(init),
			       .req		(req),
			       .idx		(idx[2:0]),
			       // Inputs
			       .salida_contador	(salida_contador[4:0]),
			       .valid_contador	(valid_contador),
			       .data_out_fifo_azul_p0(data_out_fifo_azul_p0[11:0]),
			       .data_out_fifo_azul_p1(data_out_fifo_azul_p1[11:0]),
			       .data_out_fifo_azul_p2(data_out_fifo_azul_p2[11:0]),
			       .data_out_fifo_azul_p3(data_out_fifo_azul_p3[11:0]),
			       .idle		(idle));

endmodule
