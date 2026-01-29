module m2014_q4g (
    input in1,
    input in2,
    input in3,
    output out);
    
    wire in1in2_xnor;
    
    assign in1in2_xnor = ~(in1^in2);
    assign out         = in1in2_xnor ^ in3; 

endmodule
