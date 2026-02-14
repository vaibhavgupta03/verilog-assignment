`timescale 1ns / 1ps
`include "dff.v"
module dff_tb;
reg clk,reset,D;
wire Q;

d_ff uut(.D(D),.clk(clk),.reset(reset),.Q(Q));

initial begin
clk = 1'b0;
forever #5 clk = ~clk;
end

initial begin
reset = 1;
#20 reset = 0; D = 1;
#20 D = 0;
#20 reset = 1; D = 1;
#10 reset = 0;
#20 $finish;
end
endmodule