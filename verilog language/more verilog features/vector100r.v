module vector100r
( 
    input [99:0] in,
    output [99:0] out
);
    reg [7:0]i;
    always@(*)begin
    	for(i = 0; i < 100; i = i+1)begin
        	out[99-i] = in[i];
    	end
    end

endmodule
