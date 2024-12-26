// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 23 23:58:01 2024
// Host        : DESKTOP-7A5ODGC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/gamin/VivadoWorkspace/FIR_filter/FIR_filter.sim/sim_1/synth/timing/xsim/FIR_blocks_tb_time_synth.v
// Design      : FIR_filter_unit
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Control_Unit
   (valid_in_filt,
    mac_init,
    Q,
    D,
    E,
    CLK,
    rst_IBUF,
    valid_in_IBUF);
  output valid_in_filt;
  output mac_init;
  output [2:0]Q;
  output [3:0]D;
  input [0:0]E;
  input CLK;
  input rst_IBUF;
  input valid_in_IBUF;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [2:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire mac_init;
  wire rst_IBUF;
  wire valid_in_IBUF;
  wire valid_in_filt;
  wire valid_in_filt0;
  wire valid_in_old;
  wire valid_in_old_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000EEFE)) 
    \counter[0]_i_1 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(valid_in_IBUF),
        .I3(valid_in_old),
        .I4(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \counter[2]_i_1 
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[0]),
        .O(\counter[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  DFF dff0
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .counter(counter),
        .rst_IBUF(rst_IBUF));
  FDPE #(
    .INIT(1'b1)) 
    mac_init_reg
       (.C(CLK),
        .CE(1'b1),
        .D(valid_in_filt),
        .PRE(rst_IBUF),
        .Q(mac_init));
  LUT5 #(
    .INIT(32'h00000004)) 
    valid_in_filt_i_2
       (.I0(valid_in_old),
        .I1(valid_in_IBUF),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(counter[0]),
        .O(valid_in_filt0));
  FDRE #(
    .INIT(1'b0)) 
    valid_in_filt_reg
       (.C(CLK),
        .CE(E),
        .D(valid_in_filt0),
        .Q(valid_in_filt),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFAAAA00010000)) 
    valid_in_old_i_1
       (.I0(rst_IBUF),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(valid_in_IBUF),
        .I5(valid_in_old),
        .O(valid_in_old_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    valid_in_old_reg
       (.C(CLK),
        .CE(1'b1),
        .D(valid_in_old_i_1_n_0),
        .Q(valid_in_old),
        .R(1'b0));
endmodule

module DFF
   (Q,
    D,
    counter,
    CLK,
    rst_IBUF);
  output [2:0]Q;
  output [3:0]D;
  input [2:0]counter;
  input CLK;
  input rst_IBUF;

  wire CLK;
  wire [3:0]D;
  wire [2:0]Q;
  wire [2:0]counter;
  wire rst_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    \Dout_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(counter[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Dout_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(counter[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Dout_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(counter[2]),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rom_out[0]_i_1 
       (.I0(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rom_out[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \rom_out[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rom_out[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(D[3]));
endmodule

(* data_width = "8" *) 
(* NotValidForBitStream *)
module FIR_filter_unit
   (clk,
    rst,
    valid_in,
    x,
    valid_out,
    y);
  input clk;
  input rst;
  input valid_in;
  input [7:0]x;
  output valid_out;
  output [23:0]y;

  wire MAC_Unit_n_24;
  wire RAM_memory_n_1;
  wire RAM_memory_n_10;
  wire RAM_memory_n_11;
  wire RAM_memory_n_12;
  wire RAM_memory_n_13;
  wire RAM_memory_n_14;
  wire RAM_memory_n_15;
  wire RAM_memory_n_16;
  wire RAM_memory_n_17;
  wire RAM_memory_n_18;
  wire ROM_memory_n_0;
  wire ROM_memory_n_1;
  wire ROM_memory_n_10;
  wire ROM_memory_n_11;
  wire ROM_memory_n_12;
  wire ROM_memory_n_13;
  wire ROM_memory_n_14;
  wire ROM_memory_n_15;
  wire ROM_memory_n_16;
  wire ROM_memory_n_17;
  wire ROM_memory_n_18;
  wire ROM_memory_n_19;
  wire ROM_memory_n_2;
  wire ROM_memory_n_20;
  wire ROM_memory_n_21;
  wire ROM_memory_n_22;
  wire ROM_memory_n_7;
  wire ROM_memory_n_8;
  wire ROM_memory_n_9;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mac_init;
  wire p_0_in;
  wire [7:0]ram_out;
  wire [3:0]rdata;
  wire [2:0]rom_addr;
  wire [3:0]rom_out;
  wire rst;
  wire rst_IBUF;
  wire valid_in;
  wire valid_in_IBUF;
  wire valid_in_filt;
  wire valid_out;
  wire [7:0]x;
  wire [7:0]x_IBUF;
  wire [23:0]y;
  wire [23:0]y_OBUF;

initial begin
 $sdf_annotate("FIR_blocks_tb_time_synth.sdf",,,,"tool_control");
end
  Control_Unit CU
       (.CLK(clk_IBUF_BUFG),
        .D(rdata),
        .E(p_0_in),
        .Q(rom_addr),
        .mac_init(mac_init),
        .rst_IBUF(rst_IBUF),
        .valid_in_IBUF(valid_in_IBUF),
        .valid_in_filt(valid_in_filt));
  MAC MAC_Unit
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .CO(MAC_Unit_n_24),
        .DI({ROM_memory_n_7,ROM_memory_n_8,RAM_memory_n_18}),
        .S({ROM_memory_n_14,RAM_memory_n_16,ROM_memory_n_15,RAM_memory_n_17}),
        .mac_init(mac_init),
        .\result[4]_i_9_0 ({ROM_memory_n_0,RAM_memory_n_1,ROM_memory_n_1,ROM_memory_n_2}),
        .\result[4]_i_9_1 ({ROM_memory_n_16,ROM_memory_n_17,ROM_memory_n_18,ROM_memory_n_19}),
        .\result[8]_i_9_0 ({ROM_memory_n_10,ROM_memory_n_11,RAM_memory_n_13}),
        .\result[8]_i_9_1 ({ROM_memory_n_20,ROM_memory_n_21,ROM_memory_n_22}),
        .\result_reg[11]_0 (ROM_memory_n_13),
        .y_OBUF(y_OBUF));
  RAM RAM_memory
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(x_IBUF),
        .DI(RAM_memory_n_18),
        .E(p_0_in),
        .Q(ram_out),
        .S({RAM_memory_n_16,RAM_memory_n_17}),
        .multOp__0_carry__0(ROM_memory_n_9),
        .multOp__0_carry__1(ROM_memory_n_12),
        .multOp__0_carry__1_i_6(rom_out),
        .\ram_out_reg[0]_0 (rom_addr),
        .\ram_out_reg[2]_0 (RAM_memory_n_10),
        .\ram_out_reg[2]_1 (RAM_memory_n_11),
        .\ram_out_reg[3]_0 (RAM_memory_n_12),
        .\ram_out_reg[4]_0 (RAM_memory_n_14),
        .\ram_out_reg[5]_0 (RAM_memory_n_1),
        .\ram_out_reg[5]_1 (RAM_memory_n_15),
        .\ram_out_reg[7]_0 (RAM_memory_n_13),
        .valid_in_filt(valid_in_filt));
  ROM ROM_memory
       (.CLK(clk_IBUF_BUFG),
        .CO(MAC_Unit_n_24),
        .D(rdata),
        .DI({ROM_memory_n_7,ROM_memory_n_8}),
        .Q(rom_out),
        .S({ROM_memory_n_14,ROM_memory_n_15}),
        .mac_init(mac_init),
        .mac_init_reg(ROM_memory_n_13),
        .multOp__0_carry(RAM_memory_n_12),
        .multOp__0_carry__0(RAM_memory_n_11),
        .multOp__0_carry__0_0(RAM_memory_n_10),
        .multOp__0_carry__0_1(RAM_memory_n_1),
        .multOp__0_carry__1(RAM_memory_n_15),
        .multOp__0_carry__1_0(RAM_memory_n_14),
        .multOp__0_carry__1_i_6_0(ram_out),
        .\ram_out_reg[6] ({ROM_memory_n_0,ROM_memory_n_1,ROM_memory_n_2}),
        .\ram_out_reg[7] ({ROM_memory_n_16,ROM_memory_n_17,ROM_memory_n_18,ROM_memory_n_19}),
        .\rom_out_reg[1]_0 (ROM_memory_n_9),
        .\rom_out_reg[1]_1 ({ROM_memory_n_10,ROM_memory_n_11}),
        .\rom_out_reg[1]_2 (ROM_memory_n_12),
        .\rom_out_reg[2]_0 ({ROM_memory_n_20,ROM_memory_n_21,ROM_memory_n_22}));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF valid_in_IBUF_inst
       (.I(valid_in),
        .O(valid_in_IBUF));
  OBUFT valid_out_OBUF_inst
       (.I(1'b0),
        .O(valid_out),
        .T(1'b1));
  IBUF \x_IBUF[0]_inst 
       (.I(x[0]),
        .O(x_IBUF[0]));
  IBUF \x_IBUF[1]_inst 
       (.I(x[1]),
        .O(x_IBUF[1]));
  IBUF \x_IBUF[2]_inst 
       (.I(x[2]),
        .O(x_IBUF[2]));
  IBUF \x_IBUF[3]_inst 
       (.I(x[3]),
        .O(x_IBUF[3]));
  IBUF \x_IBUF[4]_inst 
       (.I(x[4]),
        .O(x_IBUF[4]));
  IBUF \x_IBUF[5]_inst 
       (.I(x[5]),
        .O(x_IBUF[5]));
  IBUF \x_IBUF[6]_inst 
       (.I(x[6]),
        .O(x_IBUF[6]));
  IBUF \x_IBUF[7]_inst 
       (.I(x[7]),
        .O(x_IBUF[7]));
  OBUF \y_OBUF[0]_inst 
       (.I(y_OBUF[0]),
        .O(y[0]));
  OBUF \y_OBUF[10]_inst 
       (.I(y_OBUF[10]),
        .O(y[10]));
  OBUF \y_OBUF[11]_inst 
       (.I(y_OBUF[11]),
        .O(y[11]));
  OBUF \y_OBUF[12]_inst 
       (.I(y_OBUF[12]),
        .O(y[12]));
  OBUF \y_OBUF[13]_inst 
       (.I(y_OBUF[13]),
        .O(y[13]));
  OBUF \y_OBUF[14]_inst 
       (.I(y_OBUF[14]),
        .O(y[14]));
  OBUF \y_OBUF[15]_inst 
       (.I(y_OBUF[15]),
        .O(y[15]));
  OBUF \y_OBUF[16]_inst 
       (.I(y_OBUF[16]),
        .O(y[16]));
  OBUF \y_OBUF[17]_inst 
       (.I(y_OBUF[17]),
        .O(y[17]));
  OBUF \y_OBUF[18]_inst 
       (.I(y_OBUF[18]),
        .O(y[18]));
  OBUF \y_OBUF[19]_inst 
       (.I(y_OBUF[19]),
        .O(y[19]));
  OBUF \y_OBUF[1]_inst 
       (.I(y_OBUF[1]),
        .O(y[1]));
  OBUF \y_OBUF[20]_inst 
       (.I(y_OBUF[20]),
        .O(y[20]));
  OBUF \y_OBUF[21]_inst 
       (.I(y_OBUF[21]),
        .O(y[21]));
  OBUF \y_OBUF[22]_inst 
       (.I(y_OBUF[22]),
        .O(y[22]));
  OBUF \y_OBUF[23]_inst 
       (.I(y_OBUF[23]),
        .O(y[23]));
  OBUF \y_OBUF[2]_inst 
       (.I(y_OBUF[2]),
        .O(y[2]));
  OBUF \y_OBUF[3]_inst 
       (.I(y_OBUF[3]),
        .O(y[3]));
  OBUF \y_OBUF[4]_inst 
       (.I(y_OBUF[4]),
        .O(y[4]));
  OBUF \y_OBUF[5]_inst 
       (.I(y_OBUF[5]),
        .O(y[5]));
  OBUF \y_OBUF[6]_inst 
       (.I(y_OBUF[6]),
        .O(y[6]));
  OBUF \y_OBUF[7]_inst 
       (.I(y_OBUF[7]),
        .O(y[7]));
  OBUF \y_OBUF[8]_inst 
       (.I(y_OBUF[8]),
        .O(y[8]));
  OBUF \y_OBUF[9]_inst 
       (.I(y_OBUF[9]),
        .O(y[9]));
endmodule

module MAC
   (y_OBUF,
    CO,
    CLK,
    AR,
    DI,
    S,
    \result[4]_i_9_0 ,
    \result[4]_i_9_1 ,
    \result[8]_i_9_0 ,
    \result[8]_i_9_1 ,
    mac_init,
    \result_reg[11]_0 );
  output [23:0]y_OBUF;
  output [0:0]CO;
  input CLK;
  input [0:0]AR;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\result[4]_i_9_0 ;
  input [3:0]\result[4]_i_9_1 ;
  input [2:0]\result[8]_i_9_0 ;
  input [2:0]\result[8]_i_9_1 ;
  input mac_init;
  input [0:0]\result_reg[11]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [2:0]DI;
  wire [3:0]S;
  wire mac_init;
  wire multOp__0_carry__0_n_0;
  wire multOp__0_carry__0_n_1;
  wire multOp__0_carry__0_n_2;
  wire multOp__0_carry__0_n_3;
  wire multOp__0_carry__0_n_4;
  wire multOp__0_carry__0_n_5;
  wire multOp__0_carry__0_n_6;
  wire multOp__0_carry__0_n_7;
  wire multOp__0_carry__1_n_2;
  wire multOp__0_carry__1_n_3;
  wire multOp__0_carry__1_n_5;
  wire multOp__0_carry__1_n_6;
  wire multOp__0_carry__1_n_7;
  wire multOp__0_carry_n_0;
  wire multOp__0_carry_n_1;
  wire multOp__0_carry_n_2;
  wire multOp__0_carry_n_3;
  wire multOp__0_carry_n_4;
  wire multOp__0_carry_n_5;
  wire multOp__0_carry_n_6;
  wire multOp__0_carry_n_7;
  wire \result[0]_i_2_n_0 ;
  wire \result[0]_i_3_n_0 ;
  wire \result[0]_i_4_n_0 ;
  wire \result[0]_i_5_n_0 ;
  wire \result[0]_i_6_n_0 ;
  wire \result[0]_i_7_n_0 ;
  wire \result[0]_i_8_n_0 ;
  wire \result[0]_i_9_n_0 ;
  wire \result[12]_i_2_n_0 ;
  wire \result[12]_i_3_n_0 ;
  wire \result[12]_i_4_n_0 ;
  wire \result[12]_i_5_n_0 ;
  wire \result[16]_i_2_n_0 ;
  wire \result[16]_i_3_n_0 ;
  wire \result[16]_i_4_n_0 ;
  wire \result[16]_i_5_n_0 ;
  wire \result[20]_i_2_n_0 ;
  wire \result[20]_i_3_n_0 ;
  wire \result[20]_i_4_n_0 ;
  wire \result[20]_i_5_n_0 ;
  wire \result[4]_i_2_n_0 ;
  wire \result[4]_i_3_n_0 ;
  wire \result[4]_i_4_n_0 ;
  wire \result[4]_i_5_n_0 ;
  wire \result[4]_i_6_n_0 ;
  wire \result[4]_i_7_n_0 ;
  wire \result[4]_i_8_n_0 ;
  wire [3:0]\result[4]_i_9_0 ;
  wire [3:0]\result[4]_i_9_1 ;
  wire \result[4]_i_9_n_0 ;
  wire \result[8]_i_3_n_0 ;
  wire \result[8]_i_4_n_0 ;
  wire \result[8]_i_5_n_0 ;
  wire \result[8]_i_6_n_0 ;
  wire \result[8]_i_7_n_0 ;
  wire \result[8]_i_8_n_0 ;
  wire [2:0]\result[8]_i_9_0 ;
  wire [2:0]\result[8]_i_9_1 ;
  wire \result[8]_i_9_n_0 ;
  wire \result_reg[0]_i_1_n_0 ;
  wire \result_reg[0]_i_1_n_1 ;
  wire \result_reg[0]_i_1_n_2 ;
  wire \result_reg[0]_i_1_n_3 ;
  wire \result_reg[0]_i_1_n_4 ;
  wire \result_reg[0]_i_1_n_5 ;
  wire \result_reg[0]_i_1_n_6 ;
  wire \result_reg[0]_i_1_n_7 ;
  wire [0:0]\result_reg[11]_0 ;
  wire \result_reg[12]_i_1_n_0 ;
  wire \result_reg[12]_i_1_n_1 ;
  wire \result_reg[12]_i_1_n_2 ;
  wire \result_reg[12]_i_1_n_3 ;
  wire \result_reg[12]_i_1_n_4 ;
  wire \result_reg[12]_i_1_n_5 ;
  wire \result_reg[12]_i_1_n_6 ;
  wire \result_reg[12]_i_1_n_7 ;
  wire \result_reg[16]_i_1_n_0 ;
  wire \result_reg[16]_i_1_n_1 ;
  wire \result_reg[16]_i_1_n_2 ;
  wire \result_reg[16]_i_1_n_3 ;
  wire \result_reg[16]_i_1_n_4 ;
  wire \result_reg[16]_i_1_n_5 ;
  wire \result_reg[16]_i_1_n_6 ;
  wire \result_reg[16]_i_1_n_7 ;
  wire \result_reg[20]_i_1_n_1 ;
  wire \result_reg[20]_i_1_n_2 ;
  wire \result_reg[20]_i_1_n_3 ;
  wire \result_reg[20]_i_1_n_4 ;
  wire \result_reg[20]_i_1_n_5 ;
  wire \result_reg[20]_i_1_n_6 ;
  wire \result_reg[20]_i_1_n_7 ;
  wire \result_reg[4]_i_1_n_0 ;
  wire \result_reg[4]_i_1_n_1 ;
  wire \result_reg[4]_i_1_n_2 ;
  wire \result_reg[4]_i_1_n_3 ;
  wire \result_reg[4]_i_1_n_4 ;
  wire \result_reg[4]_i_1_n_5 ;
  wire \result_reg[4]_i_1_n_6 ;
  wire \result_reg[4]_i_1_n_7 ;
  wire \result_reg[8]_i_1_n_0 ;
  wire \result_reg[8]_i_1_n_1 ;
  wire \result_reg[8]_i_1_n_2 ;
  wire \result_reg[8]_i_1_n_3 ;
  wire \result_reg[8]_i_1_n_4 ;
  wire \result_reg[8]_i_1_n_5 ;
  wire \result_reg[8]_i_1_n_6 ;
  wire \result_reg[8]_i_1_n_7 ;
  wire [23:0]y_OBUF;
  wire [2:2]NLW_multOp__0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_multOp__0_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_result_reg[20]_i_1_CO_UNCONNECTED ;

  CARRY4 multOp__0_carry
       (.CI(1'b0),
        .CO({multOp__0_carry_n_0,multOp__0_carry_n_1,multOp__0_carry_n_2,multOp__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O({multOp__0_carry_n_4,multOp__0_carry_n_5,multOp__0_carry_n_6,multOp__0_carry_n_7}),
        .S(S));
  CARRY4 multOp__0_carry__0
       (.CI(multOp__0_carry_n_0),
        .CO({multOp__0_carry__0_n_0,multOp__0_carry__0_n_1,multOp__0_carry__0_n_2,multOp__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\result[4]_i_9_0 ),
        .O({multOp__0_carry__0_n_4,multOp__0_carry__0_n_5,multOp__0_carry__0_n_6,multOp__0_carry__0_n_7}),
        .S(\result[4]_i_9_1 ));
  CARRY4 multOp__0_carry__1
       (.CI(multOp__0_carry__0_n_0),
        .CO({CO,NLW_multOp__0_carry__1_CO_UNCONNECTED[2],multOp__0_carry__1_n_2,multOp__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\result[8]_i_9_0 }),
        .O({NLW_multOp__0_carry__1_O_UNCONNECTED[3],multOp__0_carry__1_n_5,multOp__0_carry__1_n_6,multOp__0_carry__1_n_7}),
        .S({1'b1,\result[8]_i_9_1 }));
  LUT2 #(
    .INIT(4'h2)) 
    \result[0]_i_2 
       (.I0(multOp__0_carry_n_4),
        .I1(mac_init),
        .O(\result[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[0]_i_3 
       (.I0(multOp__0_carry_n_5),
        .I1(mac_init),
        .O(\result[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[0]_i_4 
       (.I0(multOp__0_carry_n_6),
        .I1(mac_init),
        .O(\result[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[0]_i_5 
       (.I0(multOp__0_carry_n_7),
        .I1(mac_init),
        .O(\result[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[0]_i_6 
       (.I0(y_OBUF[3]),
        .I1(mac_init),
        .I2(multOp__0_carry_n_4),
        .O(\result[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[0]_i_7 
       (.I0(y_OBUF[2]),
        .I1(mac_init),
        .I2(multOp__0_carry_n_5),
        .O(\result[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[0]_i_8 
       (.I0(y_OBUF[1]),
        .I1(mac_init),
        .I2(multOp__0_carry_n_6),
        .O(\result[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[0]_i_9 
       (.I0(y_OBUF[0]),
        .I1(mac_init),
        .I2(multOp__0_carry_n_7),
        .O(\result[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[12]_i_2 
       (.I0(y_OBUF[15]),
        .I1(mac_init),
        .O(\result[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[12]_i_3 
       (.I0(y_OBUF[14]),
        .I1(mac_init),
        .O(\result[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[12]_i_4 
       (.I0(y_OBUF[13]),
        .I1(mac_init),
        .O(\result[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[12]_i_5 
       (.I0(y_OBUF[12]),
        .I1(mac_init),
        .O(\result[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[16]_i_2 
       (.I0(y_OBUF[19]),
        .I1(mac_init),
        .O(\result[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[16]_i_3 
       (.I0(y_OBUF[18]),
        .I1(mac_init),
        .O(\result[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[16]_i_4 
       (.I0(y_OBUF[17]),
        .I1(mac_init),
        .O(\result[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[16]_i_5 
       (.I0(y_OBUF[16]),
        .I1(mac_init),
        .O(\result[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[20]_i_2 
       (.I0(y_OBUF[23]),
        .I1(mac_init),
        .O(\result[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[20]_i_3 
       (.I0(y_OBUF[22]),
        .I1(mac_init),
        .O(\result[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[20]_i_4 
       (.I0(y_OBUF[21]),
        .I1(mac_init),
        .O(\result[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[20]_i_5 
       (.I0(y_OBUF[20]),
        .I1(mac_init),
        .O(\result[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[4]_i_2 
       (.I0(multOp__0_carry__0_n_4),
        .I1(mac_init),
        .O(\result[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[4]_i_3 
       (.I0(multOp__0_carry__0_n_5),
        .I1(mac_init),
        .O(\result[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[4]_i_4 
       (.I0(multOp__0_carry__0_n_6),
        .I1(mac_init),
        .O(\result[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[4]_i_5 
       (.I0(multOp__0_carry__0_n_7),
        .I1(mac_init),
        .O(\result[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[4]_i_6 
       (.I0(y_OBUF[7]),
        .I1(mac_init),
        .I2(multOp__0_carry__0_n_4),
        .O(\result[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[4]_i_7 
       (.I0(y_OBUF[6]),
        .I1(mac_init),
        .I2(multOp__0_carry__0_n_5),
        .O(\result[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[4]_i_8 
       (.I0(y_OBUF[5]),
        .I1(mac_init),
        .I2(multOp__0_carry__0_n_6),
        .O(\result[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[4]_i_9 
       (.I0(y_OBUF[4]),
        .I1(mac_init),
        .I2(multOp__0_carry__0_n_7),
        .O(\result[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[8]_i_3 
       (.I0(multOp__0_carry__1_n_5),
        .I1(mac_init),
        .O(\result[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[8]_i_4 
       (.I0(multOp__0_carry__1_n_6),
        .I1(mac_init),
        .O(\result[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[8]_i_5 
       (.I0(multOp__0_carry__1_n_7),
        .I1(mac_init),
        .O(\result[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[8]_i_6 
       (.I0(y_OBUF[11]),
        .I1(mac_init),
        .I2(CO),
        .O(\result[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[8]_i_7 
       (.I0(y_OBUF[10]),
        .I1(mac_init),
        .I2(multOp__0_carry__1_n_5),
        .O(\result[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[8]_i_8 
       (.I0(y_OBUF[9]),
        .I1(mac_init),
        .I2(multOp__0_carry__1_n_6),
        .O(\result[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[8]_i_9 
       (.I0(y_OBUF[8]),
        .I1(mac_init),
        .I2(multOp__0_carry__1_n_7),
        .O(\result[8]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[0]_i_1_n_7 ),
        .Q(y_OBUF[0]));
  CARRY4 \result_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\result_reg[0]_i_1_n_0 ,\result_reg[0]_i_1_n_1 ,\result_reg[0]_i_1_n_2 ,\result_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result[0]_i_2_n_0 ,\result[0]_i_3_n_0 ,\result[0]_i_4_n_0 ,\result[0]_i_5_n_0 }),
        .O({\result_reg[0]_i_1_n_4 ,\result_reg[0]_i_1_n_5 ,\result_reg[0]_i_1_n_6 ,\result_reg[0]_i_1_n_7 }),
        .S({\result[0]_i_6_n_0 ,\result[0]_i_7_n_0 ,\result[0]_i_8_n_0 ,\result[0]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[8]_i_1_n_5 ),
        .Q(y_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[8]_i_1_n_4 ),
        .Q(y_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[12]_i_1_n_7 ),
        .Q(y_OBUF[12]));
  CARRY4 \result_reg[12]_i_1 
       (.CI(\result_reg[8]_i_1_n_0 ),
        .CO({\result_reg[12]_i_1_n_0 ,\result_reg[12]_i_1_n_1 ,\result_reg[12]_i_1_n_2 ,\result_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\result_reg[12]_i_1_n_4 ,\result_reg[12]_i_1_n_5 ,\result_reg[12]_i_1_n_6 ,\result_reg[12]_i_1_n_7 }),
        .S({\result[12]_i_2_n_0 ,\result[12]_i_3_n_0 ,\result[12]_i_4_n_0 ,\result[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[12]_i_1_n_6 ),
        .Q(y_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[12]_i_1_n_5 ),
        .Q(y_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[12]_i_1_n_4 ),
        .Q(y_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[16]_i_1_n_7 ),
        .Q(y_OBUF[16]));
  CARRY4 \result_reg[16]_i_1 
       (.CI(\result_reg[12]_i_1_n_0 ),
        .CO({\result_reg[16]_i_1_n_0 ,\result_reg[16]_i_1_n_1 ,\result_reg[16]_i_1_n_2 ,\result_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\result_reg[16]_i_1_n_4 ,\result_reg[16]_i_1_n_5 ,\result_reg[16]_i_1_n_6 ,\result_reg[16]_i_1_n_7 }),
        .S({\result[16]_i_2_n_0 ,\result[16]_i_3_n_0 ,\result[16]_i_4_n_0 ,\result[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[16]_i_1_n_6 ),
        .Q(y_OBUF[17]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[16]_i_1_n_5 ),
        .Q(y_OBUF[18]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[16]_i_1_n_4 ),
        .Q(y_OBUF[19]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[0]_i_1_n_6 ),
        .Q(y_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[20]_i_1_n_7 ),
        .Q(y_OBUF[20]));
  CARRY4 \result_reg[20]_i_1 
       (.CI(\result_reg[16]_i_1_n_0 ),
        .CO({\NLW_result_reg[20]_i_1_CO_UNCONNECTED [3],\result_reg[20]_i_1_n_1 ,\result_reg[20]_i_1_n_2 ,\result_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\result_reg[20]_i_1_n_4 ,\result_reg[20]_i_1_n_5 ,\result_reg[20]_i_1_n_6 ,\result_reg[20]_i_1_n_7 }),
        .S({\result[20]_i_2_n_0 ,\result[20]_i_3_n_0 ,\result[20]_i_4_n_0 ,\result[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[20]_i_1_n_6 ),
        .Q(y_OBUF[21]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[20]_i_1_n_5 ),
        .Q(y_OBUF[22]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[20]_i_1_n_4 ),
        .Q(y_OBUF[23]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[0]_i_1_n_5 ),
        .Q(y_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[0]_i_1_n_4 ),
        .Q(y_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[4]_i_1_n_7 ),
        .Q(y_OBUF[4]));
  CARRY4 \result_reg[4]_i_1 
       (.CI(\result_reg[0]_i_1_n_0 ),
        .CO({\result_reg[4]_i_1_n_0 ,\result_reg[4]_i_1_n_1 ,\result_reg[4]_i_1_n_2 ,\result_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result[4]_i_2_n_0 ,\result[4]_i_3_n_0 ,\result[4]_i_4_n_0 ,\result[4]_i_5_n_0 }),
        .O({\result_reg[4]_i_1_n_4 ,\result_reg[4]_i_1_n_5 ,\result_reg[4]_i_1_n_6 ,\result_reg[4]_i_1_n_7 }),
        .S({\result[4]_i_6_n_0 ,\result[4]_i_7_n_0 ,\result[4]_i_8_n_0 ,\result[4]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[4]_i_1_n_6 ),
        .Q(y_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[4]_i_1_n_5 ),
        .Q(y_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[4]_i_1_n_4 ),
        .Q(y_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[8]_i_1_n_7 ),
        .Q(y_OBUF[8]));
  CARRY4 \result_reg[8]_i_1 
       (.CI(\result_reg[4]_i_1_n_0 ),
        .CO({\result_reg[8]_i_1_n_0 ,\result_reg[8]_i_1_n_1 ,\result_reg[8]_i_1_n_2 ,\result_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_reg[11]_0 ,\result[8]_i_3_n_0 ,\result[8]_i_4_n_0 ,\result[8]_i_5_n_0 }),
        .O({\result_reg[8]_i_1_n_4 ,\result_reg[8]_i_1_n_5 ,\result_reg[8]_i_1_n_6 ,\result_reg[8]_i_1_n_7 }),
        .S({\result[8]_i_6_n_0 ,\result[8]_i_7_n_0 ,\result[8]_i_8_n_0 ,\result[8]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[8]_i_1_n_6 ),
        .Q(y_OBUF[9]));
endmodule

module RAM
   (E,
    \ram_out_reg[5]_0 ,
    Q,
    \ram_out_reg[2]_0 ,
    \ram_out_reg[2]_1 ,
    \ram_out_reg[3]_0 ,
    \ram_out_reg[7]_0 ,
    \ram_out_reg[4]_0 ,
    \ram_out_reg[5]_1 ,
    S,
    DI,
    AR,
    multOp__0_carry__1_i_6,
    multOp__0_carry__0,
    multOp__0_carry__1,
    valid_in_filt,
    D,
    CLK,
    \ram_out_reg[0]_0 );
  output [0:0]E;
  output [0:0]\ram_out_reg[5]_0 ;
  output [7:0]Q;
  output \ram_out_reg[2]_0 ;
  output \ram_out_reg[2]_1 ;
  output \ram_out_reg[3]_0 ;
  output [0:0]\ram_out_reg[7]_0 ;
  output \ram_out_reg[4]_0 ;
  output \ram_out_reg[5]_1 ;
  output [1:0]S;
  output [0:0]DI;
  input [0:0]AR;
  input [3:0]multOp__0_carry__1_i_6;
  input multOp__0_carry__0;
  input multOp__0_carry__1;
  input valid_in_filt;
  input [7:0]D;
  input CLK;
  input [2:0]\ram_out_reg[0]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [7:0]Q;
  wire [1:0]S;
  wire multOp__0_carry__0;
  wire multOp__0_carry__1;
  wire [3:0]multOp__0_carry__1_i_6;
  wire [7:0]p_1_in;
  wire \ram_out[0]_i_2_n_0 ;
  wire \ram_out[0]_i_3_n_0 ;
  wire \ram_out[1]_i_2_n_0 ;
  wire \ram_out[1]_i_3_n_0 ;
  wire \ram_out[2]_i_2_n_0 ;
  wire \ram_out[2]_i_3_n_0 ;
  wire \ram_out[3]_i_2_n_0 ;
  wire \ram_out[3]_i_3_n_0 ;
  wire \ram_out[4]_i_2_n_0 ;
  wire \ram_out[4]_i_3_n_0 ;
  wire \ram_out[5]_i_2_n_0 ;
  wire \ram_out[5]_i_3_n_0 ;
  wire \ram_out[6]_i_2_n_0 ;
  wire \ram_out[6]_i_3_n_0 ;
  wire \ram_out[7]_i_2_n_0 ;
  wire \ram_out[7]_i_3_n_0 ;
  wire [2:0]\ram_out_reg[0]_0 ;
  wire \ram_out_reg[2]_0 ;
  wire \ram_out_reg[2]_1 ;
  wire \ram_out_reg[3]_0 ;
  wire \ram_out_reg[4]_0 ;
  wire [0:0]\ram_out_reg[5]_0 ;
  wire \ram_out_reg[5]_1 ;
  wire [0:0]\ram_out_reg[7]_0 ;
  wire [7:0]\ram_reg[0] ;
  wire [7:0]\ram_reg[1] ;
  wire [7:0]\ram_reg[2] ;
  wire [7:0]\ram_reg[3] ;
  wire [7:0]\ram_reg[4] ;
  wire [7:0]\ram_reg[5] ;
  wire [7:0]\ram_reg[6] ;
  wire [7:0]\ram_reg[7] ;
  wire valid_in_filt;

  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__0_i_12
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6[2]),
        .I2(Q[3]),
        .I3(multOp__0_carry__1_i_6[3]),
        .I4(Q[1]),
        .I5(multOp__0_carry__1_i_6[1]),
        .O(\ram_out_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    multOp__0_carry__0_i_15
       (.I0(Q[4]),
        .I1(multOp__0_carry__1_i_6[2]),
        .I2(Q[3]),
        .I3(multOp__0_carry__1_i_6[3]),
        .I4(Q[5]),
        .I5(multOp__0_carry__1_i_6[1]),
        .O(\ram_out_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    multOp__0_carry__0_i_17
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6[1]),
        .O(\ram_out_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hF880)) 
    multOp__0_carry__0_i_2
       (.I0(Q[5]),
        .I1(multOp__0_carry__1_i_6[0]),
        .I2(multOp__0_carry__0),
        .I3(\ram_out_reg[2]_0 ),
        .O(\ram_out_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    multOp__0_carry__1_i_3
       (.I0(Q[7]),
        .I1(multOp__0_carry__1_i_6[0]),
        .I2(multOp__0_carry__1),
        .I3(\ram_out_reg[4]_0 ),
        .O(\ram_out_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    multOp__0_carry__1_i_8
       (.I0(Q[5]),
        .I1(multOp__0_carry__1_i_6[2]),
        .O(\ram_out_reg[5]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry_i_3
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6[0]),
        .O(DI));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry_i_5
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6[2]),
        .I2(Q[1]),
        .I3(multOp__0_carry__1_i_6[1]),
        .I4(multOp__0_carry__1_i_6[0]),
        .I5(Q[2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry_i_7
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h7)) 
    multOp__0_carry_i_9
       (.I0(Q[3]),
        .I1(multOp__0_carry__1_i_6[0]),
        .O(\ram_out_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[0]_i_1 
       (.I0(D[0]),
        .I1(\ram_out[0]_i_2_n_0 ),
        .I2(\ram_out_reg[0]_0 [2]),
        .I3(\ram_out[0]_i_3_n_0 ),
        .I4(valid_in_filt),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[0]_i_2 
       (.I0(\ram_reg[7] [0]),
        .I1(\ram_reg[6] [0]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[5] [0]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[4] [0]),
        .O(\ram_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[0]_i_3 
       (.I0(\ram_reg[3] [0]),
        .I1(\ram_reg[2] [0]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[1] [0]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[0] [0]),
        .O(\ram_out[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[1]_i_1 
       (.I0(D[1]),
        .I1(\ram_out[1]_i_2_n_0 ),
        .I2(\ram_out_reg[0]_0 [2]),
        .I3(\ram_out[1]_i_3_n_0 ),
        .I4(valid_in_filt),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[1]_i_2 
       (.I0(\ram_reg[7] [1]),
        .I1(\ram_reg[6] [1]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[5] [1]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[4] [1]),
        .O(\ram_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[1]_i_3 
       (.I0(\ram_reg[3] [1]),
        .I1(\ram_reg[2] [1]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[1] [1]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[0] [1]),
        .O(\ram_out[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[2]_i_1 
       (.I0(D[2]),
        .I1(\ram_out[2]_i_2_n_0 ),
        .I2(\ram_out_reg[0]_0 [2]),
        .I3(\ram_out[2]_i_3_n_0 ),
        .I4(valid_in_filt),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[2]_i_2 
       (.I0(\ram_reg[7] [2]),
        .I1(\ram_reg[6] [2]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[5] [2]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[4] [2]),
        .O(\ram_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[2]_i_3 
       (.I0(\ram_reg[3] [2]),
        .I1(\ram_reg[2] [2]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[1] [2]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[0] [2]),
        .O(\ram_out[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[3]_i_1 
       (.I0(D[3]),
        .I1(\ram_out[3]_i_2_n_0 ),
        .I2(\ram_out_reg[0]_0 [2]),
        .I3(\ram_out[3]_i_3_n_0 ),
        .I4(valid_in_filt),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[3]_i_2 
       (.I0(\ram_reg[7] [3]),
        .I1(\ram_reg[6] [3]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[5] [3]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[4] [3]),
        .O(\ram_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[3]_i_3 
       (.I0(\ram_reg[3] [3]),
        .I1(\ram_reg[2] [3]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[1] [3]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[0] [3]),
        .O(\ram_out[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[4]_i_1 
       (.I0(D[4]),
        .I1(\ram_out[4]_i_2_n_0 ),
        .I2(\ram_out_reg[0]_0 [2]),
        .I3(\ram_out[4]_i_3_n_0 ),
        .I4(valid_in_filt),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[4]_i_2 
       (.I0(\ram_reg[7] [4]),
        .I1(\ram_reg[6] [4]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[5] [4]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[4] [4]),
        .O(\ram_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[4]_i_3 
       (.I0(\ram_reg[3] [4]),
        .I1(\ram_reg[2] [4]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[1] [4]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[0] [4]),
        .O(\ram_out[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[5]_i_1 
       (.I0(D[5]),
        .I1(\ram_out[5]_i_2_n_0 ),
        .I2(\ram_out_reg[0]_0 [2]),
        .I3(\ram_out[5]_i_3_n_0 ),
        .I4(valid_in_filt),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[5]_i_2 
       (.I0(\ram_reg[7] [5]),
        .I1(\ram_reg[6] [5]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[5] [5]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[4] [5]),
        .O(\ram_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[5]_i_3 
       (.I0(\ram_reg[3] [5]),
        .I1(\ram_reg[2] [5]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[1] [5]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[0] [5]),
        .O(\ram_out[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[6]_i_1 
       (.I0(D[6]),
        .I1(\ram_out[6]_i_2_n_0 ),
        .I2(\ram_out_reg[0]_0 [2]),
        .I3(\ram_out[6]_i_3_n_0 ),
        .I4(valid_in_filt),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[6]_i_2 
       (.I0(\ram_reg[7] [6]),
        .I1(\ram_reg[6] [6]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[5] [6]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[4] [6]),
        .O(\ram_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[6]_i_3 
       (.I0(\ram_reg[3] [6]),
        .I1(\ram_reg[2] [6]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[1] [6]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[0] [6]),
        .O(\ram_out[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[7]_i_1 
       (.I0(D[7]),
        .I1(\ram_out[7]_i_2_n_0 ),
        .I2(\ram_out_reg[0]_0 [2]),
        .I3(\ram_out[7]_i_3_n_0 ),
        .I4(valid_in_filt),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[7]_i_2 
       (.I0(\ram_reg[7] [7]),
        .I1(\ram_reg[6] [7]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[5] [7]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[4] [7]),
        .O(\ram_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[7]_i_3 
       (.I0(\ram_reg[3] [7]),
        .I1(\ram_reg[2] [7]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[1] [7]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[0] [7]),
        .O(\ram_out[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][0] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(D[0]),
        .Q(\ram_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][1] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(D[1]),
        .Q(\ram_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][2] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(D[2]),
        .Q(\ram_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][3] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(D[3]),
        .Q(\ram_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][4] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(D[4]),
        .Q(\ram_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][5] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(D[5]),
        .Q(\ram_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][6] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(D[6]),
        .Q(\ram_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][7] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(D[7]),
        .Q(\ram_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][0] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[0] [0]),
        .Q(\ram_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][1] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[0] [1]),
        .Q(\ram_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][2] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[0] [2]),
        .Q(\ram_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][3] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[0] [3]),
        .Q(\ram_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][4] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[0] [4]),
        .Q(\ram_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][5] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[0] [5]),
        .Q(\ram_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][6] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[0] [6]),
        .Q(\ram_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][7] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[0] [7]),
        .Q(\ram_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][0] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[1] [0]),
        .Q(\ram_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][1] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[1] [1]),
        .Q(\ram_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][2] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[1] [2]),
        .Q(\ram_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][3] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[1] [3]),
        .Q(\ram_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][4] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[1] [4]),
        .Q(\ram_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][5] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[1] [5]),
        .Q(\ram_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][6] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[1] [6]),
        .Q(\ram_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][7] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[1] [7]),
        .Q(\ram_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][0] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[2] [0]),
        .Q(\ram_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][1] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[2] [1]),
        .Q(\ram_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][2] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[2] [2]),
        .Q(\ram_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][3] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[2] [3]),
        .Q(\ram_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][4] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[2] [4]),
        .Q(\ram_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][5] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[2] [5]),
        .Q(\ram_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][6] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[2] [6]),
        .Q(\ram_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][7] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[2] [7]),
        .Q(\ram_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][0] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[3] [0]),
        .Q(\ram_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][1] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[3] [1]),
        .Q(\ram_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][2] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[3] [2]),
        .Q(\ram_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][3] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[3] [3]),
        .Q(\ram_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][4] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[3] [4]),
        .Q(\ram_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][5] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[3] [5]),
        .Q(\ram_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][6] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[3] [6]),
        .Q(\ram_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][7] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[3] [7]),
        .Q(\ram_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][0] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[4] [0]),
        .Q(\ram_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][1] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[4] [1]),
        .Q(\ram_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][2] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[4] [2]),
        .Q(\ram_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][3] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[4] [3]),
        .Q(\ram_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][4] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[4] [4]),
        .Q(\ram_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][5] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[4] [5]),
        .Q(\ram_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][6] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[4] [6]),
        .Q(\ram_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][7] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[4] [7]),
        .Q(\ram_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][0] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[5] [0]),
        .Q(\ram_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][1] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[5] [1]),
        .Q(\ram_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][2] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[5] [2]),
        .Q(\ram_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][3] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[5] [3]),
        .Q(\ram_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][4] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[5] [4]),
        .Q(\ram_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][5] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[5] [5]),
        .Q(\ram_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][6] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[5] [6]),
        .Q(\ram_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][7] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[5] [7]),
        .Q(\ram_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][0] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[6] [0]),
        .Q(\ram_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][1] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[6] [1]),
        .Q(\ram_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][2] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[6] [2]),
        .Q(\ram_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][3] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[6] [3]),
        .Q(\ram_reg[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][4] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[6] [4]),
        .Q(\ram_reg[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][5] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[6] [5]),
        .Q(\ram_reg[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][6] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[6] [6]),
        .Q(\ram_reg[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][7] 
       (.C(CLK),
        .CE(valid_in_filt),
        .CLR(AR),
        .D(\ram_reg[6] [7]),
        .Q(\ram_reg[7] [7]));
  LUT1 #(
    .INIT(2'h1)) 
    valid_in_filt_i_1
       (.I0(AR),
        .O(E));
endmodule

module ROM
   (\ram_out_reg[6] ,
    Q,
    DI,
    \rom_out_reg[1]_0 ,
    \rom_out_reg[1]_1 ,
    \rom_out_reg[1]_2 ,
    mac_init_reg,
    S,
    \ram_out_reg[7] ,
    \rom_out_reg[2]_0 ,
    multOp__0_carry__1_i_6_0,
    multOp__0_carry__1,
    CO,
    mac_init,
    multOp__0_carry,
    multOp__0_carry__0,
    multOp__0_carry__0_0,
    multOp__0_carry__0_1,
    multOp__0_carry__1_0,
    D,
    CLK);
  output [2:0]\ram_out_reg[6] ;
  output [3:0]Q;
  output [1:0]DI;
  output \rom_out_reg[1]_0 ;
  output [1:0]\rom_out_reg[1]_1 ;
  output \rom_out_reg[1]_2 ;
  output [0:0]mac_init_reg;
  output [1:0]S;
  output [3:0]\ram_out_reg[7] ;
  output [2:0]\rom_out_reg[2]_0 ;
  input [7:0]multOp__0_carry__1_i_6_0;
  input multOp__0_carry__1;
  input [0:0]CO;
  input mac_init;
  input multOp__0_carry;
  input multOp__0_carry__0;
  input multOp__0_carry__0_0;
  input [0:0]multOp__0_carry__0_1;
  input multOp__0_carry__1_0;
  input [3:0]D;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [1:0]DI;
  wire [3:0]Q;
  wire [1:0]S;
  wire mac_init;
  wire [0:0]mac_init_reg;
  wire multOp__0_carry;
  wire multOp__0_carry__0;
  wire multOp__0_carry__0_0;
  wire [0:0]multOp__0_carry__0_1;
  wire multOp__0_carry__0_i_10_n_0;
  wire multOp__0_carry__0_i_13_n_0;
  wire multOp__0_carry__0_i_14_n_0;
  wire multOp__0_carry__0_i_9_n_0;
  wire multOp__0_carry__1;
  wire multOp__0_carry__1_0;
  wire multOp__0_carry__1_i_10_n_0;
  wire [7:0]multOp__0_carry__1_i_6_0;
  wire multOp__0_carry__1_i_7_n_0;
  wire multOp__0_carry__1_i_9_n_0;
  wire multOp__0_carry_i_8_n_0;
  wire [2:0]\ram_out_reg[6] ;
  wire [3:0]\ram_out_reg[7] ;
  wire \rom_out_reg[1]_0 ;
  wire [1:0]\rom_out_reg[1]_1 ;
  wire \rom_out_reg[1]_2 ;
  wire [2:0]\rom_out_reg[2]_0 ;

  LUT4 #(
    .INIT(16'hF880)) 
    multOp__0_carry__0_i_1
       (.I0(multOp__0_carry__1_i_6_0[6]),
        .I1(Q[0]),
        .I2(multOp__0_carry__0_i_9_n_0),
        .I3(multOp__0_carry__0_i_10_n_0),
        .O(\ram_out_reg[6] [2]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__0_i_10
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[3]),
        .I2(multOp__0_carry__1_i_6_0[2]),
        .I3(Q[1]),
        .I4(multOp__0_carry__1_i_6_0[4]),
        .I5(Q[3]),
        .O(multOp__0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__0_i_11
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[4]),
        .I2(multOp__0_carry__1_i_6_0[3]),
        .I3(Q[2]),
        .I4(multOp__0_carry__1_i_6_0[2]),
        .I5(Q[3]),
        .O(\rom_out_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    multOp__0_carry__0_i_13
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6_0[3]),
        .I2(Q[2]),
        .I3(multOp__0_carry__1_i_6_0[1]),
        .I4(multOp__0_carry__1_i_6_0[0]),
        .I5(Q[1]),
        .O(multOp__0_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__0_i_14
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[3]),
        .I2(Q[3]),
        .I3(multOp__0_carry__1_i_6_0[1]),
        .I4(multOp__0_carry__1_i_6_0[2]),
        .I5(Q[2]),
        .O(multOp__0_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__0_i_16
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[6]),
        .I2(multOp__0_carry__1_i_6_0[5]),
        .I3(Q[2]),
        .I4(multOp__0_carry__1_i_6_0[4]),
        .I5(Q[3]),
        .O(\rom_out_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h8F0C)) 
    multOp__0_carry__0_i_3
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6_0[4]),
        .I2(multOp__0_carry__0_i_13_n_0),
        .I3(multOp__0_carry__0_i_14_n_0),
        .O(\ram_out_reg[6] [1]));
  LUT4 #(
    .INIT(16'h6999)) 
    multOp__0_carry__0_i_4
       (.I0(multOp__0_carry__0_i_13_n_0),
        .I1(multOp__0_carry__0_i_14_n_0),
        .I2(multOp__0_carry__1_i_6_0[4]),
        .I3(Q[0]),
        .O(\ram_out_reg[6] [0]));
  LUT5 #(
    .INIT(32'h6A95956A)) 
    multOp__0_carry__0_i_5
       (.I0(\ram_out_reg[6] [2]),
        .I1(multOp__0_carry__1_i_6_0[7]),
        .I2(Q[0]),
        .I3(multOp__0_carry__1_0),
        .I4(\rom_out_reg[1]_2 ),
        .O(\ram_out_reg[7] [3]));
  LUT5 #(
    .INIT(32'h6A95956A)) 
    multOp__0_carry__0_i_6
       (.I0(multOp__0_carry__0_1),
        .I1(multOp__0_carry__1_i_6_0[6]),
        .I2(Q[0]),
        .I3(multOp__0_carry__0_i_10_n_0),
        .I4(multOp__0_carry__0_i_9_n_0),
        .O(\ram_out_reg[7] [2]));
  LUT5 #(
    .INIT(32'h6A95956A)) 
    multOp__0_carry__0_i_7
       (.I0(\ram_out_reg[6] [1]),
        .I1(multOp__0_carry__1_i_6_0[5]),
        .I2(Q[0]),
        .I3(multOp__0_carry__0_0),
        .I4(\rom_out_reg[1]_0 ),
        .O(\ram_out_reg[7] [1]));
  LUT6 #(
    .INIT(64'h6A55AA6AAA6AAA6A)) 
    multOp__0_carry__0_i_8
       (.I0(\ram_out_reg[6] [0]),
        .I1(multOp__0_carry__1_i_6_0[0]),
        .I2(Q[3]),
        .I3(multOp__0_carry__0),
        .I4(Q[2]),
        .I5(multOp__0_carry__1_i_6_0[1]),
        .O(\ram_out_reg[7] [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__0_i_9
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[5]),
        .I2(multOp__0_carry__1_i_6_0[3]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[4]),
        .I5(Q[2]),
        .O(multOp__0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hF8A0C00080000000)) 
    multOp__0_carry__1_i_1
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[5]),
        .I2(multOp__0_carry__1_i_6_0[6]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[7]),
        .I5(Q[2]),
        .O(\rom_out_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__1_i_10
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[5]),
        .I2(multOp__0_carry__1_i_6_0[6]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[4]),
        .I5(Q[1]),
        .O(multOp__0_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h80000000A888A000)) 
    multOp__0_carry__1_i_2
       (.I0(multOp__0_carry__1_i_7_n_0),
        .I1(Q[1]),
        .I2(multOp__0_carry__1_i_6_0[4]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[6]),
        .I5(multOp__0_carry__1),
        .O(\rom_out_reg[1]_1 [0]));
  LUT6 #(
    .INIT(64'h1777880080800000)) 
    multOp__0_carry__1_i_4
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[6]),
        .I2(multOp__0_carry__1_i_6_0[5]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(multOp__0_carry__1_i_6_0[7]),
        .O(\rom_out_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    multOp__0_carry__1_i_5
       (.I0(\rom_out_reg[1]_1 [0]),
        .I1(Q[2]),
        .I2(multOp__0_carry__1_i_6_0[7]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[6]),
        .I5(multOp__0_carry__1_i_9_n_0),
        .O(\rom_out_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    multOp__0_carry__1_i_6
       (.I0(multOp__0_carry__1_0),
        .I1(\rom_out_reg[1]_2 ),
        .I2(Q[0]),
        .I3(multOp__0_carry__1_i_6_0[7]),
        .I4(multOp__0_carry__1_i_7_n_0),
        .I5(multOp__0_carry__1_i_10_n_0),
        .O(\rom_out_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__1_i_7
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[7]),
        .I2(multOp__0_carry__1_i_6_0[6]),
        .I3(Q[2]),
        .I4(multOp__0_carry__1_i_6_0[5]),
        .I5(Q[3]),
        .O(multOp__0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__1_i_9
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[6]),
        .I2(multOp__0_carry__1_i_6_0[5]),
        .I3(Q[1]),
        .I4(multOp__0_carry__1_i_6_0[7]),
        .I5(Q[3]),
        .O(multOp__0_carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry_i_1
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[2]),
        .I2(Q[2]),
        .I3(multOp__0_carry__1_i_6_0[1]),
        .I4(Q[3]),
        .I5(multOp__0_carry__1_i_6_0[0]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__0_carry_i_2
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[1]),
        .I2(Q[2]),
        .I3(multOp__0_carry__1_i_6_0[0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h6AC0653F953F9AC0)) 
    multOp__0_carry_i_4
       (.I0(Q[3]),
        .I1(multOp__0_carry__1_i_6_0[2]),
        .I2(Q[1]),
        .I3(multOp__0_carry__1_i_6_0[0]),
        .I4(multOp__0_carry_i_8_n_0),
        .I5(multOp__0_carry),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__0_carry_i_6
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6_0[1]),
        .I2(Q[1]),
        .I3(multOp__0_carry__1_i_6_0[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h7)) 
    multOp__0_carry_i_8
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[1]),
        .O(multOp__0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \result[8]_i_2 
       (.I0(CO),
        .I1(mac_init),
        .O(mac_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rom_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rom_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rom_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rom_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
