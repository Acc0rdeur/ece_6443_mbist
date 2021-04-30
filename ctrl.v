`timescale 1ns / 1ps

module control(
    input [3:0] select,
    input clk,rst_done,
    output bg0,c1,mar_c,mar_lr,rev_out,bln_out
    );

reg bg0_sig = 0;
reg c1_sig,mar_c_sig,mar_lr_sig,rev_c1_sig,bln_out_sig = 0;

reg rst_sig = 0;
always @(posedge clk ) 
begin
 
case (select)
        1 :begin
               bg0_sig = 1;
           end
        2 :begin
               bln_out_sig = 1;
               bg0_sig = 1;
           end
        3 :begin
               c1_sig =1;
           end
        4 :begin
               c1_sig =1;
               rev_c1_sig =1;
           end 
        5 :begin
               mar_c_sig = 1;
           end 
        6 :begin
               mar_lr_sig = 1;
           end                        
  default :begin
               bg0_sig = 0;
               c1_sig =0;
               rev_c1_sig =0;
               bln_out_sig = 0;
               mar_c_sig = 0;
               mar_lr_sig =0;
           end
 endcase
 if(rst_done)
begin
               bg0_sig = 0;
               c1_sig =0;
               rev_c1_sig =0;
               bln_out_sig = 0;
               mar_c_sig = 0;
               mar_lr_sig =0;
end 
end 

assign bg0 = bg0_sig;
assign c1 = c1_sig;
assign mar_c = mar_c_sig;
assign mar_lr = mar_lr_sig;
assign rev_out = rev_c1_sig ;
assign bln_out =bln_out_sig;
assign rst = rst_sig;           
endmodule