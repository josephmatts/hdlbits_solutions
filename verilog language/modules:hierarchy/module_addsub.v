module module_addsub(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    wire [31:0] b_subbed;
    wire [31:0] sub_replicated;
    wire [15:0] sum_lo;
    wire [15:0] sum_hi;
    wire cout1;
    
    
    add16 add_lo(.a(a[15:0]),.b(b_subbed[15:0]),.cin(sub),.cout(cout1),.sum(sum_lo));
    add16 add_hi(.a(a[31:16]),.b(b_subbed[31:16]),.cin(cout1),.sum(sum_hi));
    
    assign sub_replicated = {32{sub}};
    assign b_subbed = b^sub_replicated;
    assign sum = {sum_hi,sum_lo};
    

endmodule
