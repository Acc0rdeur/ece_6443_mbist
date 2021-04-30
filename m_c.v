`timescale 1ns / 1ps

module March_C(
         output [3:0] dat_out,
         output [7:0] addr_out,
         input [3:0] dat_in,
         output w_en_out,rst_done,
         input clk,en_in
);

integer i = 0;
reg [7:0] w_addr;
reg [3:0] w_data = 4'b1010;
reg w_en;
reg rst_d=0;

always @ (posedge clk)
   begin
        if( en_in) 
        begin 
           for (i =0; i<=255 ; i=i+1)
           begin
            @ (posedge clk)
                begin
                    w_data = 4'b0000 ;
                    w_en = 1;
                    w_addr = i;
                end
           end
           
           while (addr_out!=255)
           begin
                @(posedge clk)begin end        
           end 
              
           for (i =0; i<256 ; i=i+1)
           begin
           @(posedge clk)
              begin
                    w_data = 4'b1111 ;
                    w_en = 0;
                    w_addr = i;
              end
            @(posedge clk)begin end
            @(posedge clk)begin end   

            @(posedge clk)
               begin
               if (dat_in==0)
                  begin
                      w_en = 1;
                  end
               end     
           end
        
           while (addr_out!=255)
           begin
                @(posedge clk)begin end        
           end       
            @(posedge clk)begin
            w_en = 0; end
             
           for (i =0; i<=255 ; i=i+1)
           begin
           @(posedge clk)
              begin
                    w_data = 4'b0000 ;
                    w_en = 0;
                    w_addr = i;                      
              end
              @(posedge clk)begin end
              @(posedge clk)begin end 
            @(posedge clk)
               begin
               if (dat_in==4'b1111)
                  begin
                      w_en = 1;
                  end
               end     
           end

           while (addr_out!=255)
           begin
                @(posedge clk)begin end        
           end       
            @(posedge clk)begin
            w_en = 0; end 
          
           for (i =255; i>=0 ; i=i-1)
           begin
           @(posedge clk)
              begin
                    w_en = 0;
                    w_addr = i;
                    w_data = 4'b1111 ;
              end
            @(posedge clk)begin end  
            @(posedge clk)begin end 
            @(posedge clk)
               begin
               if (dat_in==4'b0000)
                  begin
                      w_en = 1;
                  end
               end     
           end
    
           while (addr_out!=0)
           begin
                @(posedge clk)begin end        
           end       
            @(posedge clk)begin
            w_en = 0; end 
               
           for (i =255; i>=0 ; i=i-1)
           begin
           @(posedge clk)
              begin
                    w_en = 0;
                    w_addr = i;
                    w_data = 4'b0000 ; 
               end
            @(posedge clk)begin end   
            @(posedge clk)begin end    
            @(posedge clk)
               begin
               if (dat_in==4'b1111)
                  begin
                      w_en = 1;
                  end
               end     
           end
           
           while (addr_out!=0)
           begin
                @(posedge clk)begin end        
           end       
           @(posedge clk) 
           w_addr = 255; 

           while (addr_out!=255)
           begin
                @(posedge clk)begin end        
           end    
           
           for (i =0; i<256 ; i=i+1)
           begin
            @ (posedge clk)
                
                    w_data = 4'b0000 ;
                    w_en = 0;
                    w_addr = i;
           end
           
           if (addr_out!=255)
           begin
                @(posedge clk)begin end         
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