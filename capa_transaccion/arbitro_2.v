//Proyecto II
//14-11-2021
//Version 1
//Modulo de Arbitro 2

module arbitro_2 (output reg Pop,
  input clk,
  output reg [3:0] Push,
  input FIFO_empty,
  input [3:0] Almost_full,
  input [1:0] class);

initial Push = 0;
initial Pop = 0;

always @(posedge clk) begin
    if (FIFO_empty | |Almost_full) Pop = 0;
    else Pop = 1;

    // No tiene prioridades
    // Dependiendo del valor de class se habilitan los Pushes

    case (class)
        0: Push = 4'b0001;
        1: Push = 4'b0010;
        2: Push = 4'b0100; 
        3: Push = 4'b1000;
        default: Push = 0;
    endcase
end
endmodule
