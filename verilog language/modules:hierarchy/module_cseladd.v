

module module_cseladd
(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum_lo;
    wire [15:0] sum_hi0;
    wire [15:0] sum_hi1;
    wire [15:0] sum_hi;
    wire cout1;
    
    add16 add_lo(.a(a[15:0]),.b(b[15:0]),.cin(0),.cout(cout1),.sum(sum_lo));
    add16 add_hi0(.a(a[31:16]),.b(b[31:16]),.cin(0),.sum(sum_hi0));
    add16 add_hi1(.a(a[31:16]),.b(b[31:16]),.cin(1),.sum(sum_hi1));
    
    assign sum_hi = cout1?sum_hi1:sum_hi0;
    
    assign sum = {sum_hi,sum_lo};
    
endmodule
