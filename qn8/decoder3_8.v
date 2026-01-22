module decoder3_8(I,Y);
input[2:0] I;
output[7:0] Y;

and a1(Y[0],~I[2],~I[1],~I[0]);
and a2(Y[1],~I[2],~I[1],I[0]);
and a3(Y[2],~I[2],I[1],~I[0]);
and a4(Y[3],~I[2],I[1],I[0]);
and a5(Y[4],I[2],~I[1],~I[0]);
and a6(Y[5],I[2],~I[1],I[0]);
and a7(Y[6],I[2],I[1],~I[0]);
and a8(Y[7],I[2],I[1],I[0]);

endmodule