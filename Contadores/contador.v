//Proyecto II
//13-11-2021
//Version 1
//Modulo de Contadores

module contador 
(input push,
  input clk,
  output reg [2:0] cuenta);

initial cuenta = 3'b000;

always @(posedge clk) begin
    //Por cada push se incrementa la cantidad de datos
  if (push) cuenta <= cuenta + 1;
  else;

end

endmodule

