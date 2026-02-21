module shiftreg(load_en,shift_en,shift_in,clk,load,regout);
input clk,shift_en,shift_in,load_en;
input [3:0] load;
output reg [3:0] regout;

reg [3:0] temp;

always @(posedge clk or load_en) begin
  if(load_en == 1) temp = load;
  else if(shift_en == 1) temp = {temp[2:0],shift_in};
end
always @(temp) regout = temp;
endmodule
