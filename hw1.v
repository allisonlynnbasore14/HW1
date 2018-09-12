module demorgan
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB,     // Single bit output, (~A)*(~B)
  output AandB,
  output NAandB,
  output AoB,
  output nAonB,
  output NAoB
);

  wire nA;
  wire nB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  not AandBinv(NAandB, AandB);  
  not NAorBinv(NAoB, AoB);
  and andgate(AandB, A, B);  
  and andgate(nAandnB, nA, nB);
  or orgate(AoB, A, B);
  or orgate(nAonB, nA, nB);
  

	// AND gate produces nAandnB from nA and nB

endmodule
