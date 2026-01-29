module mt2015_q4 (input x, input y, output z);
    wire za1,za2,zb1,zb2;
    wire za1zb1_or;
    wire za2zb2_and;
    
    a ia1(x,y,za1);
    a ia2(x,y,za2);
    b ib1(x,y,zb1);
    b ib2(x,y,zb2);
     
    assign za1zb1_or  = za1|zb1;
    assign za2zb2_and = za2&zb2;
    assign z = za1zb1_or^za2zb2_and;
    
endmodule

module a (input x, input y, output z);
    assign z = (x^y)&x;
endmodule

module b ( input x, input y, output z );
    assign z = (x==y)?1'b1:1'b0;
endmodule


