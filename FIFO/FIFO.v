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
    output FIFO_full, //Indica cuando queda poco espacio en memoria
    output FIFO_almost_empty, //Indica cuando queda mucho espacio en memoria
    output FIFO_almost_full); //Indica cuando queda poco espacio en memoria

  reg [(ADDR_WIDTH-1):0] espacios_ocupados =0; //registro para llevar cuenta de espacios disponibles 

  assign FIFO_empty = (espacios_ocupados == 0);
  assign FIFO_full = (espacios_ocupados == ADDR_WIDTH);
  assign FIFO_almost_empty = ((espacios_ocupados <= 2)&(espacios_ocupados != 0));
  assign FIFO_almost_full = ((espacios_ocupados >= ADDR_WIDTH-2)&(espacios_ocupados != ADDR_WIDTH));

  reg [2:0]  rd_ptr, wr_ptr; //registros para contar datos leidos y escritos

  always @ (posedge clk) begin 
  if (Enable==1) begin 

    if (Reset == 0) begin 
      rd_ptr <= 0; 
      wr_ptr <= 0;
      espacios_ocupados <= 0;
      end 

    else begin

    if (read_enable == 1) begin 
      rd_ptr <= rd_ptr + 1; 
    end 

    else rd_ptr <= rd_ptr;

    if (write_enable == 1) begin
      wr_ptr  <= wr_ptr + 1; 
      end 

    else wr_ptr  <= wr_ptr;

    //if (wr_ptr == ADDR_WIDTH) wr_ptr = 0; 
    //else if (rd_ptr == ADDR_WIDTH) rd_ptr = 0; 

    if (write_enable & !read_enable) espacios_ocupados <= espacios_ocupados + 1;
    else;
    if (!write_enable & read_enable) espacios_ocupados <= espacios_ocupados - 1;
    else;

    end
    end
    end
      
  memoria memoria (/*AUTOINST*/
		   // Outputs
		   .FIFO_data_out	(FIFO_data_out[(DATA_WIDTH-1):0]),
		   // Inputs
		   .FIFO_data_in	(FIFO_data_in[(DATA_WIDTH-1):0]),
		   .wr_ptr		(wr_ptr[2:0]),
		   .rd_ptr		(rd_ptr[2:0]),
		   .clk			(clk),
		   .write_enable	(write_enable),
		   .read_enable		(read_enable));

    

endmodule
