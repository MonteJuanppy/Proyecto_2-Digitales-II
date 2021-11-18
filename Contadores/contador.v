//Proyecto II
//13-11-2021
//Version 1
//Modulo de Contadores

module contador 
(input push0,
input push1,
input push2,
input push3,
input push4,
input req,
input [2:0] idx,
  input clk,
  output reg [5:0] data,
  output reg valid);

initial data = 0;
initial valid = 0;
reg [3:0] cuenta0 = 0;
reg [3:0] cuenta1 = 0;
reg [3:0] cuenta2 = 0;
reg [3:0] cuenta3 = 0;
reg [3:0] cuenta4 = 0;

always @(posedge clk) begin
    //Por cada push se incrementa la cantidad de datos
  
  if (push0) cuenta0 <= cuenta0 + 1;

  if (push1) cuenta1 <= cuenta1 + 1;

  if (push2) cuenta2 <= cuenta2 + 1;

  if (push3) cuenta3 <= cuenta3 + 1;

  if (push4) cuenta4 <= cuenta4 + 1;

  if (req) begin

    case (idx)
      0:  data <= cuenta0;
      1:  data <= cuenta1;
      2:  data <= cuenta2;
      3:  data <= cuenta3;
      4:  data <= cuenta4;

      default: data = 0;
    endcase
    valid = 1;
  end
  else valid = 0;
end

endmodule

