`include "dff.v"

module siporeg(
    input clk,
    input reset,
    input si,        
    output [3:0] po
    );

    d_ff f0 (.clk(clk), .reset(reset), .D(si),    .Q(po[0]));

    d_ff f1 (.clk(clk), .reset(reset), .D(po[0]), .Q(po[1]));

    d_ff f2 (.clk(clk), .reset(reset), .D(po[1]), .Q(po[2]));

    d_ff f3 (.clk(clk), .reset(reset), .D(po[2]), .Q(po[3]));

endmodule