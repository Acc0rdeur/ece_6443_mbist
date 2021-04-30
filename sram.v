`timescale 1ns / 1ps

module SRAM(dat_in,addr_in,w_en,clk,read_d);
    input wire [3:0] dat_in;
    input wire [7:0] addr_in;
    input wire w_en, clk;
    output wire [3:0] read_d;

reg [3:0] ram[255:0] ;

reg [7:0] addr_reg = 8'b00000000;
reg [3:0] read_d_r = 4'b0000;

always @ (posedge clk)
begin
    if (w_en)begin
        ram[addr_in] = dat_in;
        addr_reg = addr_in;
        end
     else begin
        addr_reg = addr_in;
     end 
    read_d_r = ram[addr_reg];
    end
    assign read_d = read_d_r;
endmodule