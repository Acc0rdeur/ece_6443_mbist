`timescale 1ns / 1ps

module chk_1(
         output [3:0] dat_out,
         output [7:0] addr_out,
         output w_en_out,rst_done,
         input clk,en_in, rev_in
);

reg [9:0] i=0;
reg [7:0] w_addr;
reg [3:0] w_data = 4'b1010;
reg w_en;
reg rst_d=0;

always @ (posedge clk)
   begin
        @(posedge clk)begin end
        if (rev_in) 
        begin
            w_data = 4'b0101;
        end
        else
        begin
            w_data = 4'b1010; 
        end    
        if (en_in ==1)
        begin
        for (i =0; i<256 ; i=i+1)
           begin
            @ (posedge clk)
                begin
                    w_addr = i;
                    w_data = ~(w_data) ;
                    w_en = 1;
                end    
           end
               
        @(posedge clk)
        if(addr_out==255)
            begin
                rst_d = 1;
            end
        end
        @(posedge clk) begin end
        if (rst_d)
        begin
            w_en = 0;
            w_addr=0;
            rst_d = 0;
        end  
    end
    
    assign w_en_out = w_en;
    assign addr_out = w_addr;
    assign dat_out = w_data;
    assign rst_done = rst_d;
endmodule