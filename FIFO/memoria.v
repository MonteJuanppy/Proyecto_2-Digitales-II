//Proyecto II
//Desarrollo de Memoria
//5-11-2012
//Version 1.0
//Modulo tomado de: https://riptutorial.com/verilog/example/10519/single-port-synchronous-ram
//Tambien de: https://yamin.cis.k.hosei.ac.jp/fpga/verilog-memory.html

module memoria #(
  parameter DATA_WIDTH=8, //tamaño de datos FIFO_data_in
  parameter ADDR_WIDTH=8)  //tamaño de direcciones

(input [(DATA_WIDTH-1):0] FIFO_data_in, //entrada FIFO_data_in 
  input [(ADDR_WIDTH-1):0] wr_ptr, //direccíón de escritura
  input [(ADDR_WIDTH-1):0] rd_ptr, //direccíón de lectura
  input clk, //señal de reloj
  input write_enable,
  input read_enable,
  output reg [(DATA_WIDTH-1):0] memory_data_out //salida memory_data_out
);

  reg [DATA_WIDTH-1:0] ram [ADDR_WIDTH-1:0]; //Tamaño de la memoria [0:ADDR_WIDTH-1];

  always @(posedge clk) begin 
        if (write_enable) ram[wr_ptr] <= FIFO_data_in; //Escritura
        if (read_enable) memory_data_out <= ram[rd_ptr]; //Lectura
      end
  
endmodule
