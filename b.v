`timescale 1ns / 1ps

module blanket_0(
         output wire [3:0] dat_out,
         output wire [7:0] addr_out,
         output wire w_en_out,rst_done,
         input  wire clk,en_in, rev_in
);

reg [9:0] i;
reg [7:0] w_addr;
reg [3:0] w_data;
reg w_en;
reg rst_d;

always @ (posedge clk)
   begin
        @(posedge clk)begin end
        if (rev_in) 
        begin
            w_data = 4'b1111;
            i = 0;
        end
        else
        begin
            w_data = 4'b0000;
            i = 0; 
        end    
        if (en_in)
        begin
        for (i =0; i<256 ; i=i+1)
           begin
            @ (posedge clk)
                begin
                    w_addr = i;
                    w_data = (w_data) ;
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
            w_addr = 0;
            rst_d = 0;
        end  
    end

    assign w_en_out = w_en;
    assign addr_out = w_addr;
    assign dat_out = w_data;
    assign rst_done = rst_d;
endmodule