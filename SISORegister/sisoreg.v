`include "dff.v"

module sisoreg(input clk,input reset,input si, output so);

    wire [2:0] q_internal;

    d_ff f0 (.clk(clk), .reset(reset), .D(si),.Q(q_internal[0]));
    
    d_ff f1 (.clk(clk), .reset(reset), .D(q_internal[0]), .Q(q_internal[1]));
    
    d_ff f2 (.clk(clk), .reset(reset), .D(q_internal[1]), .Q(q_internal[2]));
    
    d_ff f3 (.clk(clk), .reset(reset), .D(q_internal[2]), .Q(so));

endmodule