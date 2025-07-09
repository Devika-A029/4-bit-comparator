`timescale 1ns / 1ps

module comparator_tb;

reg [3:0] A, B;
wire A_greater, A_equal, A_less;

comparator uut (.A(A), .B(B), .A_greater(A_greater), .A_equal(A_equal), .A_less(A_less));

initial begin
  $display("A\tB\t>\t==\t<");
  A = 4'b0000; B = 4'b0000; #10;
  A = 4'b1001; B = 4'b0110; #10;
  A = 4'b0101; B = 4'b1110; #10;
  A = 4'b1010; B = 4'b1010; #10;
  $stop;
end

initial begin
  $monitor("%b\t%b\t%b\t%b\t%b", A, B, A_greater, A_equal, A_less);
end

endmodule
