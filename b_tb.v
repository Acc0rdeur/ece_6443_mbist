`timescale 1ns / 1ps

module bg0_tb;
    
    wire [3:0] dat_out;
    wire [7:0] addr_out;
    wire w_en,rst_done;
    
    reg clk,en_in,rev_in;
    
    blanket_0 UUT (.dat_out(dat_out),
                   .addr_out(addr_out),
                   .w_en_out(w_en),
                   .rst_done(rst_done),
                   .clk(clk),
                   .en_in(en_in),
                   .rev_in(rev_in));
               
 initial 
 begin
    clk = 0;
    en_in = 0;
    rev_in = 0;
 end
          
 initial@(posedge clk)              
 begin
    #100;
    en_in = 1; 
    rev_in = 0;
    #13000;
    en_in = 0;
    #100;
    rev_in = 1;
    en_in = 1;
    #1300;
    rev_in = 0;
    en_in = 0; 
end              
                 
 always
 begin
    #25
    clk = ~clk;
 end             
                   
endmodule