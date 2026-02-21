`include "mod4.v"

module mod64(
    input clk,
    input reset,
    output [5:0] count
);


// First stage – LSB
mod4 M1(
    .clk(clk),
    .reset(reset),
    .count(count[1:0])
);

// Second stage
mod4 M2(
    .clk(~count[1]),
    .reset(reset),
    .count(count[3:2])
);

// Third stage – MSB
mod4 M3(
    .clk(~count[3]),     // ripple from stage2
    .reset(reset),
    .count(count[5:4])
);
endmodule