`include "loadCounter.v"

module loadCounter_tb;
reg load_en,clk,rst;
reg [3:0] load;
wire [3:0] count;

loadCounter uut(load_en,clk,rst,load,count);

initial begin
  clk = 0;
  forever #5 clk = ~clk;
end
initial
begin
  $monitor("At time %t, load_en = %b, rst = %b, load = %b, count = %b",$time,load_en,rst,load,count);
  load_en = 0; rst = 1; load = 4'b0000;
  #10 rst = 0; load_en = 1; load = 4'b1010;
  #10 load_en = 0;
  #50 $finish;
end
endmodule