/*
Verilog has separate bitwise-AND (&) and logical-AND (&&) operators, like C. 
Since we're working with a one-bit here, it doesn't matter which we choose.
*/

module andgate
( 
    input a, 
    input b, 
    output out 
);
	
    assign out = a & b;

endmodule
