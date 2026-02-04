module segmentSeven_tb;
reg [3:0] num;
wire [6:0] y;

sevenSegment uut(num,y);

initial
begin
  $dumpfile("wave.vcd");
  $dumpvars(0,segmentSeven_tb);
  $display("\t       Time | Number     | Seven Segment Output");
  $monitor($time,"| %b\t | %b\t",num,y);
  num = 4'd8;
  #10 num = 4'd3;
  #10 num = 4'd1;
  #10 num = 4'd9;
  #10 num = 4'd13;
  #10 $finish;
end
endmodule