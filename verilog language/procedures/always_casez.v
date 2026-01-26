// synthesis verilog_input_version verilog_2001
module always_casez (
    input [7:0] in,
    output reg [2:0] pos );
    
    always@(*)begin
        casez(in)
            8'b0000_0000 : pos = 3'd0;
            8'bzzzz_zzz1 : pos = 3'd0;
            8'bzzzz_zz1z : pos = 3'd1;
            8'bzzzz_z1zz : pos = 3'd2;
            8'bzzzz_1zzz : pos = 3'd3;
            8'bzzz1_zzzz : pos = 3'd4;
            8'bzz1z_zzzz : pos = 3'd5;
            8'bz1zz_zzzz : pos = 3'd6;
            8'b1zzz_zzzz : pos = 3'd7;
        endcase
    end
        
endmodule
