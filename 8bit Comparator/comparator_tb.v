`include "comparator.v"

module comparator_tb;
reg [7:0] a,b;
wire gt,lt,eq;

comparator c1(a,b,gt,lt,eq);

initial begin
a = 8'b00000000; b = 8'b00000000; #10;
a = 8'b00000001; b = 8'b00000000; #10;
a = 8'b00000000; b = 8'b00000001; #10;
a = 8'b00000011; b = 8'b00000001; #10;
a = 8'b00000001; b = 8'b00000011; #10;
a = 8'b11111111; b = 8'b00000000; #10;
a = 8'b00000000; b = 8'b11111111; #10;
a = 8'b10101010; b = 8'b01010101; #10;
a = 8'b01010101; b = 8'b10101010; #10;
end

initial begin
$monitor("a=%b b=%b gt=%b lt=%b eq=%b",a,b,gt,lt,eq);
$dumpfile("comparator_wave.vcd");
$dumpvars(0,comparator_tb);
end
endmodule