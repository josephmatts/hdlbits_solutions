// synthesis verilog_input_version verilog_2001
module always_case2 
(
    input [3:0] in,
    output reg [1:0] pos  
);
    always@(*) begin
        if((in & 4'b0001)==4'b0001)       pos = 2'd0;
    	else if((in & 4'b0010) == 4'b0010) pos = 2'd1;
    	else if((in & 4'b0100) == 4'b0100) pos = 2'd2;
    	else if((in & 4'b1000) == 4'b1000) pos = 2'd3;
    	else                               pos = 2'd0;
    end
endmodule
