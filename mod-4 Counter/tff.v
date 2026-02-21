`include "dff.v"
module t_ff(
    input clk,rst,T,
    output q
    );
    d_ff uut (.D((T ^ q)),.clk(clk),.rst(rst),.q(q));
endmodule