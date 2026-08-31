module n2_4decoder_beh_para #(
     parameter wdth=2 
                                       )
(    input wire [wdth-1:0] in,
    input wire       en,
    output reg [(1<<wdth)-1:0] out

);

always @(*)
begin 
    if (!en) 
          begin 
             out=4'b00000 ;
          end
                 
else 
begin 
case(in)
2'b00:out=4'b0001;
2'b01:out=4'b0010;
2'b10:out=4'b0100;
2'b11:out=4'b1000;
endcase 
end
end
endmodule 