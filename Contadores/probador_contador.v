//Proyecto II
//14-11-2012
//Version 1.0

//Probador

module probador_contador
                    
(output reg clk,   //señal de reloj
  output reg push, //push
  input [5:0]  cuenta,
  input [5:0]  cuenta_synth);

    initial clk <= 0;
    initial push <= 0;
    
    always #1 clk <= ~clk;

	initial begin
	$dumpfile("contador.vcd");
	$dumpvars;

    @(posedge clk);
    @(posedge clk);
    push = 1;
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    #0.01 push = 0;
    @(posedge clk);
    @(posedge clk);
    #0.9 push = 1;
    @(posedge clk);
    
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);

	#3 $finish;
    
	end

endmodule