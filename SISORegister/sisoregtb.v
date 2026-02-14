`timescale 1ns / 1ps

module sisoregtb;
    reg clk;
    reg reset;
    reg si;
    wire so;

    sisoreg uut (
        .clk(clk),
        .reset(reset),
        .si(si),
        .so(so)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
    reset = 1; si = 0;
    #12 reset = 0;

    #10 si = 1;
    #10 si = 0;
    #10 si = 1;
    #10 si = 1; 

    repeat (4) #10 si = 0;

    #20 $finish;
end
endmodule