module adder100i( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    wire [100:0] c;
    assign c[0] = cin;
    genvar i;
    generate
        for(i=0;i<100;i=i+1)begin : ADD
            fa fa1(.a(a[i]),.b(b[i]),.cin(c[i]),.cout(c[i+1]),.sum(sum[i]));
    end
    endgenerate
    assign cout = c[100:1];
endmodule

module fa
(
	input a,
    input b,
    input cin,
    output cout,
    output sum
);
    assign sum  = a^b^cin;
    assign cout = (a&b)|(cin&(a^b));
    
endmodule
