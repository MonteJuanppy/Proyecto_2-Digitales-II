//Proyecto II
//14-11-2012
//Version 1.0

//Probador

module probador_contador
                    
(output reg push0,
output reg push1,
output reg push2,
output reg push3,
output reg push4,
output reg req,
output reg [2:0] idx,
  output reg clk,
  input [4:0] data,
  input valid);

    initial clk <= 0;
    initial push0 <= 0;
    initial push1 <= 0;
    initial push2 <= 0;
    initial push3 <= 0;
    initial push4 <= 0;
    initial req <= 0;
    initial idx <=0;
    
    always #1 clk <= ~clk;

	initial begin
	$dumpfile("contador.vcd");
	$dumpvars;

    @(posedge clk);
    @(posedge clk);
    push0 = 1;
    @(posedge clk);
    req = 1;
    @(posedge clk);
    @(posedge clk);
    #0.9  push1 = 1; 
    @(posedge clk);
    @(posedge clk);
    #0.9 push2 = 1;
    @(posedge clk);
    @(posedge clk);
    #0.9 push0 = 0;

    @(posedge clk);
    @(posedge clk);
    #0.9 idx = 1;
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);

	#3 $finish;
    
	end

endmodule