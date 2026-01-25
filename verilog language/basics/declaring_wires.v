module declaring_wires(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
	
    wire and_ab;
    wire and_cd;
    wire or_out;
    
    assign and_ab = a&b;
    assign and_cd = c&d;
    assign or_out = and_ab | and_cd;
    
    assign out   = or_out;
    assign out_n = ~or_out; 
    
endmodule
