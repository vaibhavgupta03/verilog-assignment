`include "shiftreg.v"
module shiftreg_tb;
reg clk,shift_en,shift_in,load_en;
reg [3:0] load;
wire [3:0] regout;

shiftreg uut(load_en,shift_en,shift_in,clk,load,regout);

initial begin
  clk = 0;
  shift_en = 0;
  shift_in = 0;
  load_en = 0;
  load = 4'b0000;
end

always #5 clk = ~clk;

initial begin
  $monitor("At time %t, regout = %b, load_en = %b, load=%b, shift_in = %b, shift_en=%b",$time,regout,load_en,load,shift_in,shift_en);
  #10 load_en = 1; load = 4'b1010;
  #10 load_en = 0; shift_en = 1; shift_in = 1;
  #10 shift_in = 0;
  #10 shift_in = 1;
  #10 shift_in = 0;
end

endmodule