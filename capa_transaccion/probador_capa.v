//Proyecto Circuitors Digitales II
//21-11-2021
//Capa de transaccion

//Probador de capa de transacción

module probador_capa (output reg [11:0] FIFO_in,//Entrada principal
    output reg PUSH,//push para Fifo principal
    output reg [3:0] pop_fifo_azules,//pop para FIFO azules
    output reg [2:0] umbral_bajo,//umbral de los FIFO para almost Empty
    output reg [2:0] umbral_alto,//umbral de los FIFO para almost Full
    output reg clk, //señal de reloj
    output reg reset,
    output reg Enable,
    output reg init,//señal de init para FSM
    output reg req, //señal de request para los contadores
    output reg [2:0] idx, //señal para indexar el contador
    input [4:0] salida_contador,
    input valid_contador,
    input [11:0] data_out_fifo_azul_p0,
    input [11:0] data_out_fifo_azul_p1,
    input [11:0] data_out_fifo_azul_p2,
    input [11:0] data_out_fifo_azul_p3,
    input idle); //señal de idle de FSM

    initial begin
        PUSH <= 0;
        pop_fifo_azules <= 0;
        umbral_bajo <=2;
        umbral_alto <= 6;
        clk <= 0;
        reset <= 0;
        Enable <= 0;
        init <= 0;
        req <= 0;
        idx <= 2;
        FIFO_in <= 12'h0FC;
    end
    always #1 clk <= ~clk;

	initial begin
	$dumpfile("capa.vcd");
	$dumpvars;

    /*1. Saque el bloque de RESET, manteniendo el estado de INIT (señal init) */
   
    @(posedge clk);
    Enable <= 1;
    @(posedge clk);
    reset <= 1;
    @(posedge clk);
    init <= 1;

    /*2. Modifique 2 veces los umbrales altos y bajos de los FIFOs (son el mismo umbral bajo y alto para todos). Libere la señal init.*/
    @(posedge clk);
    umbral_bajo <=1;
    umbral_alto <= 7;
    @(posedge clk);
    umbral_bajo <=2;
    umbral_alto <= 6;
    @(posedge clk);
    init <= 0;


    /*3. Provoque un Almost Full en todos los FIFOs de salida, el árbitro no le permitirá hacerlo de forma simultánea. 
    Desde el probador, haga la menor cantidad de POPs. Verifique que las palabras que salieron son las mismas que entraron
    y que salieron por la salida correcta en la prioridad correcta.*/
    @(posedge clk);
    PUSH = 1;
    @(posedge clk);
    FIFO_in <= 12'h0AA;
    @(posedge clk);
    FIFO_in <= 12'h0CC;
    @(posedge clk);
    FIFO_in <= 12'h0F23;
    @(posedge clk);
    FIFO_in <= 12'h077;
    @(posedge clk);
    FIFO_in <= 12'h0BB;
    @(posedge clk);
    PUSH = 0;
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    pop_fifo_azules[0] <= 1;
   


    /*4. Provoque un Almost Full en todos los FIFOs de entrada. Luego usando POPs del probador deje todos los FIFOs vacíos. 
    Verifique que las palabras que salieron son las mismas que entraron y que salieron por la salida correcta en la prioridad correcta.*/

    /*5. Lea los contadores de palabras. El contador 4 debe tener el mismo valor que la suma de los contadores 0, 1, 2 y 3.*/

    /* 6. Envíe 16 palabras, 4 a cada FIFO de entrada, y cada set de 4 palabras por FIFO de entrada estén con destino a cada FIFO 
    de salida (las 4x4=16 combinaciones posibles). Deje todos los FIFOs vacíos. Verifique que las palabras que salieron son las 
    mismas que entraron y que salieron por la salida correcta en la prioridad correcta.*/

   /*7. Lea los contadores de palabras y valide un aumento de 4 palabras por contador. El contador 4 debe tener el mismo
    valor que la suma de los contadores 0, 1, 2 y 3*/
    
    @(posedge clk);
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