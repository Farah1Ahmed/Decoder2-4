`timescale 1ns / 1ps

module n2_4dec_beh_para_tb ();
reg [1:0]in ;
reg  clk , en ;
wire [3:0] out ;


  
  n2_4decoder_beh_para dut (
        .in(in),
        .clk(clk),
        .en(en),
        .out(out)
   );

initial 
begin 
         clk=1'b0 ; 
 en=1'b1 ; 
in=2'b00 ;
        #10;
         clk=1'b1 ; en=1'b0  ; in=2'b00 ;
         #10;
        if( out==4'b0001 ) $display("testcase passed") ;
        else $display("testcase failed") ; 

        clk=1'b1 ; en=1'b0  ;in=2'b01 ;
         #10;
        if( out==4'b0010 ) $display("testcase passed") ;
        else $display("testcase failed") ; 
 
        clk=1'b1 ; en=1'b0 ;in=2'b10 ;
         #10;
        if( out==4'b0100 ) $display("testcase passed") ;
        else $display("testcase failed") ; 
 
        clk=1'b1 ; en=1'b0 ; in=2'b11 ;
         #10;
        if( out==4'b1000 ) $display("testcase passed") ;
        else $display("testcase failed") ; 

        
         #100;
         $finish ;

    





end
endmodule