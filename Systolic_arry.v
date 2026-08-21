`timescale 1ns/1ps

module systolic_array (
    input  wire        clk,
    input  wire        rst,
    input  wire        start,

    input  wire [7:0]  A00,
    input  wire [7:0]  A01,
    input  wire [7:0]  A10,
    input  wire [7:0]  A11,

    input  wire [7:0]  B00,
    input  wire [7:0]  B01,
    input  wire [7:0]  B10,
    input  wire [7:0]  B11,

    output reg  [17:0] C00,
    output reg  [17:0] C01,
    output reg  [17:0] C10,
    output reg  [17:0] C11,

    output reg         done
);

    // Internal registers
    reg [7:0] a00_reg;
    reg [7:0] a01_reg;
    reg [7:0] a10_reg;
    reg [7:0] a11_reg;

    reg [7:0] b00_reg;
    reg [7:0] b01_reg;
    reg [7:0] b10_reg;
    reg [7:0] b11_reg;

    reg [1:0] count;

    always @(posedge clk) begin

        if (rst) begin

            a00_reg <= 0;
            a01_reg <= 0;
            a10_reg <= 0;
            a11_reg <= 0;

            b00_reg <= 0;
            b01_reg <= 0;
            b10_reg <= 0;
            b11_reg <= 0;

            C00 <= 0;
            C01 <= 0;
            C10 <= 0;
            C11 <= 0;

            count <= 0;
            done  <= 0;

        end

        else begin

            done <= 0;

            if (start) begin

                // Load input matrices
                a00_reg <= A00;
                a01_reg <= A01;
                a10_reg <= A10;
                a11_reg <= A11;

                b00_reg <= B00;
                b01_reg <= B01;
                b10_reg <= B10;
                b11_reg <= B11;

                count <= 0;

            end

            else if (count == 0) begin

                /*
                 * First multiply-accumulate stage
                 *
                 * C00 = A00*B00 + A01*B10
                 * C01 = A00*B01 + A01*B11
                 * C10 = A10*B00 + A11*B10
                 * C11 = A10*B01 + A11*B11
                 */

                C00 <= (a00_reg * b00_reg) +
                       (a01_reg * b10_reg);

                C01 <= (a00_reg * b01_reg) +
                       (a01_reg * b11_reg);

                C10 <= (a10_reg * b00_reg) +
                       (a11_reg * b10_reg);

                C11 <= (a10_reg * b01_reg) +
                       (a11_reg * b11_reg);

                count <= 1;

            end

            else if (count == 1) begin

                done  <= 1;
                count <= 2;

            end

            else begin

                done <= 0;

            end

        end

    end

endmodule
