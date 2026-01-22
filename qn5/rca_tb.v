module rca_tb;
reg [3:0] a,b;
wire [3:0]s;
wire cout;
wire[2:0] c;

rippleCarryAdder DUT(a,b,c,s,cout);

initial
begin
  $dumpfile("rca.vcd");
  $dumpvars(0,rca_tb);
  $monitor($time," a = %b , b = %b | s = %b cout = %b",a,b,s,cout);
  #10 a = 1001; b = 0101;
  #10 $finish;
end

endmodule