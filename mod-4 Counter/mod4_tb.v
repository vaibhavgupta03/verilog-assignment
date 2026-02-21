`include "mod4.v"

module mod4tb;
reg clk,reset;
wire [1:0] count;

mod4 uut(.clk(clk),.reset(reset),.count(count));

initial clk = 1'b0;
always #5 clk = ~clk;

initial
begin
    reset = 1;
    #10 reset = 0;
    #80 $finish;
end

initial
begin
    $monitor("At time %t, count = %b",$time,count);
end
endmodule