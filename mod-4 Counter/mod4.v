`include "tff.v"

module mod4(clk,reset,count);
input clk,reset;
output [1:0] count;

t_ff UUT0(.clk(clk),.rst(reset),.T(1'b1),.q(count[0]));
t_ff UUT1(.clk(~count[0]),.rst(reset),.T(1'b1),.q(count[1]));
endmodule