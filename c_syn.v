/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP5-1
// Date      : Fri Apr 30 12:13:55 2021
/////////////////////////////////////////////////////////////


module chk_1 ( dat_out, addr_out, w_en_out, rst_done, clk, en_in, rev_in );
  output [3:0] dat_out;
  output [7:0] addr_out;
  input clk, en_in, rev_in;
  output w_en_out, rst_done;
  wire   \multiple_wait_state[2] , \multiple_wait_state[1] ,
         \multiple_wait_state[0] , n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107;
  wire   [9:0] i;

  DFFX1_RVT \i_reg[8]  ( .D(n42), .CLK(clk), .Q(i[8]) );
  DFFX1_RVT \multiple_wait_state_reg[0]  ( .D(n56), .CLK(clk), .Q(
        \multiple_wait_state[0] ), .QN(n95) );
  DFFX1_RVT \multiple_wait_state_reg[1]  ( .D(n54), .CLK(clk), .Q(
        \multiple_wait_state[1] ), .QN(n100) );
  DFFX1_RVT \multiple_wait_state_reg[2]  ( .D(n55), .CLK(clk), .Q(
        \multiple_wait_state[2] ), .QN(n94) );
  DFFX1_RVT \w_data_reg[0]  ( .D(n53), .CLK(clk), .Q(dat_out[0]), .QN(n104) );
  DFFX1_RVT \w_data_reg[3]  ( .D(n52), .CLK(clk), .Q(dat_out[3]), .QN(n105) );
  DFFX1_RVT \w_data_reg[2]  ( .D(n51), .CLK(clk), .Q(dat_out[2]), .QN(n106) );
  DFFX1_RVT \w_data_reg[1]  ( .D(n50), .CLK(clk), .Q(dat_out[1]), .QN(n107) );
  DFFX1_RVT \i_reg[9]  ( .D(n41), .CLK(clk), .Q(i[9]) );
  DFFX1_RVT \i_reg[7]  ( .D(n43), .CLK(clk), .Q(i[7]) );
  DFFX1_RVT \i_reg[6]  ( .D(n44), .CLK(clk), .Q(i[6]), .QN(n103) );
  DFFX1_RVT \i_reg[5]  ( .D(n45), .CLK(clk), .Q(i[5]), .QN(n98) );
  DFFX1_RVT \i_reg[4]  ( .D(n46), .CLK(clk), .Q(i[4]), .QN(n102) );
  DFFX1_RVT \i_reg[3]  ( .D(n47), .CLK(clk), .Q(i[3]), .QN(n97) );
  DFFX1_RVT \i_reg[2]  ( .D(n48), .CLK(clk), .Q(i[2]), .QN(n101) );
  DFFX1_RVT \i_reg[1]  ( .D(n49), .CLK(clk), .Q(i[1]), .QN(n99) );
  DFFX1_RVT \i_reg[0]  ( .D(n57), .CLK(clk), .Q(i[0]), .QN(n96) );
  DFFX1_RVT \w_addr_reg[0]  ( .D(n38), .CLK(clk), .Q(addr_out[0]) );
  DFFX1_RVT rst_d_reg ( .D(n39), .CLK(clk), .Q(rst_done) );
  DFFX1_RVT \w_addr_reg[7]  ( .D(n40), .CLK(clk), .Q(addr_out[7]) );
  DFFX1_RVT \w_addr_reg[1]  ( .D(n37), .CLK(clk), .Q(addr_out[1]) );
  DFFX1_RVT \w_addr_reg[2]  ( .D(n36), .CLK(clk), .Q(addr_out[2]) );
  DFFX1_RVT \w_addr_reg[3]  ( .D(n35), .CLK(clk), .Q(addr_out[3]) );
  DFFX1_RVT \w_addr_reg[4]  ( .D(n34), .CLK(clk), .Q(addr_out[4]) );
  DFFX1_RVT \w_addr_reg[5]  ( .D(n33), .CLK(clk), .Q(addr_out[5]) );
  DFFX1_RVT \w_addr_reg[6]  ( .D(n32), .CLK(clk), .Q(addr_out[6]) );
  DFFX1_RVT w_en_reg ( .D(n31), .CLK(clk), .Q(w_en_out) );
  AOI21X1_RVT U60 ( .A1(\multiple_wait_state[2] ), .A2(rst_done), .A3(n92), 
        .Y(n93) );
  INVX1_RVT U61 ( .A(n75), .Y(n77) );
  INVX1_RVT U62 ( .A(n84), .Y(n54) );
  AND2X1_RVT U63 ( .A1(n94), .A2(n100), .Y(n62) );
  NAND2X0_RVT U64 ( .A1(n62), .A2(en_in), .Y(n81) );
  AO221X1_RVT U65 ( .A1(n95), .A2(n100), .A3(\multiple_wait_state[0] ), .A4(
        n81), .A5(\multiple_wait_state[2] ), .Y(n84) );
  NAND3X0_RVT U66 ( .A1(\multiple_wait_state[1] ), .A2(n94), .A3(n95), .Y(n61)
         );
  INVX1_RVT U67 ( .A(n61), .Y(n92) );
  AO22X1_RVT U68 ( .A1(i[0]), .A2(n84), .A3(n96), .A4(n92), .Y(n57) );
  NAND3X0_RVT U69 ( .A1(i[2]), .A2(i[1]), .A3(i[0]), .Y(n71) );
  INVX1_RVT U70 ( .A(n71), .Y(n73) );
  NAND3X0_RVT U71 ( .A1(i[4]), .A2(i[3]), .A3(n73), .Y(n75) );
  AND3X1_RVT U72 ( .A1(i[6]), .A2(i[5]), .A3(n77), .Y(n78) );
  NAND3X0_RVT U73 ( .A1(i[7]), .A2(n78), .A3(i[8]), .Y(n58) );
  HADDX1_RVT U74 ( .A0(i[9]), .B0(n58), .SO(n83) );
  NAND2X0_RVT U75 ( .A1(i[7]), .A2(n78), .Y(n59) );
  HADDX1_RVT U76 ( .A0(i[8]), .B0(n59), .SO(n80) );
  NAND2X0_RVT U77 ( .A1(n83), .A2(n80), .Y(n60) );
  AO22X1_RVT U78 ( .A1(n92), .A2(n60), .A3(n62), .A4(n95), .Y(n56) );
  AND3X1_RVT U79 ( .A1(\multiple_wait_state[0] ), .A2(n94), .A3(n81), .Y(n55)
         );
  NAND2X0_RVT U80 ( .A1(\multiple_wait_state[0] ), .A2(n62), .Y(n63) );
  AND2X1_RVT U81 ( .A1(n61), .A2(n63), .Y(n66) );
  AND3X1_RVT U82 ( .A1(\multiple_wait_state[0] ), .A2(n62), .A3(rev_in), .Y(
        n64) );
  AO221X1_RVT U83 ( .A1(dat_out[0]), .A2(n66), .A3(n104), .A4(n92), .A5(n64), 
        .Y(n53) );
  NOR2X0_RVT U84 ( .A1(rev_in), .A2(n63), .Y(n65) );
  AO221X1_RVT U85 ( .A1(dat_out[3]), .A2(n66), .A3(n105), .A4(n92), .A5(n65), 
        .Y(n52) );
  AO221X1_RVT U86 ( .A1(dat_out[2]), .A2(n66), .A3(n106), .A4(n92), .A5(n64), 
        .Y(n51) );
  AO221X1_RVT U87 ( .A1(dat_out[1]), .A2(n66), .A3(n107), .A4(n92), .A5(n65), 
        .Y(n50) );
  NAND2X0_RVT U88 ( .A1(n92), .A2(n96), .Y(n67) );
  NAND2X0_RVT U89 ( .A1(n54), .A2(n67), .Y(n68) );
  AND2X1_RVT U90 ( .A1(n92), .A2(i[0]), .Y(n89) );
  AO22X1_RVT U91 ( .A1(i[1]), .A2(n68), .A3(n99), .A4(n89), .Y(n49) );
  AO221X1_RVT U92 ( .A1(n92), .A2(n99), .A3(n92), .A4(n96), .A5(n84), .Y(n69)
         );
  OA222X1_RVT U93 ( .A1(i[2]), .A2(i[1]), .A3(i[2]), .A4(n89), .A5(n101), .A6(
        n69), .Y(n48) );
  AO21X1_RVT U94 ( .A1(n92), .A2(n71), .A3(n84), .Y(n70) );
  OA222X1_RVT U95 ( .A1(i[3]), .A2(n92), .A3(i[3]), .A4(n73), .A5(n97), .A6(
        n70), .Y(n47) );
  AND2X1_RVT U96 ( .A1(n92), .A2(i[3]), .Y(n90) );
  AO221X1_RVT U97 ( .A1(n92), .A2(n97), .A3(n92), .A4(n71), .A5(n84), .Y(n72)
         );
  OA222X1_RVT U98 ( .A1(i[4]), .A2(n73), .A3(i[4]), .A4(n90), .A5(n102), .A6(
        n72), .Y(n46) );
  AO21X1_RVT U99 ( .A1(n92), .A2(n75), .A3(n84), .Y(n74) );
  OA222X1_RVT U100 ( .A1(i[5]), .A2(n92), .A3(i[5]), .A4(n77), .A5(n98), .A6(
        n74), .Y(n45) );
  AND2X1_RVT U101 ( .A1(n92), .A2(i[5]), .Y(n91) );
  AO221X1_RVT U102 ( .A1(n92), .A2(n98), .A3(n92), .A4(n75), .A5(n84), .Y(n76)
         );
  OA222X1_RVT U103 ( .A1(i[6]), .A2(n77), .A3(i[6]), .A4(n91), .A5(n103), .A6(
        n76), .Y(n44) );
  HADDX1_RVT U104 ( .A0(i[7]), .B0(n78), .SO(n79) );
  AO22X1_RVT U105 ( .A1(i[7]), .A2(n84), .A3(n92), .A4(n79), .Y(n43) );
  INVX1_RVT U106 ( .A(n80), .Y(n82) );
  OA222X1_RVT U107 ( .A1(n84), .A2(n82), .A3(n84), .A4(n81), .A5(i[8]), .A6(
        n54), .Y(n42) );
  INVX1_RVT U108 ( .A(n83), .Y(n85) );
  AO22X1_RVT U109 ( .A1(n92), .A2(n85), .A3(i[9]), .A4(n84), .Y(n41) );
  AO22X1_RVT U110 ( .A1(n92), .A2(i[7]), .A3(addr_out[7]), .A4(n93), .Y(n40)
         );
  AND4X1_RVT U111 ( .A1(\multiple_wait_state[0] ), .A2(
        \multiple_wait_state[1] ), .A3(addr_out[6]), .A4(addr_out[5]), .Y(n87)
         );
  AND4X1_RVT U112 ( .A1(addr_out[2]), .A2(addr_out[1]), .A3(addr_out[0]), .A4(
        addr_out[7]), .Y(n86) );
  AND4X1_RVT U113 ( .A1(addr_out[4]), .A2(addr_out[3]), .A3(n87), .A4(n86), 
        .Y(n88) );
  OA21X1_RVT U114 ( .A1(rst_done), .A2(n88), .A3(n94), .Y(n39) );
  AO21X1_RVT U115 ( .A1(addr_out[0]), .A2(n93), .A3(n89), .Y(n38) );
  AO22X1_RVT U116 ( .A1(n92), .A2(i[1]), .A3(addr_out[1]), .A4(n93), .Y(n37)
         );
  AO22X1_RVT U117 ( .A1(n92), .A2(i[2]), .A3(addr_out[2]), .A4(n93), .Y(n36)
         );
  AO21X1_RVT U118 ( .A1(addr_out[3]), .A2(n93), .A3(n90), .Y(n35) );
  AO22X1_RVT U119 ( .A1(n92), .A2(i[4]), .A3(addr_out[4]), .A4(n93), .Y(n34)
         );
  AO21X1_RVT U120 ( .A1(addr_out[5]), .A2(n93), .A3(n91), .Y(n33) );
  AO22X1_RVT U121 ( .A1(n92), .A2(i[6]), .A3(addr_out[6]), .A4(n93), .Y(n32)
         );
  AO21X1_RVT U122 ( .A1(n93), .A2(w_en_out), .A3(n92), .Y(n31) );
endmodule

