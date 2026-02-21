module loadCounter(load_en,clk,rst,load,count);
input load_en,clk,rst;
input [3:0] load;
output reg [3:0] count;

reg [3:0] temp;
always @(posedge clk or posedge rst) begin
  if (rst == 1) temp = 0;
  else if (load_en == 1) temp = load;
  else temp = temp + 1;
end
always @(temp) count = temp;
endmodule