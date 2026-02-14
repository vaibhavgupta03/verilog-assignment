`timescale 1ns / 1ps
`include "siporeg.v"

`timescale 1ns / 1ps

module siporegtb;
    reg clk;
    reg reset;
    reg si;
    wire [3:0] po;

   siporeg uut (
        .clk(clk),
        .reset(reset),
        .si(si),
        .po(po)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; si = 0;
        #20 reset = 0;

        #10 si = 1;
        #10 si = 0;
        #10 si = 1;
        #10 si = 1;

        #20 si = 0; 
        
        #20 $finish;
    end
endmodule