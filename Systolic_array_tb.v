`timescale 1ns/1ps

module systolic_array_tb;

    reg clk;
    reg rst;
    reg start;

    reg [7:0] A00;
    reg [7:0] A01;
    reg [7:0] A10;
    reg [7:0] A11;

    reg [7:0] B00;
    reg [7:0] B01;
    reg [7:0] B10;
    reg [7:0] B11;

    wire [17:0] C00;
    wire [17:0] C01;
    wire [17:0] C10;
    wire [17:0] C11;

    wire done;

    // DUT
    systolic_array DUT (
        .clk(clk),
        .rst(rst),
        .start(start),

        .A00(A00),
        .A01(A01),
        .A10(A10),
        .A11(A11),

        .B00(B00),
        .B01(B01),
        .B10(B10),
        .B11(B11),

        .C00(C00),
        .C01(C01),
        .C10(C10),
        .C11(C11),

        .done(done)
    );

    // Clock
    always #10 clk = ~clk;

    initial begin

        // Initial values
        clk   = 0;
        rst   = 1;
        start = 0;

        A00 = 0;
        A01 = 0;
        A10 = 0;
        A11 = 0;

        B00 = 0;
        B01 = 0;
        B10 = 0;
        B11 = 0;

        // Reset
        #20;
        rst = 0;

        // ------------------------------------------------
        // MATRIX A
        //
        // 1  2
        // 3  4
        //
        // MATRIX B
        //
        // 5  6
        // 7  8
        // ------------------------------------------------

        A00 = 8'd1;
        A01 = 8'd2;
        A10 = 8'd3;
        A11 = 8'd4;

        B00 = 8'd5;
        B01 = 8'd6;
        B10 = 8'd7;
        B11 = 8'd8;

        // Start calculation
        #10;
        start = 1;

        #20;
        start = 0;

        // Wait for calculation
        #50;

        $display("--------------------------------------");
        $display("       2x2 SYSTOLIC ARRAY             ");
        $display("--------------------------------------");

        $display("Matrix A:");
        $display("%d %d", A00, A01);
        $display("%d %d", A10, A11);

        $display("");

        $display("Matrix B:");
        $display("%d %d", B00, B01);
        $display("%d %d", B10, B11);

        $display("");

        $display("Matrix C = A x B:");

        $display("C00 = %d", C00);
        $display("C01 = %d", C01);
        $display("C10 = %d", C10);
        $display("C11 = %d", C11);

        $display("--------------------------------------");

        // Expected:
        // C00 = 19
        // C01 = 22
        // C10 = 43
        // C11 = 50

        #30;

        // Second test
        A00 = 8'd2;
        A01 = 8'd0;
        A10 = 8'd0;
        A11 = 8'd2;

        B00 = 8'd3;
        B01 = 8'd4;
        B10 = 8'd5;
        B11 = 8'd6;

        #10;
        start = 1;

        #20;
        start = 0;

        #50;

        $display("--------------------------------------");
        $display("SECOND TEST");
        $display("--------------------------------------");

        $display("C00 = %d", C00);
        $display("C01 = %d", C01);
        $display("C10 = %d", C10);
        $display("C11 = %d", C11);

        $display("--------------------------------------");

        #30;

        $finish;

    end

    // Waveform
    initial begin
        $dumpfile("systolic_array.vcd");
        $dumpvars(0, systolic_array_tb);
    end

endmodule
