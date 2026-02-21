`include "memoryBank.v"

module memoryBank_tb;
reg ce;
reg [3:0] address;
wire [3:0] data;

memoryBank uut(ce,address,data);

integer i;
initial begin
  ce = 0;
  address = 4'b0000;
  #100;
end

initial begin
  $monitor("At time %t, ce = %b, address = %b, data = %b",$time,ce,address,data);
  #10 ce = 1;
  for(i=0; i<16; i=i+1) begin
    #10 address = i;
  end
end
endmodule