//Proyecto II
//Desarrollo de estructura FIFO
//5-11-2012
//Version 1.0

module FIFO #(
  parameter DATA_WIDTH=8,          //width of data bus
  parameter ADDR_WIDTH=8           //width of addresses buses
)
    (input [DATA_WIDTH-1:0] FIFO_data_in, //Entrada de datos
    input FIFO_wr, //Indica donde escribir
    input FIFO_rd, //Indica donde realizar lectura
    output [DATA_WIDTH-1:0] FIFO_data_out, //Salida de datos
    output FIFO_empty, //Indica cuando queda mucho espacio en memoria
    output FIFO_full); //Indica cuando queda poco espacio en memoria

