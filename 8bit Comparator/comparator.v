module comparator(a,b,gt,lt,eq);
input [7:0] a,b;
output reg gt,lt,eq;

integer i;
always @(a or b) begin : COMP
  gt=0; lt=0; eq=1;
  for(i = 7;i>=0;i=i-1) begin
    if(a[i] > b[i]) begin 
      gt=1; lt=0; eq=0; 
      disable COMP; 
      end
    else if(a[i] < b[i]) begin 
      gt=0; lt=1; eq=0; 
      disable COMP;
      end
  end
end
endmodule