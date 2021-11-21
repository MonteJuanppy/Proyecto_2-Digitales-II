//Proyecto II
//Desarrollo de FSM
//20-11-2012
//Version 1.0

//Probador

module probador_FSM (output reg reset,
            output reg clk,
            output reg init,
            output reg [2:0] umbral_alto,
            output reg [2:0] umbral_bajo,
            output reg [9:0] FIFO_empty,
            input idle,
            input [2:0] interno_alto,
            input [2:0] interno_bajo);

    initial begin
        reset <= 0;
        init <= 0;
        umbral_alto <= 5;
        clk <= 0;
        umbral_bajo <= 1;
        FIFO_empty <= 10'b1111111111;
    end
    always #1 clk <= ~clk;

	initial begin
	$dumpfile("FSM.vcd");
	$dumpvars;

    @(posedge clk);
    @(posedge clk);
    reset <= 1;
    umbral_bajo <= 3;
    umbral_alto <= 6;
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    FIFO_empty <= 1;
    @(posedge clk);
    umbral_bajo <= 2;
    umbral_alto <= 7;
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    init = 1;
    @(posedge clk);
    init = 0;
    @(posedge clk);
    @(posedge clk);

	#3 $finish;
    
	end

endmodule