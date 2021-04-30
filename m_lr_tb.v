`timescale 1ns / 1ps

module march_lr_tb;
    
    reg en_in,clk;
    wire [3:0] dat_in;
    wire [3:0] dat_out;
    wire [7:0] addr_out;
    wire rst_done,w_en;
   
    March_LR UUT (  .dat_out(dat_out),
                   .addr_out(addr_out),
                   .dat_in(dat_in),
                   .w_en_out(w_en),
                   .rst_done(rst_done),
                   .clk(clk),
                   .en_in(en_in));
            
    SRAM UUT2(      .dat_in(dat_out),
                    .addr_in(addr_out),
                    .w_en(w_en),
                    .clk(clk),
                    .read_d(dat_in)
                    );
                
initial 
 begin
    clk = 0 ;
    en_in = 0 ;
 end
 
               
 initial@(posedge clk)              
 begin
    #100;
    en_in = 1; 
    #40000;
    en_in = 0;
    #100;
 end              
 
 always
 begin
    #25
    clk = ~clk;
 end                            
endmodule