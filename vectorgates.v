//bitwise op - for all the bits logic is applied
//logical - tests vector as boolean (true = non-zero, false = zero) and produces a 1-bit output.

module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    assign out_or_bitwise= a | b;
    assign out_or_logical= a || b;
    assign out_not[2:0] = ~a;
    assign out_not[5:3]=~b;

endmodule
