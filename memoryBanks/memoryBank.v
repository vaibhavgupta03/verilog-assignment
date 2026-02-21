module memoryBank(ce,address,data);
input ce;
input [3:0] address;
output [3:0] data;

reg [3:0] mem0 [3:0];
reg [3:0] mem1 [3:0];
reg [3:0] mem2 [3:0];
reg [3:0] mem3 [3:0];

wire [1:0] temp;

initial begin
  mem0 [0] = 4'd0;
  mem0 [1] = 4'd1;
  mem0 [2] = 4'd2;
  mem0 [3] = 4'd3;
  mem1 [0] = 4'd4;
  mem1 [1] = 4'd5;
  mem1 [2] = 4'd6;
  mem1 [3] = 4'd7;
  mem2 [0] = 4'd8;
  mem2 [1] = 4'd9;
  mem2 [2] = 4'd10;
  mem2 [3] = 4'd11;
  mem3 [0] = 4'd12;
  mem3 [1] = 4'd13;
  mem3 [2] = 4'd14;
  mem3 [3] = 4'd15;
end

assign temp = address[1:0];

assign data = (ce == 1) ? ((address[3:2] == 2'b00) ? mem0[temp] : 
                          (address[3:2] == 2'b01) ? mem1[temp] : 
                          (address[3:2] == 2'b10) ? mem2[temp] : mem3[temp]) : 4'bzzzz;
endmodule 
