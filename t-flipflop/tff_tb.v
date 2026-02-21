`include "tff.v"

module tff_tb;
reg clk,rst,T;
wire q;

t_ff uut(.clk(clk),.rst(rst),.T(T),.q(q));

initial clk = 0;
always #10 clk = ~clk;

initial
begin
$monitor("At time %t, T = %b, q = %b",$time,T,q);
rst = 1; T = 0;
#10 T = 1;
#10 rst = 0;
#10 T = 0;
#10 T = 1;
#20 $finish;
end
endmodule