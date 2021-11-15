//Proyecto II
//14-11-2012
//Version 1.0

//Banco de pruebas para arbitro_2

// escala	unidad temporal (valor de "#1") / precisión
`timescale 	1ns	/ 100ps

// Se incluyen los archivos necesario
`include "arbitro_1.v"
`include "arbitro_1_synth.v"
`include "probador_arbitro_1.v"

module banco_arbitro_1;

    //Wires
    wire clk; //señal de reloj
    wire [3:0] Pops;
    wire [3:0] Pops_synth;
    wire [3:0] Push;
    wire [3:0] Push_synth;
    wire [3:0] FIFO_empty;
    wire [3:0] Almost_full;
    wire [1:0] dest;
	
	// Se instancia el módulo de memoria conductual
	arbitro_1 conductual(/*AUTOINST*/
			     // Outputs
			     .Pops		(Pops[3:0]),
			     .Push		(Push[3:0]),
			     // Inputs
                 .dest 	(dest [1:0]),
			     .clk		(clk),
			     .FIFO_empty	(FIFO_empty[3:0] ),
			     .Almost_full	(Almost_full[3:0]));

    arbitro_1_synth estructural(/*AUTOINST*/
				// Outputs
				.Pops		(Pops_synth[3:0] ),
				.Push		(Push_synth[3:0]),
				// Inputs
				.Almost_full	(Almost_full[3:0]),
				.FIFO_empty	(FIFO_empty[3:0]),
				.dest 	(dest [1:0]),
				.clk		(clk));

	// Probador
	probador_arbitro_1 probador(/*AUTOINST*/
				    // Outputs
				    .clk		(clk),
				    .FIFO_empty		(FIFO_empty[3:0] ),
				    .Almost_full	(Almost_full[3:0]),
                    .dest 	(dest [1:0]),
				    // Inputs
				    .Pops		(Pops[3:0]),
				    .Push		(Push[3:0]));

endmodule
