/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP5-1
// Date      : Fri Apr 30 12:09:04 2021
/////////////////////////////////////////////////////////////


module blanket_0 ( dat_out, addr_out, w_en_out, rst_done, clk, en_in, rev_in
 );
  output [3:0] dat_out;
  output [7:0] addr_out;
  input clk, en_in, rev_in;
  output w_en_out, rst_done;
  wire   \multiple_wait_state[2] , \multiple_wait_state[1] ,
         \multiple_wait_state[0] , n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95;
  wire   [9:0] i;

  DFFX1_RVT \i_reg[8]  ( .D(n48), .CLK(clk), .Q(i[8]) );
  DFFX1_RVT \multiple_wait_state_reg[0]  ( .D(n37), .CLK(clk), .Q(
        \multiple_wait_state[0] ), .QN(n88) );
  DFFX1_RVT \multiple_wait_state_reg[1]  ( .D(n35), .CLK(clk), .Q(
        \multiple_wait_state[1] ), .QN(n92) );
  DFFX1_RVT \multiple_wait_state_reg[2]  ( .D(n36), .CLK(clk), .Q(
        \multiple_wait_state[2] ), .QN(n86) );
  DFFX1_RVT \i_reg[9]  ( .D(n49), .CLK(clk), .Q(i[9]) );
  DFFX1_RVT \w_data_reg[0]  ( .D(n50), .CLK(clk), .Q(dat_out[0]) );
  DFFX1_RVT \w_data_reg[3]  ( .D(n40), .CLK(clk), .Q(dat_out[3]) );
  DFFX1_RVT \w_data_reg[2]  ( .D(n39), .CLK(clk), .Q(dat_out[2]) );
  DFFX1_RVT \w_data_reg[1]  ( .D(n38), .CLK(clk), .Q(dat_out[1]) );
  DFFX1_RVT \i_reg[7]  ( .D(n47), .CLK(clk), .Q(i[7]) );
  DFFX1_RVT \i_reg[6]  ( .D(n46), .CLK(clk), .Q(i[6]), .QN(n95) );
  DFFX1_RVT \i_reg[5]  ( .D(n45), .CLK(clk), .Q(i[5]), .QN(n90) );
  DFFX1_RVT \i_reg[4]  ( .D(n44), .CLK(clk), .Q(i[4]), .QN(n93) );
  DFFX1_RVT \i_reg[3]  ( .D(n43), .CLK(clk), .Q(i[3]), .QN(n89) );
  DFFX1_RVT \i_reg[2]  ( .D(n42), .CLK(clk), .Q(i[2]), .QN(n94) );
  DFFX1_RVT \i_reg[1]  ( .D(n41), .CLK(clk), .Q(i[1]), .QN(n91) );
  DFFX1_RVT \i_reg[0]  ( .D(n51), .CLK(clk), .Q(i[0]), .QN(n87) );
  DFFX1_RVT \w_addr_reg[0]  ( .D(n32), .CLK(clk), .Q(addr_out[0]) );
  DFFX1_RVT rst_d_reg ( .D(n33), .CLK(clk), .Q(rst_done) );
  DFFX1_RVT \w_addr_reg[7]  ( .D(n34), .CLK(clk), .Q(addr_out[7]) );
  DFFX1_RVT \w_addr_reg[1]  ( .D(n31), .CLK(clk), .Q(addr_out[1]) );
  DFFX1_RVT \w_addr_reg[2]  ( .D(n30), .CLK(clk), .Q(addr_out[2]) );
  DFFX1_RVT \w_addr_reg[3]  ( .D(n29), .CLK(clk), .Q(addr_out[3]) );
  DFFX1_RVT \w_addr_reg[4]  ( .D(n28), .CLK(clk), .Q(addr_out[4]) );
  DFFX1_RVT \w_addr_reg[5]  ( .D(n27), .CLK(clk), .Q(addr_out[5]) );
  DFFX1_RVT \w_addr_reg[6]  ( .D(n26), .CLK(clk), .Q(addr_out[6]) );
  DFFX1_RVT w_en_reg ( .D(n25), .CLK(clk), .Q(w_en_out) );
  AO221X1_RVT U54 ( .A1(\multiple_wait_state[0] ), .A2(
        \multiple_wait_state[1] ), .A3(n88), .A4(n92), .A5(
        \multiple_wait_state[2] ), .Y(n67) );
  AND3X1_RVT U55 ( .A1(\multiple_wait_state[1] ), .A2(n88), .A3(n86), .Y(n84)
         );
  AO22X1_RVT U56 ( .A1(i[0]), .A2(n67), .A3(n87), .A4(n84), .Y(n51) );
  NAND3X0_RVT U57 ( .A1(\multiple_wait_state[0] ), .A2(n86), .A3(n92), .Y(n71)
         );
  INVX1_RVT U58 ( .A(n71), .Y(n77) );
  AO22X1_RVT U59 ( .A1(n77), .A2(rev_in), .A3(n71), .A4(dat_out[0]), .Y(n50)
         );
  NAND3X0_RVT U60 ( .A1(i[2]), .A2(i[1]), .A3(i[0]), .Y(n63) );
  INVX1_RVT U61 ( .A(n63), .Y(n65) );
  NAND3X0_RVT U62 ( .A1(i[4]), .A2(i[3]), .A3(n65), .Y(n59) );
  INVX1_RVT U63 ( .A(n59), .Y(n61) );
  AND3X1_RVT U64 ( .A1(i[6]), .A2(i[5]), .A3(n61), .Y(n56) );
  NAND3X0_RVT U65 ( .A1(i[7]), .A2(n56), .A3(i[8]), .Y(n52) );
  HADDX1_RVT U66 ( .A0(i[9]), .B0(n52), .SO(n72) );
  INVX1_RVT U67 ( .A(n72), .Y(n53) );
  AO22X1_RVT U68 ( .A1(i[9]), .A2(n67), .A3(n53), .A4(n84), .Y(n49) );
  NAND2X0_RVT U69 ( .A1(i[7]), .A2(n56), .Y(n54) );
  HADDX1_RVT U70 ( .A0(i[8]), .B0(n54), .SO(n73) );
  INVX1_RVT U71 ( .A(n73), .Y(n55) );
  AO22X1_RVT U72 ( .A1(i[8]), .A2(n67), .A3(n55), .A4(n84), .Y(n48) );
  HADDX1_RVT U73 ( .A0(i[7]), .B0(n56), .SO(n57) );
  AO22X1_RVT U74 ( .A1(i[7]), .A2(n67), .A3(n84), .A4(n57), .Y(n47) );
  AND2X1_RVT U75 ( .A1(i[5]), .A2(n84), .Y(n83) );
  AO221X1_RVT U76 ( .A1(n84), .A2(n59), .A3(n84), .A4(n90), .A5(n67), .Y(n58)
         );
  OA222X1_RVT U77 ( .A1(i[6]), .A2(n61), .A3(i[6]), .A4(n83), .A5(n95), .A6(
        n58), .Y(n46) );
  AO21X1_RVT U78 ( .A1(n84), .A2(n59), .A3(n67), .Y(n60) );
  OA222X1_RVT U79 ( .A1(i[5]), .A2(n61), .A3(i[5]), .A4(n84), .A5(n90), .A6(
        n60), .Y(n45) );
  AND2X1_RVT U80 ( .A1(i[3]), .A2(n84), .Y(n82) );
  AO221X1_RVT U81 ( .A1(n84), .A2(n63), .A3(n84), .A4(n89), .A5(n67), .Y(n62)
         );
  OA222X1_RVT U82 ( .A1(i[4]), .A2(n65), .A3(i[4]), .A4(n82), .A5(n93), .A6(
        n62), .Y(n44) );
  AO21X1_RVT U83 ( .A1(n84), .A2(n63), .A3(n67), .Y(n64) );
  OA222X1_RVT U84 ( .A1(i[3]), .A2(n65), .A3(i[3]), .A4(n84), .A5(n89), .A6(
        n64), .Y(n43) );
  AND2X1_RVT U85 ( .A1(i[0]), .A2(n84), .Y(n81) );
  AO221X1_RVT U86 ( .A1(n84), .A2(n87), .A3(n84), .A4(n91), .A5(n67), .Y(n66)
         );
  OA222X1_RVT U87 ( .A1(i[2]), .A2(i[1]), .A3(i[2]), .A4(n81), .A5(n94), .A6(
        n66), .Y(n42) );
  INVX1_RVT U88 ( .A(n67), .Y(n69) );
  NAND2X0_RVT U89 ( .A1(n84), .A2(n87), .Y(n68) );
  NAND2X0_RVT U90 ( .A1(n69), .A2(n68), .Y(n70) );
  AO22X1_RVT U91 ( .A1(i[1]), .A2(n70), .A3(n91), .A4(n81), .Y(n41) );
  AO22X1_RVT U92 ( .A1(n77), .A2(rev_in), .A3(n71), .A4(dat_out[3]), .Y(n40)
         );
  AO22X1_RVT U93 ( .A1(n77), .A2(rev_in), .A3(n71), .A4(dat_out[2]), .Y(n39)
         );
  AO22X1_RVT U94 ( .A1(n77), .A2(rev_in), .A3(n71), .A4(dat_out[1]), .Y(n38)
         );
  NAND3X0_RVT U95 ( .A1(\multiple_wait_state[1] ), .A2(n73), .A3(n72), .Y(n74)
         );
  AND3X1_RVT U96 ( .A1(n88), .A2(n86), .A3(n74), .Y(n37) );
  INVX1_RVT U98 ( .A(en_in), .Y(n75) );
  OA221X1_RVT U99 ( .A1(1'b0), .A2(\multiple_wait_state[0] ), .A3(
        \multiple_wait_state[1] ), .A4(n75), .A5(n86), .Y(n36) );
  AO21X1_RVT U100 ( .A1(n77), .A2(en_in), .A3(n84), .Y(n35) );
  AOI21X1_RVT U101 ( .A1(\multiple_wait_state[2] ), .A2(rst_done), .A3(n84), 
        .Y(n85) );
  AO22X1_RVT U102 ( .A1(i[7]), .A2(n84), .A3(addr_out[7]), .A4(n85), .Y(n34)
         );
  AND4X1_RVT U103 ( .A1(\multiple_wait_state[0] ), .A2(
        \multiple_wait_state[1] ), .A3(addr_out[6]), .A4(addr_out[5]), .Y(n79)
         );
  AND4X1_RVT U104 ( .A1(addr_out[2]), .A2(addr_out[1]), .A3(addr_out[0]), .A4(
        addr_out[7]), .Y(n78) );
  AND4X1_RVT U105 ( .A1(addr_out[4]), .A2(addr_out[3]), .A3(n79), .A4(n78), 
        .Y(n80) );
  OA21X1_RVT U106 ( .A1(rst_done), .A2(n80), .A3(n86), .Y(n33) );
  AO21X1_RVT U107 ( .A1(addr_out[0]), .A2(n85), .A3(n81), .Y(n32) );
  AO22X1_RVT U108 ( .A1(i[1]), .A2(n84), .A3(addr_out[1]), .A4(n85), .Y(n31)
         );
  AO22X1_RVT U109 ( .A1(i[2]), .A2(n84), .A3(addr_out[2]), .A4(n85), .Y(n30)
         );
  AO21X1_RVT U110 ( .A1(addr_out[3]), .A2(n85), .A3(n82), .Y(n29) );
  AO22X1_RVT U111 ( .A1(i[4]), .A2(n84), .A3(addr_out[4]), .A4(n85), .Y(n28)
         );
  AO21X1_RVT U112 ( .A1(addr_out[5]), .A2(n85), .A3(n83), .Y(n27) );
  AO22X1_RVT U113 ( .A1(i[6]), .A2(n84), .A3(addr_out[6]), .A4(n85), .Y(n26)
         );
  AO21X1_RVT U114 ( .A1(n85), .A2(w_en_out), .A3(n84), .Y(n25) );
endmodule

