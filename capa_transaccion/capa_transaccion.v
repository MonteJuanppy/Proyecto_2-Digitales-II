//Proyecto Circuitors Digitales II
//21-11-2021
//Capa de transaccion

//Descripción del módulo
`include "FIFO.v"
`include "contador.v"
`include "FSM.v"
`include "arbitro_1.v"
`include "arbitro_2.v"

module capa_transaccion(
    input [11:0] FIFO_in,//Entrada principal
    input PUSH,//push para Fifo principal
    input [3:0] pop_fifo_azules,//pop para FIFO azules
    input [2:0] umbral_bajo,//umbral de los FIFO para almost Empty
    input [2:0] umbral_alto,//umbral de los FIFO para almost Full
    input clk, //señal de reloj
    input reset,
    input Enable,
    input init,//señal de init para FSM
    input req, //señal de request para los contadores
    input [2:0] idx, //señal para indexar el contador
    output [4:0] salida_contador,
    output valid_contador,
    output [11:0] data_out_fifo_azul_p0,
    output [11:0] data_out_fifo_azul_p1,
    output [11:0] data_out_fifo_azul_p2,
    output [11:0] data_out_fifo_azul_p3,
    output idle); //señal de idle de FSM

    // cables para FIFO principal
    wire [11:0] salida_fifo_principal;
    wire pop_fifo_principal;
    wire empty_fifo_principal;
    wire full_fifo_princiapl;
    wire almost_empty_principal;
    wire almost_full_principal;

    // arbitro 2 y FIFOS amarillos
    wire [3:0] push_fifos_amarillos;
    wire [3:0] pop_fifos_amarillos;
    wire [3:0] almost_full_fifos_amarillos;
    wire [3:0] almost_empty_fifos_amarillos;
    wire [11:0] salida_fifos_amarillos [0:3];
    wire [3:0] empty_fifos_amarillos;
    wire [3:0] full_fifos_amarillos;

    //arbitro 1 y FIFOS azules
    wire [3:0] push_fifos_azules;
    wire [3:0] almost_full_fifos_azules;
    wire [3:0] almost_empty_fifos_azules;
    wire [11:0] salida_fifos_azules [0:3];
    wire [3:0] empty_fifos_azules;
    wire [3:0] full_fifos_azules;

    //FIFO_central
    reg [11:0] entrada_fifo_central;
    wire [11:0] salida_fifo_central;
    wire empty_fifo_central;
    wire full_fifo_central;
    wire almost_full_fifo_central;
    wire almost_empty_fifo_central;

     //Máquina de Estados FSM
    reg [9:0] All_fifo_empty;

    wire [2:0] interno_bajo;
    wire [2:0] interno_alto;

    //FIFO PRINCIPAL
    FIFO FIFO_principal (.FIFO_data_in(FIFO_in), .clk(clk), .interno_bajo(interno_bajo), .interno_alto(interno_alto), 
    .Reset(reset), .Enable(Enable), .write_enable(PUSH), .read_enable(pop_fifo_principal), .FIFO_data_out(salida_fifo_principal),
    .FIFO_empty(empty_fifo_principal), .FIFO_full(full_fifo_princiapl), .FIFO_almost_empty(almost_empty_principal), .FIFO_almost_full(almost_full_principal));

    //ARBITRO 2
    arbitro_2 arbitro_2 (.clk(clk), .class(salida_fifo_principal[11:10]), .FIFO_empty(empty_fifo_principal), 
    .reset(reset), .Enable(Enable), .Almost_full(almost_full_fifos_amarillos), .Push(push_fifos_amarillos), .Pop(pop_fifo_principal));

    //CAPA DE FIFOS AMARILLOS

    FIFO FIFO_amarillo_p0 (.FIFO_data_in(salida_fifo_principal), .clk(clk), .interno_bajo(interno_bajo), .interno_alto(interno_alto), 
    .Reset(reset), .Enable(Enable), .write_enable(push_fifos_amarillos[0]), .read_enable(pop_fifos_amarillos[0]), .FIFO_data_out(salida_fifos_amarillos[0]),
    .FIFO_empty(empty_fifos_amarillos[0]), .FIFO_full(full_fifos_amarillos[0]), .FIFO_almost_empty(almost_empty_fifos_amarillos[0]), .FIFO_almost_full(almost_full_fifos_amarillos[0]));

     FIFO FIFO_amarillo_p1 (.FIFO_data_in(salida_fifo_principal), .clk(clk), .interno_bajo(interno_bajo), .interno_alto(interno_alto), 
    .Reset(reset), .Enable(Enable), .write_enable(push_fifos_amarillos[1]), .read_enable(pop_fifos_amarillos[1]), .FIFO_data_out(salida_fifos_amarillos[1]),
    .FIFO_empty(empty_fifos_amarillos[1]), .FIFO_full(full_fifos_amarillos[1]), .FIFO_almost_empty(almost_empty_fifos_amarillos[1]), .FIFO_almost_full(almost_full_fifos_amarillos[1]));

     FIFO FIFO_amarillo_p2 (.FIFO_data_in(salida_fifo_principal), .clk(clk), .interno_bajo(interno_bajo), .interno_alto(interno_alto), 
    .Reset(reset), .Enable(Enable), .write_enable(push_fifos_amarillos[2]), .read_enable(pop_fifos_amarillos[2]), .FIFO_data_out(salida_fifos_amarillos[2]),
    .FIFO_empty(empty_fifos_amarillos[2]), .FIFO_full(full_fifos_amarillos[2]), .FIFO_almost_empty(almost_empty_fifos_amarillos[2]), .FIFO_almost_full(almost_full_fifos_amarillos[2]));

     FIFO FIFO_amarillo_p3 (.FIFO_data_in(salida_fifo_principal), .clk(clk), .interno_bajo(interno_bajo), .interno_alto(interno_alto), 
    .Reset(reset), .Enable(Enable), .write_enable(push_fifos_amarillos[3]), .read_enable(pop_fifos_amarillos[3]), .FIFO_data_out(salida_fifos_amarillos[3]),
    .FIFO_empty(empty_fifos_amarillos[3]), .FIFO_full(full_fifos_amarillos[3]), .FIFO_almost_empty(almost_empty_fifos_amarillos[3]), .FIFO_almost_full(almost_full_fifos_amarillos[3]));


    //ARBITRO 1
    arbitro_1 arbitro_1 (.clk(clk), .dest(entrada_fifo_central[9:8]), .FIFO_empty(empty_fifos_amarillos), 
    .reset(reset), .Enable(Enable), .Almost_full(almost_full_fifos_azules), .Push(push_fifos_azules), .Pops(pop_fifos_amarillos));

    //FIFO central
    FIFO FIFO_central (.FIFO_data_in(entrada_fifo_central), .clk(clk), .interno_bajo(interno_bajo), .interno_alto(interno_alto), 
    .Reset(reset), .Enable(Enable), .write_enable(Enable), .read_enable(|pop_fifos_amarillos), .FIFO_data_out(salida_fifo_central),
    .FIFO_empty(empty_fifo_central), .FIFO_full(full_fifo_central), .FIFO_almost_empty(almost_empty_fifo_central), .FIFO_almost_full(almost_full_fifo_central));

    //Capa FIFOs azules
    FIFO FIFO_azul_p0 (.FIFO_data_in(salida_fifo_central), .clk(clk), .interno_bajo(interno_bajo), .interno_alto(interno_alto), 
    .Reset(reset), .Enable(Enable), .write_enable(push_fifos_azules[0]), .read_enable(pop_fifo_azules[0]), .FIFO_data_out(data_out_fifo_azul_p0),
    .FIFO_empty(empty_fifos_azules[0]), .FIFO_full(full_fifos_azules[0]), .FIFO_almost_empty(almost_empty_fifos_azules[0]), .FIFO_almost_full(almost_full_fifos_azules[0]));

     FIFO FIFO_azul_p1 (.FIFO_data_in(salida_fifo_central), .clk(clk), .interno_bajo(interno_bajo), .interno_alto(interno_alto), 
    .Reset(reset), .Enable(Enable), .write_enable(push_fifos_azules[1]), .read_enable(pop_fifo_azules[1]), .FIFO_data_out(data_out_fifo_azul_p1),
    .FIFO_empty(empty_fifos_azules[1]), .FIFO_full(full_fifos_azules[1]), .FIFO_almost_empty(almost_empty_fifos_azules[1]), .FIFO_almost_full(almost_full_fifos_azules[1]));

     FIFO FIFO_azul_p2 (.FIFO_data_in(salida_fifo_central), .clk(clk), .interno_bajo(interno_bajo), .interno_alto(interno_alto), 
    .Reset(reset), .Enable(Enable), .write_enable(push_fifos_azules[2]), .read_enable(pop_fifo_azules[2]), .FIFO_data_out(data_out_fifo_azul_p2),
    .FIFO_empty(empty_fifos_azules[2]), .FIFO_full(full_fifos_azules[2]), .FIFO_almost_empty(almost_empty_fifos_azules[2]), .FIFO_almost_full(almost_full_fifos_azules[2]));

     FIFO FIFO_azul_p3 (.FIFO_data_in(salida_fifo_central), .clk(clk), .interno_bajo(interno_bajo), .interno_alto(interno_alto), 
    .Reset(reset), .Enable(Enable), .write_enable(push_fifos_azules[3]), .read_enable(pop_fifo_azules[3]), .FIFO_data_out(data_out_fifo_azul_p3),
    .FIFO_empty(empty_fifos_azules[3]), .FIFO_full(full_fifos_azules[3]), .FIFO_almost_empty(almost_empty_fifos_azules[3]), .FIFO_almost_full(almost_full_fifos_azules[3]));

    //Contador
    contador contador (.push0(push_fifos_azules[0]), .push1(push_fifos_azules[1]), 
    .push2(push_fifos_azules[2]), .push3(push_fifos_azules[3]), .push4(PUSH), .clk(clk), .req(req), .idx(idx), .data(salida_contador), .valid(valid_contador));

    //Máquina de Estados FSM

    FSM FSM (.reset(reset), .clk(clk), .init(init), .umbral_alto(umbral_alto), .umbral_bajo(umbral_bajo),
            .FIFO_empty(All_fifo_empty), .idle(idle), .interno_alto(interno_alto), .interno_bajo(interno_bajo));

    always @(*) begin
    
    entrada_fifo_central = 0;
    //Multiplexor para FIFOS amarillos a FIFO_central
    if (pop_fifos_amarillos[0] == 1) begin
        entrada_fifo_central = salida_fifos_amarillos[0];
    end

    if (pop_fifos_amarillos[1] == 1) begin
        entrada_fifo_central = salida_fifos_amarillos[1];
    end

    if (pop_fifos_amarillos[2] == 1) begin
        entrada_fifo_central = salida_fifos_amarillos[2];
    end

    if (pop_fifos_amarillos[3] == 1) begin
        entrada_fifo_central = salida_fifos_amarillos[3];
    end
    
    //Asignacio de salidas empty en un solo array
    All_fifo_empty[0] = empty_fifo_principal;
    All_fifo_empty[1] = empty_fifos_amarillos[0];
    All_fifo_empty[2] = empty_fifos_amarillos[1];
    All_fifo_empty[3] = empty_fifos_amarillos[2];
    All_fifo_empty[4] = empty_fifos_amarillos[3];
    All_fifo_empty[5] = empty_fifo_central;
    All_fifo_empty[6] = empty_fifos_azules[0];
    All_fifo_empty[7] = empty_fifos_azules[1];
    All_fifo_empty[8] = empty_fifos_azules[2];
    All_fifo_empty[9] = empty_fifos_azules[3];
    end

    endmodule





    

