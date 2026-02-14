`include "dff.v"

module self_correcting_ring(
    input clk,
    input reset,
    output [3:0] q
    );
    
    wire d0_input;
    

    assign d0_input = ~(q[0] | q[1] | q[2]);

    // Structural instantiation of D Flip-Flops
    d_ff f0 (.clk(clk), .reset(reset), .D(d0_input), .Q(q[0]));
    d_ff f1 (.clk(clk), .reset(reset), .D(q[0]),     .Q(q[1]));
    d_ff f2 (.clk(clk), .reset(reset), .D(q[1]),     .Q(q[2]));
    d_ff f3 (.clk(clk), .reset(reset), .D(q[2]),     .Q(q[3]));
    
endmodule