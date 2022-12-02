module counter(output, clk, reset);

  parameter WIDTH = 8;

  output [WIDTH-1 : 0] output;
  input 	       clk, reset;

  reg [WIDTH-1 : 0]   out;
  wire 	       clk, reset;

  always @(posedge clk or posedge reset)
    if (reset)
      output <= 0;
    else
      output <= output + 1;

endmodule // counter