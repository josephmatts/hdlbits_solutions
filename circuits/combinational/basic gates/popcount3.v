module popcount3( 
    input [2:0] in,
    output [1:0] out );
	
    reg [1:0]i;
    
    always@(*)begin
        out = 0;
        for(i=0;i<3;i=i+1)begin
            out = out + in[i];
        end
    end
    
endmodule
