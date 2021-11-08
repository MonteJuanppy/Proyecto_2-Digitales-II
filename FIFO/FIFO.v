//Proyecto II
//Desarrollo de estructura FIFO
//5-11-2012
//Version 1.0

`include "memoria.v"

module FIFO #(
  parameter DATA_WIDTH=8,          //width of data bus
  parameter ADDR_WIDTH=8           //width of addresses buses
)
    (input [DATA_WIDTH-1:0] FIFO_data_in, //Entrada de datos
    input clk, //Señal de reloj
    input Reset, //Señal de reset
    input Enable, //Señal de enable
    input write_enable, //Señal para habilitar escritura
    input read_enable, //Señal para habilitar lectura
    output [DATA_WIDTH-1:0] FIFO_data_out, //Salida de datos
    output FIFO_empty, //Indica cuando queda mucho espacio en memoria
    output FIFO_full); //Indica cuando queda poco espacio en memoria

  reg [2:0] espacios_disponibles = 0; //registro para llevar cuenta de espacios disponibles 
  wire [DATA_WIDTH-1:0] memory_data_out; //cable para salida de la memoria

  assign FIFO_empty = (espacios_disponibles == 0) ? 1'b1:1'b0;
  assign FIFO_full = (espacios_disponibles == 8) ? 1'b1:1'b0;

  reg [2:0]  rd_ptr = 0, wr_ptr = 0; 

  always @ (posedge clk) begin 

  if (Enable==1) begin 

    if (!Reset) begin 
      rd_ptr = 0; 
      wr_ptr = 0; 
      end 

    else if ((read_enable == 1) & (espacios_disponibles != 0)) begin 
      rd_ptr = rd_ptr + 1; 
    end 

    else if ((write_enable == 1) & (espacios_disponibles < 8)) begin
      wr_ptr  = wr_ptr + 1; 
      end 

  end 

  if (wr_ptr==8) wr_ptr=0; 
  else if (rd_ptr==8) rd_ptr=0; 

 if (rd_ptr > wr_ptr) begin 
  espacios_disponibles = rd_ptr-wr_ptr; 
  end 

 else if (wr_ptr > rd_ptr) begin
  espacios_disponibles = wr_ptr-rd_ptr; 
  end 
  end
      
  memoria memoria (/*AUTOINST*/
		   // Outputs
		   .memory_data_out	(memory_data_out[(DATA_WIDTH-1):0]),
		   // Inputs
		   .FIFO_data_in	(FIFO_data_in[(DATA_WIDTH-1):0]),
		   .wr_ptr		(wr_ptr[(ADDR_WIDTH-1):0]),
		   .rd_ptr		(rd_ptr[(ADDR_WIDTH-1):0]),
		   .clk			(clk),
		   .write_enable	(write_enable),
		   .read_enable		(read_enable));

    

endmodule
