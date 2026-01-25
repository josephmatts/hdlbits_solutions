/*
* assign out[7:0] = in[0:7]; does not work because Verilog does not allow vector bit ordering to be flipped.
* The concatenation operator may save a bit of coding, allowing for 1 assign statement instead of 8.
*/

module vectorr( 
    input [7:0] in,
    output [7:0] out
);
    assign out = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};

endmodule

