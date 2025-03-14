// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 25 22:37:34 2024
// Host        : DESKTOP-7A5ODGC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/gamin/VivadoWorkspace/FIR_filter/FIR_filter.sim/sim_1/impl/timing/xsim/FIR_filter_tb_time_impl.v
// Design      : FIR_filter_unit
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Control_Unit
   (valid_out_OBUF,
    Dout,
    valid_out_temp_reg_0,
    Q,
    D,
    CLK,
    rst_IBUF,
    valid_in_IBUF);
  output valid_out_OBUF;
  output Dout;
  output [0:0]valid_out_temp_reg_0;
  output [2:0]Q;
  output [3:0]D;
  input CLK;
  input rst_IBUF;
  input valid_in_IBUF;

  wire CLK;
  wire [3:0]D;
  wire Dout;
  wire [2:0]Q;
  wire [2:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[2]_i_2_n_0 ;
  wire mac_init_temp;
  wire mac_start;
  wire mac_start_i_1_n_0;
  wire rst_IBUF;
  wire valid_in_IBUF;
  wire valid_out_OBUF;
  wire valid_out_temp1;
  wire valid_out_temp_i_1_n_0;
  wire [0:0]valid_out_temp_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\counter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(mac_start),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_2 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(\counter[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\counter[2]_i_2_n_0 ),
        .Q(counter[2]));
  depth_reg depth
       (.CLK(CLK),
        .\DataInternal_reg[0]_0 (valid_out_temp_reg_0),
        .rst_IBUF(rst_IBUF),
        .valid_out_OBUF(valid_out_OBUF));
  depth_reg__parameterized1 depth1
       (.CLK(CLK),
        .Dout(Dout),
        .mac_init_temp(mac_init_temp),
        .rst_IBUF(rst_IBUF));
  DFF dff0
       (.CLK(CLK),
        .D(D),
        .\Dout_reg[2]_0 (counter),
        .Q(Q),
        .rst_IBUF(rst_IBUF));
  LUT4 #(
    .INIT(16'h0002)) 
    mac_init_temp_i_1
       (.I0(mac_start),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .O(valid_out_temp1));
  FDPE #(
    .INIT(1'b0)) 
    mac_init_temp_reg
       (.C(CLK),
        .CE(\counter[2]_i_1_n_0 ),
        .D(valid_out_temp1),
        .PRE(rst_IBUF),
        .Q(mac_init_temp));
  LUT5 #(
    .INIT(32'hCCCCCCCE)) 
    mac_start_i_1
       (.I0(mac_start),
        .I1(valid_in_IBUF),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .O(mac_start_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mac_start_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(mac_start_i_1_n_0),
        .Q(mac_start));
  LUT6 #(
    .INIT(64'hFFFF000300000002)) 
    valid_out_temp_i_1
       (.I0(mac_start),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .I4(rst_IBUF),
        .I5(valid_out_temp_reg_0),
        .O(valid_out_temp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    valid_out_temp_reg
       (.C(CLK),
        .CE(1'b1),
        .D(valid_out_temp_i_1_n_0),
        .Q(valid_out_temp_reg_0),
        .R(1'b0));
endmodule

module DFF
   (Q,
    D,
    \Dout_reg[2]_0 ,
    CLK,
    rst_IBUF);
  output [2:0]Q;
  output [3:0]D;
  input [2:0]\Dout_reg[2]_0 ;
  input CLK;
  input rst_IBUF;

  wire CLK;
  wire [3:0]D;
  wire [2:0]\Dout_reg[2]_0 ;
  wire [2:0]Q;
  wire rst_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    \Dout_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\Dout_reg[2]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Dout_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\Dout_reg[2]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Dout_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\Dout_reg[2]_0 [2]),
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

(* ECO_CHECKSUM = "76574f8b" *) (* data_width = "8" *) 
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

  wire Dout;
  wire MAC_Unit_n_0;
  wire RAM_memory_n_0;
  wire RAM_memory_n_10;
  wire RAM_memory_n_11;
  wire RAM_memory_n_12;
  wire RAM_memory_n_13;
  wire RAM_memory_n_14;
  wire RAM_memory_n_15;
  wire RAM_memory_n_16;
  wire RAM_memory_n_17;
  wire RAM_memory_n_9;
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
  wire [0:0]p_0_out;
  wire p_1_in;
  wire [7:0]ram_out;
  wire [3:0]rdata;
  wire [2:0]rom_addr;
  wire [3:0]rom_out;
  wire rst;
  wire rst_IBUF;
  wire valid_in;
  wire valid_in_IBUF;
  wire valid_out;
  wire valid_out_OBUF;
  wire [7:0]x;
  wire [7:0]x_IBUF;
  wire [23:0]y;
  wire [23:0]y_OBUF;

initial begin
 $sdf_annotate("FIR_filter_tb_time_impl.sdf",,,,"tool_control");
end
  Control_Unit CU
       (.CLK(clk_IBUF_BUFG),
        .D(rdata),
        .Dout(Dout),
        .Q(rom_addr),
        .rst_IBUF(rst_IBUF),
        .valid_in_IBUF(valid_in_IBUF),
        .valid_out_OBUF(valid_out_OBUF),
        .valid_out_temp_reg_0(p_0_out));
  MAC MAC_Unit
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .CO(MAC_Unit_n_0),
        .DI({ROM_memory_n_7,ROM_memory_n_8,RAM_memory_n_17}),
        .Dout(Dout),
        .E(p_1_in),
        .Q(y_OBUF),
        .S({ROM_memory_n_14,RAM_memory_n_15,ROM_memory_n_15,RAM_memory_n_16}),
        .\result[4]_i_9_0 ({ROM_memory_n_0,RAM_memory_n_0,ROM_memory_n_1,ROM_memory_n_2}),
        .\result[4]_i_9_1 ({ROM_memory_n_16,ROM_memory_n_17,ROM_memory_n_18,ROM_memory_n_19}),
        .\result[8]_i_9_0 ({ROM_memory_n_10,ROM_memory_n_11,RAM_memory_n_12}),
        .\result[8]_i_9_1 ({ROM_memory_n_20,ROM_memory_n_21,ROM_memory_n_22}),
        .\result_reg[11]_0 (ROM_memory_n_13));
  RAM RAM_memory
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(x_IBUF),
        .DI(RAM_memory_n_17),
        .E(p_1_in),
        .Q(ram_out),
        .S({RAM_memory_n_15,RAM_memory_n_16}),
        .multOp__0_carry__0(ROM_memory_n_9),
        .multOp__0_carry__1(ROM_memory_n_12),
        .multOp__0_carry__1_i_6(rom_out),
        .\ram_out_reg[0]_0 (rom_addr),
        .\ram_out_reg[2]_0 (RAM_memory_n_9),
        .\ram_out_reg[2]_1 (RAM_memory_n_10),
        .\ram_out_reg[3]_0 (RAM_memory_n_11),
        .\ram_out_reg[4]_0 (RAM_memory_n_13),
        .\ram_out_reg[5]_0 (RAM_memory_n_0),
        .\ram_out_reg[5]_1 (RAM_memory_n_14),
        .\ram_out_reg[7]_0 (RAM_memory_n_12),
        .\ram_reg[0][7]_0 (p_0_out));
  ROM ROM_memory
       (.CLK(clk_IBUF_BUFG),
        .CO(MAC_Unit_n_0),
        .D(rdata),
        .DI({ROM_memory_n_7,ROM_memory_n_8}),
        .Dout(Dout),
        .Dout_reg(ROM_memory_n_13),
        .Q(rom_out),
        .S({ROM_memory_n_14,ROM_memory_n_15}),
        .multOp__0_carry(RAM_memory_n_11),
        .multOp__0_carry__0(RAM_memory_n_10),
        .multOp__0_carry__0_0(RAM_memory_n_9),
        .multOp__0_carry__0_1(RAM_memory_n_0),
        .multOp__0_carry__1(RAM_memory_n_14),
        .multOp__0_carry__1_0(RAM_memory_n_13),
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
  OBUF valid_out_OBUF_inst
       (.I(valid_out_OBUF),
        .O(valid_out));
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
   (CO,
    E,
    Q,
    CLK,
    AR,
    DI,
    S,
    \result[4]_i_9_0 ,
    \result[4]_i_9_1 ,
    \result[8]_i_9_0 ,
    \result[8]_i_9_1 ,
    Dout,
    \result_reg[11]_0 );
  output [0:0]CO;
  output [0:0]E;
  output [23:0]Q;
  input CLK;
  input [0:0]AR;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\result[4]_i_9_0 ;
  input [3:0]\result[4]_i_9_1 ;
  input [2:0]\result[8]_i_9_0 ;
  input [2:0]\result[8]_i_9_1 ;
  input Dout;
  input [0:0]\result_reg[11]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [2:0]DI;
  wire Dout;
  wire [0:0]E;
  wire [23:0]Q;
  wire [3:0]S;
  wire multOp__0_carry__0_n_0;
  wire multOp__0_carry__0_n_4;
  wire multOp__0_carry__0_n_5;
  wire multOp__0_carry__0_n_6;
  wire multOp__0_carry__0_n_7;
  wire multOp__0_carry__1_n_5;
  wire multOp__0_carry__1_n_6;
  wire multOp__0_carry__1_n_7;
  wire multOp__0_carry_n_0;
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
  wire [23:0]result_reg;
  wire \result_reg[0]_i_1_n_0 ;
  wire \result_reg[0]_i_1_n_4 ;
  wire \result_reg[0]_i_1_n_5 ;
  wire \result_reg[0]_i_1_n_6 ;
  wire \result_reg[0]_i_1_n_7 ;
  wire [0:0]\result_reg[11]_0 ;
  wire \result_reg[12]_i_1_n_0 ;
  wire \result_reg[12]_i_1_n_4 ;
  wire \result_reg[12]_i_1_n_5 ;
  wire \result_reg[12]_i_1_n_6 ;
  wire \result_reg[12]_i_1_n_7 ;
  wire \result_reg[16]_i_1_n_0 ;
  wire \result_reg[16]_i_1_n_4 ;
  wire \result_reg[16]_i_1_n_5 ;
  wire \result_reg[16]_i_1_n_6 ;
  wire \result_reg[16]_i_1_n_7 ;
  wire \result_reg[20]_i_1_n_4 ;
  wire \result_reg[20]_i_1_n_5 ;
  wire \result_reg[20]_i_1_n_6 ;
  wire \result_reg[20]_i_1_n_7 ;
  wire \result_reg[4]_i_1_n_0 ;
  wire \result_reg[4]_i_1_n_4 ;
  wire \result_reg[4]_i_1_n_5 ;
  wire \result_reg[4]_i_1_n_6 ;
  wire \result_reg[4]_i_1_n_7 ;
  wire \result_reg[8]_i_1_n_0 ;
  wire \result_reg[8]_i_1_n_4 ;
  wire \result_reg[8]_i_1_n_5 ;
  wire \result_reg[8]_i_1_n_6 ;
  wire \result_reg[8]_i_1_n_7 ;
  wire [2:0]NLW_multOp__0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_multOp__0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_multOp__0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_multOp__0_carry__1_O_UNCONNECTED;
  wire [2:0]\NLW_result_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_result_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[8]_i_1_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fir_out_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(result_reg[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 multOp__0_carry
       (.CI(1'b0),
        .CO({multOp__0_carry_n_0,NLW_multOp__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O({multOp__0_carry_n_4,multOp__0_carry_n_5,multOp__0_carry_n_6,multOp__0_carry_n_7}),
        .S(S));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 multOp__0_carry__0
       (.CI(multOp__0_carry_n_0),
        .CO({multOp__0_carry__0_n_0,NLW_multOp__0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result[4]_i_9_0 ),
        .O({multOp__0_carry__0_n_4,multOp__0_carry__0_n_5,multOp__0_carry__0_n_6,multOp__0_carry__0_n_7}),
        .S(\result[4]_i_9_1 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 multOp__0_carry__1
       (.CI(multOp__0_carry__0_n_0),
        .CO({CO,NLW_multOp__0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\result[8]_i_9_0 }),
        .O({NLW_multOp__0_carry__1_O_UNCONNECTED[3],multOp__0_carry__1_n_5,multOp__0_carry__1_n_6,multOp__0_carry__1_n_7}),
        .S({1'b1,\result[8]_i_9_1 }));
  LUT1 #(
    .INIT(2'h1)) 
    \ram_out[7]_i_1 
       (.I0(AR),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \result[0]_i_2 
       (.I0(multOp__0_carry_n_4),
        .I1(Dout),
        .O(\result[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[0]_i_3 
       (.I0(multOp__0_carry_n_5),
        .I1(Dout),
        .O(\result[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[0]_i_4 
       (.I0(multOp__0_carry_n_6),
        .I1(Dout),
        .O(\result[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[0]_i_5 
       (.I0(multOp__0_carry_n_7),
        .I1(Dout),
        .O(\result[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[0]_i_6 
       (.I0(result_reg[3]),
        .I1(Dout),
        .I2(multOp__0_carry_n_4),
        .O(\result[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[0]_i_7 
       (.I0(result_reg[2]),
        .I1(Dout),
        .I2(multOp__0_carry_n_5),
        .O(\result[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[0]_i_8 
       (.I0(result_reg[1]),
        .I1(Dout),
        .I2(multOp__0_carry_n_6),
        .O(\result[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[0]_i_9 
       (.I0(result_reg[0]),
        .I1(Dout),
        .I2(multOp__0_carry_n_7),
        .O(\result[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[12]_i_2 
       (.I0(result_reg[15]),
        .I1(Dout),
        .O(\result[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[12]_i_3 
       (.I0(result_reg[14]),
        .I1(Dout),
        .O(\result[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[12]_i_4 
       (.I0(result_reg[13]),
        .I1(Dout),
        .O(\result[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[12]_i_5 
       (.I0(result_reg[12]),
        .I1(Dout),
        .O(\result[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[16]_i_2 
       (.I0(result_reg[19]),
        .I1(Dout),
        .O(\result[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[16]_i_3 
       (.I0(result_reg[18]),
        .I1(Dout),
        .O(\result[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[16]_i_4 
       (.I0(result_reg[17]),
        .I1(Dout),
        .O(\result[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[16]_i_5 
       (.I0(result_reg[16]),
        .I1(Dout),
        .O(\result[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[20]_i_2 
       (.I0(result_reg[23]),
        .I1(Dout),
        .O(\result[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[20]_i_3 
       (.I0(result_reg[22]),
        .I1(Dout),
        .O(\result[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[20]_i_4 
       (.I0(result_reg[21]),
        .I1(Dout),
        .O(\result[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[20]_i_5 
       (.I0(result_reg[20]),
        .I1(Dout),
        .O(\result[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[4]_i_2 
       (.I0(multOp__0_carry__0_n_4),
        .I1(Dout),
        .O(\result[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[4]_i_3 
       (.I0(multOp__0_carry__0_n_5),
        .I1(Dout),
        .O(\result[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[4]_i_4 
       (.I0(multOp__0_carry__0_n_6),
        .I1(Dout),
        .O(\result[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[4]_i_5 
       (.I0(multOp__0_carry__0_n_7),
        .I1(Dout),
        .O(\result[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[4]_i_6 
       (.I0(result_reg[7]),
        .I1(Dout),
        .I2(multOp__0_carry__0_n_4),
        .O(\result[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[4]_i_7 
       (.I0(result_reg[6]),
        .I1(Dout),
        .I2(multOp__0_carry__0_n_5),
        .O(\result[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[4]_i_8 
       (.I0(result_reg[5]),
        .I1(Dout),
        .I2(multOp__0_carry__0_n_6),
        .O(\result[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[4]_i_9 
       (.I0(result_reg[4]),
        .I1(Dout),
        .I2(multOp__0_carry__0_n_7),
        .O(\result[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[8]_i_3 
       (.I0(multOp__0_carry__1_n_5),
        .I1(Dout),
        .O(\result[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[8]_i_4 
       (.I0(multOp__0_carry__1_n_6),
        .I1(Dout),
        .O(\result[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[8]_i_5 
       (.I0(multOp__0_carry__1_n_7),
        .I1(Dout),
        .O(\result[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[8]_i_6 
       (.I0(result_reg[11]),
        .I1(Dout),
        .I2(CO),
        .O(\result[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[8]_i_7 
       (.I0(result_reg[10]),
        .I1(Dout),
        .I2(multOp__0_carry__1_n_5),
        .O(\result[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[8]_i_8 
       (.I0(result_reg[9]),
        .I1(Dout),
        .I2(multOp__0_carry__1_n_6),
        .O(\result[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \result[8]_i_9 
       (.I0(result_reg[8]),
        .I1(Dout),
        .I2(multOp__0_carry__1_n_7),
        .O(\result[8]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[0]_i_1_n_7 ),
        .Q(result_reg[0]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\result_reg[0]_i_1_n_0 ,\NLW_result_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
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
        .Q(result_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[8]_i_1_n_4 ),
        .Q(result_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[12]_i_1_n_7 ),
        .Q(result_reg[12]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[12]_i_1 
       (.CI(\result_reg[8]_i_1_n_0 ),
        .CO({\result_reg[12]_i_1_n_0 ,\NLW_result_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
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
        .Q(result_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[12]_i_1_n_5 ),
        .Q(result_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[12]_i_1_n_4 ),
        .Q(result_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[16]_i_1_n_7 ),
        .Q(result_reg[16]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[16]_i_1 
       (.CI(\result_reg[12]_i_1_n_0 ),
        .CO({\result_reg[16]_i_1_n_0 ,\NLW_result_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
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
        .Q(result_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[16]_i_1_n_5 ),
        .Q(result_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[16]_i_1_n_4 ),
        .Q(result_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[0]_i_1_n_6 ),
        .Q(result_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[20]_i_1_n_7 ),
        .Q(result_reg[20]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[20]_i_1 
       (.CI(\result_reg[16]_i_1_n_0 ),
        .CO(\NLW_result_reg[20]_i_1_CO_UNCONNECTED [3:0]),
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
        .Q(result_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[20]_i_1_n_5 ),
        .Q(result_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[20]_i_1_n_4 ),
        .Q(result_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[0]_i_1_n_5 ),
        .Q(result_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[0]_i_1_n_4 ),
        .Q(result_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[4]_i_1_n_7 ),
        .Q(result_reg[4]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[4]_i_1 
       (.CI(\result_reg[0]_i_1_n_0 ),
        .CO({\result_reg[4]_i_1_n_0 ,\NLW_result_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
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
        .Q(result_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[4]_i_1_n_5 ),
        .Q(result_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[4]_i_1_n_4 ),
        .Q(result_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\result_reg[8]_i_1_n_7 ),
        .Q(result_reg[8]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \result_reg[8]_i_1 
       (.CI(\result_reg[4]_i_1_n_0 ),
        .CO({\result_reg[8]_i_1_n_0 ,\NLW_result_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
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
        .Q(result_reg[9]));
endmodule

module RAM
   (\ram_out_reg[5]_0 ,
    Q,
    \ram_out_reg[2]_0 ,
    \ram_out_reg[2]_1 ,
    \ram_out_reg[3]_0 ,
    \ram_out_reg[7]_0 ,
    \ram_out_reg[4]_0 ,
    \ram_out_reg[5]_1 ,
    S,
    DI,
    multOp__0_carry__1_i_6,
    multOp__0_carry__0,
    multOp__0_carry__1,
    \ram_reg[0][7]_0 ,
    D,
    CLK,
    AR,
    E,
    \ram_out_reg[0]_0 );
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
  input [3:0]multOp__0_carry__1_i_6;
  input multOp__0_carry__0;
  input multOp__0_carry__1;
  input [0:0]\ram_reg[0][7]_0 ;
  input [7:0]D;
  input CLK;
  input [0:0]AR;
  input [0:0]E;
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
  wire \ram_out[7]_i_3_n_0 ;
  wire \ram_out[7]_i_4_n_0 ;
  wire [2:0]\ram_out_reg[0]_0 ;
  wire \ram_out_reg[2]_0 ;
  wire \ram_out_reg[2]_1 ;
  wire \ram_out_reg[3]_0 ;
  wire \ram_out_reg[4]_0 ;
  wire [0:0]\ram_out_reg[5]_0 ;
  wire \ram_out_reg[5]_1 ;
  wire [0:0]\ram_out_reg[7]_0 ;
  wire [7:0]\ram_reg[0] ;
  wire [0:0]\ram_reg[0][7]_0 ;
  wire [7:0]\ram_reg[1] ;
  wire [7:0]\ram_reg[2] ;
  wire [7:0]\ram_reg[3] ;
  wire [7:0]\ram_reg[4] ;
  wire [7:0]\ram_reg[5] ;
  wire [7:0]\ram_reg[6] ;
  wire [7:0]\ram_reg[7] ;

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
        .I4(\ram_reg[0][7]_0 ),
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
        .I4(\ram_reg[0][7]_0 ),
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
        .I4(\ram_reg[0][7]_0 ),
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
        .I4(\ram_reg[0][7]_0 ),
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
        .I4(\ram_reg[0][7]_0 ),
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
        .I4(\ram_reg[0][7]_0 ),
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
        .I4(\ram_reg[0][7]_0 ),
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
    \ram_out[7]_i_2 
       (.I0(D[7]),
        .I1(\ram_out[7]_i_3_n_0 ),
        .I2(\ram_out_reg[0]_0 [2]),
        .I3(\ram_out[7]_i_4_n_0 ),
        .I4(\ram_reg[0][7]_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[7]_i_3 
       (.I0(\ram_reg[7] [7]),
        .I1(\ram_reg[6] [7]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[5] [7]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[4] [7]),
        .O(\ram_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[7]_i_4 
       (.I0(\ram_reg[3] [7]),
        .I1(\ram_reg[2] [7]),
        .I2(\ram_out_reg[0]_0 [1]),
        .I3(\ram_reg[1] [7]),
        .I4(\ram_out_reg[0]_0 [0]),
        .I5(\ram_reg[0] [7]),
        .O(\ram_out[7]_i_4_n_0 ));
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
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(\ram_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][1] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(\ram_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][2] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(\ram_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][3] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(D[3]),
        .Q(\ram_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][4] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(D[4]),
        .Q(\ram_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][5] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(D[5]),
        .Q(\ram_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][6] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(D[6]),
        .Q(\ram_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][7] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(D[7]),
        .Q(\ram_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][0] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[0] [0]),
        .Q(\ram_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][1] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[0] [1]),
        .Q(\ram_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][2] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[0] [2]),
        .Q(\ram_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][3] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[0] [3]),
        .Q(\ram_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][4] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[0] [4]),
        .Q(\ram_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][5] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[0] [5]),
        .Q(\ram_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][6] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[0] [6]),
        .Q(\ram_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][7] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[0] [7]),
        .Q(\ram_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][0] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[1] [0]),
        .Q(\ram_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][1] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[1] [1]),
        .Q(\ram_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][2] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[1] [2]),
        .Q(\ram_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][3] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[1] [3]),
        .Q(\ram_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][4] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[1] [4]),
        .Q(\ram_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][5] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[1] [5]),
        .Q(\ram_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][6] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[1] [6]),
        .Q(\ram_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][7] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[1] [7]),
        .Q(\ram_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][0] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[2] [0]),
        .Q(\ram_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][1] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[2] [1]),
        .Q(\ram_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][2] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[2] [2]),
        .Q(\ram_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][3] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[2] [3]),
        .Q(\ram_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][4] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[2] [4]),
        .Q(\ram_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][5] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[2] [5]),
        .Q(\ram_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][6] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[2] [6]),
        .Q(\ram_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][7] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[2] [7]),
        .Q(\ram_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][0] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[3] [0]),
        .Q(\ram_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][1] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[3] [1]),
        .Q(\ram_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][2] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[3] [2]),
        .Q(\ram_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][3] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[3] [3]),
        .Q(\ram_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][4] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[3] [4]),
        .Q(\ram_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][5] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[3] [5]),
        .Q(\ram_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][6] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[3] [6]),
        .Q(\ram_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][7] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[3] [7]),
        .Q(\ram_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][0] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[4] [0]),
        .Q(\ram_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][1] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[4] [1]),
        .Q(\ram_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][2] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[4] [2]),
        .Q(\ram_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][3] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[4] [3]),
        .Q(\ram_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][4] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[4] [4]),
        .Q(\ram_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][5] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[4] [5]),
        .Q(\ram_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][6] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[4] [6]),
        .Q(\ram_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][7] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[4] [7]),
        .Q(\ram_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][0] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[5] [0]),
        .Q(\ram_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][1] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[5] [1]),
        .Q(\ram_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][2] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[5] [2]),
        .Q(\ram_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][3] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[5] [3]),
        .Q(\ram_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][4] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[5] [4]),
        .Q(\ram_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][5] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[5] [5]),
        .Q(\ram_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][6] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[5] [6]),
        .Q(\ram_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][7] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[5] [7]),
        .Q(\ram_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][0] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[6] [0]),
        .Q(\ram_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][1] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[6] [1]),
        .Q(\ram_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][2] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[6] [2]),
        .Q(\ram_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][3] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[6] [3]),
        .Q(\ram_reg[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][4] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[6] [4]),
        .Q(\ram_reg[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][5] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[6] [5]),
        .Q(\ram_reg[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][6] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[6] [6]),
        .Q(\ram_reg[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][7] 
       (.C(CLK),
        .CE(\ram_reg[0][7]_0 ),
        .CLR(AR),
        .D(\ram_reg[6] [7]),
        .Q(\ram_reg[7] [7]));
endmodule

module ROM
   (\ram_out_reg[6] ,
    Q,
    DI,
    \rom_out_reg[1]_0 ,
    \rom_out_reg[1]_1 ,
    \rom_out_reg[1]_2 ,
    Dout_reg,
    S,
    \ram_out_reg[7] ,
    \rom_out_reg[2]_0 ,
    multOp__0_carry__1_i_6_0,
    multOp__0_carry__1,
    CO,
    Dout,
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
  output [0:0]Dout_reg;
  output [1:0]S;
  output [3:0]\ram_out_reg[7] ;
  output [2:0]\rom_out_reg[2]_0 ;
  input [7:0]multOp__0_carry__1_i_6_0;
  input multOp__0_carry__1;
  input [0:0]CO;
  input Dout;
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
  wire Dout;
  wire [0:0]Dout_reg;
  wire [3:0]Q;
  wire [1:0]S;
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
        .I1(Dout),
        .O(Dout_reg));
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

module depth_reg
   (valid_out_OBUF,
    CLK,
    rst_IBUF,
    \DataInternal_reg[0]_0 );
  output valid_out_OBUF;
  input CLK;
  input rst_IBUF;
  input [0:0]\DataInternal_reg[0]_0 ;

  wire CLK;
  wire [0:0]\DataInternal_reg[0]_0 ;
  wire p_0_in;
  wire [8:1]p_0_out;
  wire rst_IBUF;
  wire valid_out_OBUF;

  FDCE #(
    .INIT(1'b0)) 
    \DataInternal_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\DataInternal_reg[0]_0 ),
        .Q(p_0_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DataInternal_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[1]),
        .Q(p_0_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DataInternal_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[2]),
        .Q(p_0_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DataInternal_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[3]),
        .Q(p_0_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \DataInternal_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[4]),
        .Q(p_0_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DataInternal_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[5]),
        .Q(p_0_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DataInternal_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[6]),
        .Q(p_0_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DataInternal_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[7]),
        .Q(p_0_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \DataInternal_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[8]),
        .Q(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    Dout_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in),
        .Q(valid_out_OBUF));
endmodule

(* ORIG_REF_NAME = "depth_reg" *) 
module depth_reg__parameterized1
   (Dout,
    mac_init_temp,
    CLK,
    rst_IBUF);
  output Dout;
  input mac_init_temp;
  input CLK;
  input rst_IBUF;

  wire CLK;
  wire Dout;
  wire mac_init_temp;
  wire rst_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    Dout_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(mac_init_temp),
        .Q(Dout));
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
