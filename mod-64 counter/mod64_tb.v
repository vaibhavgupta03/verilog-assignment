`include "mod64.v"

module mod64tb;
reg clk,reset;
wire [5:0] count;

mod64 uut(.clk(clk),.reset(reset),.count(count));

initial clk = 1'b0;
always #5 clk = ~clk;

initial
begin
   $monitor("At time %t, count = %b",$time,count);
    reset = 1;
    #10 reset = 0;
    #800 $finish;
end
endmodule
