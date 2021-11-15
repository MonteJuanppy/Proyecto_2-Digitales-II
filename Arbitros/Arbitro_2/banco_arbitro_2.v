//Proyecto II
//14-11-2012
//Version 1.0

//Banco de pruebas para arbitro_2

// escala	unidad temporal (valor de "#1") / precisión
`timescale 	1ns	/ 100ps

// Se incluyen los archivos necesario
`include "arbitro_2.v"
`include "arbitro_2_synth.v"
`include "probador_arbitro_2.v"

module banco_arbitro_2;

    //Wires
    wire clk; //señal de reloj
    wire Pop;
    wire Pop_synth;
    wire [3:0] Push;
    wire [3:0] Push_synth;
    wire FIFO_empty;
    wire [3:0] Almost_full;
    wire [1:0] class;
	
	// Se instancia el módulo de memoria conductual
	arbitro_2 conductual(/*AUTOINST*/
			     // Outputs
			     .Pop		(Pop),
			     .Push		(Push[3:0]),
			     // Inputs
                 .class 	(class [1:0]),
			     .clk		(clk),
			     .FIFO_empty	(FIFO_empty),
			     .Almost_full	(Almost_full[3:0]));

    arbitro_2_synth estructural(/*AUTOINST*/
				// Outputs
				.Pop		(Pop_synth),
				.Push		(Push_synth[3:0]),
				// Inputs
				.Almost_full	(Almost_full[3:0]),
				.FIFO_empty	(FIFO_empty),
				.class 	(class [1:0]),
				.clk		(clk));

	// Probador
	probador_arbitro_2 probador(/*AUTOINST*/
				    // Outputs
				    .clk		(clk),
				    .FIFO_empty		(FIFO_empty),
				    .Almost_full	(Almost_full[3:0]),
                    .class 	(class [1:0]),
				    // Inputs
				    .Pop		(Pop),
				    .Push		(Push[3:0]));

endmodule
