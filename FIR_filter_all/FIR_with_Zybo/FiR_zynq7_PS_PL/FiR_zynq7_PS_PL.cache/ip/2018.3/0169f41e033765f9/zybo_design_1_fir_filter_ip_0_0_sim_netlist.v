// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 23 19:14:28 2024
// Host        : DESKTOP-7A5ODGC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zybo_design_1_fir_filter_ip_0_0_sim_netlist.v
// Design      : zybo_design_1_fir_filter_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit
   (SR,
    \count_reg[1]_0 ,
    \count_reg[2]_0 ,
    E,
    D,
    \ram_in_reg[7] ,
    \count_reg[1]_1 ,
    Q,
    result00_out,
    result0,
    \ram_out_reg[7] ,
    \ram_out_reg[0] ,
    \ram_out_reg[0]_0 ,
    \ram_out_reg[1] ,
    \ram_out_reg[1]_0 ,
    \ram_out_reg[2] ,
    \ram_out_reg[2]_0 ,
    \ram_out_reg[3] ,
    \ram_out_reg[3]_0 ,
    \ram_out_reg[4] ,
    \ram_out_reg[4]_0 ,
    \ram_out_reg[5] ,
    \ram_out_reg[5]_0 ,
    \ram_out_reg[6] ,
    \ram_out_reg[6]_0 ,
    \ram_out_reg[7]_0 ,
    \ram_out_reg[7]_1 ,
    s00_axi_aclk);
  output [0:0]SR;
  output [1:0]\count_reg[1]_0 ;
  output \count_reg[2]_0 ;
  output [0:0]E;
  output [19:0]D;
  output [7:0]\ram_in_reg[7] ;
  output [3:0]\count_reg[1]_1 ;
  input [1:0]Q;
  input [19:0]result00_out;
  input [11:0]result0;
  input [7:0]\ram_out_reg[7] ;
  input \ram_out_reg[0] ;
  input \ram_out_reg[0]_0 ;
  input \ram_out_reg[1] ;
  input \ram_out_reg[1]_0 ;
  input \ram_out_reg[2] ;
  input \ram_out_reg[2]_0 ;
  input \ram_out_reg[3] ;
  input \ram_out_reg[3]_0 ;
  input \ram_out_reg[4] ;
  input \ram_out_reg[4]_0 ;
  input \ram_out_reg[5] ;
  input \ram_out_reg[5]_0 ;
  input \ram_out_reg[6] ;
  input \ram_out_reg[6]_0 ;
  input \ram_out_reg[7]_0 ;
  input \ram_out_reg[7]_1 ;
  input s00_axi_aclk;

  wire [19:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \count[2]_i_1__0_n_0 ;
  wire [1:0]\count_reg[1]_0 ;
  wire [3:0]\count_reg[1]_1 ;
  wire \count_reg[2]_0 ;
  wire [7:0]\ram_in_reg[7] ;
  wire \ram_out[7]_i_2_n_0 ;
  wire \ram_out_reg[0] ;
  wire \ram_out_reg[0]_0 ;
  wire \ram_out_reg[1] ;
  wire \ram_out_reg[1]_0 ;
  wire \ram_out_reg[2] ;
  wire \ram_out_reg[2]_0 ;
  wire \ram_out_reg[3] ;
  wire \ram_out_reg[3]_0 ;
  wire \ram_out_reg[4] ;
  wire \ram_out_reg[4]_0 ;
  wire \ram_out_reg[5] ;
  wire \ram_out_reg[5]_0 ;
  wire \ram_out_reg[6] ;
  wire \ram_out_reg[6]_0 ;
  wire [7:0]\ram_out_reg[7] ;
  wire \ram_out_reg[7]_0 ;
  wire \ram_out_reg[7]_1 ;
  wire [11:0]result0;
  wire [19:0]result00_out;
  wire [2:2]rom_addr;
  wire s00_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg[1]_0 [0]),
        .O(\count_reg[1]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(\count_reg[1]_0 [0]),
        .I1(\count_reg[1]_0 [1]),
        .O(\count_reg[1]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__0 
       (.I0(rom_addr),
        .I1(\count_reg[1]_0 [1]),
        .I2(\count_reg[1]_0 [0]),
        .O(\count[2]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(\count_reg[1]_1 [0]),
        .Q(\count_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(\count_reg[1]_1 [1]),
        .Q(\count_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(rom_addr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \ram[0][7]_i_1 
       (.I0(Q[0]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(Q[1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \ram_out[0]_i_1 
       (.I0(\ram_out_reg[7] [0]),
        .I1(Q[0]),
        .I2(\ram_out[7]_i_2_n_0 ),
        .I3(\ram_out_reg[0] ),
        .I4(rom_addr),
        .I5(\ram_out_reg[0]_0 ),
        .O(\ram_in_reg[7] [0]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \ram_out[1]_i_1 
       (.I0(\ram_out_reg[7] [1]),
        .I1(Q[0]),
        .I2(\ram_out[7]_i_2_n_0 ),
        .I3(\ram_out_reg[1] ),
        .I4(rom_addr),
        .I5(\ram_out_reg[1]_0 ),
        .O(\ram_in_reg[7] [1]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \ram_out[2]_i_1 
       (.I0(\ram_out_reg[7] [2]),
        .I1(Q[0]),
        .I2(\ram_out[7]_i_2_n_0 ),
        .I3(\ram_out_reg[2] ),
        .I4(rom_addr),
        .I5(\ram_out_reg[2]_0 ),
        .O(\ram_in_reg[7] [2]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \ram_out[3]_i_1 
       (.I0(\ram_out_reg[7] [3]),
        .I1(Q[0]),
        .I2(\ram_out[7]_i_2_n_0 ),
        .I3(\ram_out_reg[3] ),
        .I4(rom_addr),
        .I5(\ram_out_reg[3]_0 ),
        .O(\ram_in_reg[7] [3]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \ram_out[4]_i_1 
       (.I0(\ram_out_reg[7] [4]),
        .I1(Q[0]),
        .I2(\ram_out[7]_i_2_n_0 ),
        .I3(\ram_out_reg[4] ),
        .I4(rom_addr),
        .I5(\ram_out_reg[4]_0 ),
        .O(\ram_in_reg[7] [4]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \ram_out[5]_i_1 
       (.I0(\ram_out_reg[7] [5]),
        .I1(Q[0]),
        .I2(\ram_out[7]_i_2_n_0 ),
        .I3(\ram_out_reg[5] ),
        .I4(rom_addr),
        .I5(\ram_out_reg[5]_0 ),
        .O(\ram_in_reg[7] [5]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \ram_out[6]_i_1 
       (.I0(\ram_out_reg[7] [6]),
        .I1(Q[0]),
        .I2(\ram_out[7]_i_2_n_0 ),
        .I3(\ram_out_reg[6] ),
        .I4(rom_addr),
        .I5(\ram_out_reg[6]_0 ),
        .O(\ram_in_reg[7] [6]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \ram_out[7]_i_1 
       (.I0(\ram_out_reg[7] [7]),
        .I1(Q[0]),
        .I2(\ram_out[7]_i_2_n_0 ),
        .I3(\ram_out_reg[7]_0 ),
        .I4(rom_addr),
        .I5(\ram_out_reg[7]_1 ),
        .O(\ram_in_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \ram_out[7]_i_2 
       (.I0(\count_reg[1]_0 [0]),
        .I1(\count_reg[1]_0 [1]),
        .I2(rom_addr),
        .O(\ram_out[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \result[0]_i_1 
       (.I0(result00_out[0]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(result0[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \result[10]_i_1 
       (.I0(result00_out[10]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(result0[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \result[11]_i_1 
       (.I0(result00_out[11]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(result0[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \result[15]_i_1 
       (.I0(rom_addr),
        .I1(\count_reg[1]_0 [1]),
        .I2(\count_reg[1]_0 [0]),
        .I3(Q[1]),
        .O(\count_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \result[16]_i_1 
       (.I0(result00_out[12]),
        .I1(rom_addr),
        .I2(\count_reg[1]_0 [1]),
        .I3(\count_reg[1]_0 [0]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \result[17]_i_1 
       (.I0(result00_out[13]),
        .I1(rom_addr),
        .I2(\count_reg[1]_0 [1]),
        .I3(\count_reg[1]_0 [0]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \result[18]_i_1 
       (.I0(result00_out[14]),
        .I1(rom_addr),
        .I2(\count_reg[1]_0 [1]),
        .I3(\count_reg[1]_0 [0]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \result[19]_i_1 
       (.I0(result00_out[15]),
        .I1(rom_addr),
        .I2(\count_reg[1]_0 [1]),
        .I3(\count_reg[1]_0 [0]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \result[1]_i_1 
       (.I0(result00_out[1]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(result0[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \result[20]_i_1 
       (.I0(result00_out[16]),
        .I1(rom_addr),
        .I2(\count_reg[1]_0 [1]),
        .I3(\count_reg[1]_0 [0]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \result[21]_i_1 
       (.I0(result00_out[17]),
        .I1(rom_addr),
        .I2(\count_reg[1]_0 [1]),
        .I3(\count_reg[1]_0 [0]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \result[22]_i_1 
       (.I0(result00_out[18]),
        .I1(rom_addr),
        .I2(\count_reg[1]_0 [1]),
        .I3(\count_reg[1]_0 [0]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \result[23]_i_1 
       (.I0(Q[1]),
        .I1(rom_addr),
        .I2(\count_reg[1]_0 [1]),
        .I3(\count_reg[1]_0 [0]),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \result[23]_i_2 
       (.I0(result00_out[19]),
        .I1(rom_addr),
        .I2(\count_reg[1]_0 [1]),
        .I3(\count_reg[1]_0 [0]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \result[2]_i_1 
       (.I0(result00_out[2]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(result0[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \result[3]_i_1 
       (.I0(result00_out[3]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(result0[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \result[4]_i_1 
       (.I0(result00_out[4]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(result0[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \result[5]_i_1 
       (.I0(result00_out[5]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(result0[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \result[6]_i_1 
       (.I0(result00_out[6]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(result0[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \result[7]_i_1 
       (.I0(result00_out[7]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(result0[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \result[8]_i_1 
       (.I0(result00_out[8]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(result0[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \result[9]_i_1 
       (.I0(result00_out[9]),
        .I1(\count_reg[1]_0 [0]),
        .I2(\count_reg[1]_0 [1]),
        .I3(rom_addr),
        .I4(result0[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \rom_out[2]_i_1 
       (.I0(\count_reg[1]_0 [1]),
        .I1(rom_addr),
        .I2(\count_reg[1]_0 [0]),
        .O(\count_reg[1]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rom_out[3]_i_2 
       (.I0(\count_reg[1]_0 [1]),
        .I1(rom_addr),
        .I2(\count_reg[1]_0 [0]),
        .O(\count_reg[1]_1 [3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_filter_unit
   (D,
    valid_out,
    Q,
    valid_in_counter_reg,
    axi_araddr,
    \axi_rdata_reg[24] ,
    valid_out_counter_reg,
    s00_axi_aclk);
  output [24:0]D;
  output valid_out;
  input [23:0]Q;
  input [24:0]valid_in_counter_reg;
  input [1:0]axi_araddr;
  input \axi_rdata_reg[24] ;
  input [23:0]valid_out_counter_reg;
  input s00_axi_aclk;

  wire [7:0]A;
  wire CU_n_0;
  wire CU_n_10;
  wire CU_n_11;
  wire CU_n_12;
  wire CU_n_13;
  wire CU_n_14;
  wire CU_n_15;
  wire CU_n_16;
  wire CU_n_17;
  wire CU_n_18;
  wire CU_n_19;
  wire CU_n_20;
  wire CU_n_21;
  wire CU_n_22;
  wire CU_n_23;
  wire CU_n_24;
  wire CU_n_25;
  wire CU_n_26;
  wire CU_n_27;
  wire CU_n_28;
  wire CU_n_29;
  wire CU_n_3;
  wire CU_n_30;
  wire CU_n_31;
  wire CU_n_32;
  wire CU_n_35;
  wire CU_n_36;
  wire CU_n_5;
  wire CU_n_6;
  wire CU_n_7;
  wire CU_n_8;
  wire CU_n_9;
  wire [24:0]D;
  wire [23:0]Q;
  wire RAM_memory_n_0;
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
  wire RAM_memory_n_19;
  wire RAM_memory_n_20;
  wire RAM_memory_n_21;
  wire RAM_memory_n_22;
  wire RAM_memory_n_23;
  wire RAM_memory_n_24;
  wire RAM_memory_n_25;
  wire RAM_memory_n_26;
  wire RAM_memory_n_27;
  wire RAM_memory_n_28;
  wire RAM_memory_n_29;
  wire RAM_memory_n_30;
  wire RAM_memory_n_31;
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
  wire ROM_memory_n_7;
  wire ROM_memory_n_8;
  wire ROM_memory_n_9;
  wire [1:0]axi_araddr;
  wire \axi_rdata_reg[24] ;
  wire [7:0]ram_in;
  wire \ram_reg[7]0 ;
  wire [3:2]rdata;
  wire [11:0]result0;
  wire [23:0]result00_out;
  wire [1:0]rom_addr;
  wire rom_en;
  wire [3:0]rom_out;
  wire s00_axi_aclk;
  wire [24:0]valid_in_counter_reg;
  wire valid_out;
  wire [23:0]valid_out_counter_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit CU
       (.D({CU_n_5,CU_n_6,CU_n_7,CU_n_8,CU_n_9,CU_n_10,CU_n_11,CU_n_12,CU_n_13,CU_n_14,CU_n_15,CU_n_16,CU_n_17,CU_n_18,CU_n_19,CU_n_20,CU_n_21,CU_n_22,CU_n_23,CU_n_24}),
        .E(\ram_reg[7]0 ),
        .Q(Q[9:8]),
        .SR(CU_n_0),
        .\count_reg[1]_0 (rom_addr),
        .\count_reg[1]_1 ({rdata,CU_n_35,CU_n_36}),
        .\count_reg[2]_0 (CU_n_3),
        .\ram_in_reg[7] ({CU_n_25,CU_n_26,CU_n_27,CU_n_28,CU_n_29,CU_n_30,CU_n_31,CU_n_32}),
        .\ram_out_reg[0] (RAM_memory_n_30),
        .\ram_out_reg[0]_0 (RAM_memory_n_29),
        .\ram_out_reg[1] (RAM_memory_n_28),
        .\ram_out_reg[1]_0 (RAM_memory_n_27),
        .\ram_out_reg[2] (RAM_memory_n_26),
        .\ram_out_reg[2]_0 (RAM_memory_n_25),
        .\ram_out_reg[3] (RAM_memory_n_24),
        .\ram_out_reg[3]_0 (RAM_memory_n_23),
        .\ram_out_reg[4] (RAM_memory_n_22),
        .\ram_out_reg[4]_0 (RAM_memory_n_21),
        .\ram_out_reg[5] (RAM_memory_n_20),
        .\ram_out_reg[5]_0 (RAM_memory_n_19),
        .\ram_out_reg[6] (RAM_memory_n_18),
        .\ram_out_reg[6]_0 (RAM_memory_n_17),
        .\ram_out_reg[7] (ram_in),
        .\ram_out_reg[7]_0 (RAM_memory_n_16),
        .\ram_out_reg[7]_1 (RAM_memory_n_15),
        .result0(result0),
        .result00_out({result00_out[23:16],result00_out[11:0]}),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC MAC_Unit
       (.D(D),
        .DI({ROM_memory_n_0,ROM_memory_n_1,ROM_memory_n_2}),
        .E(valid_out),
        .Q(Q),
        .S({ROM_memory_n_10,RAM_memory_n_0,RAM_memory_n_1,ROM_memory_n_11}),
        .SR(CU_n_0),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[24] (\axi_rdata_reg[24] ),
        .result0(result0),
        .\result_reg[11]_0 ({RAM_memory_n_14,ROM_memory_n_8,ROM_memory_n_9}),
        .\result_reg[11]_1 ({ROM_memory_n_12,ROM_memory_n_13,ROM_memory_n_14}),
        .\result_reg[15]_0 (CU_n_3),
        .\result_reg[23]_0 ({result00_out[23:16],result00_out[11:0]}),
        .\result_reg[23]_1 ({CU_n_5,CU_n_6,CU_n_7,CU_n_8,CU_n_9,CU_n_10,CU_n_11,CU_n_12,CU_n_13,CU_n_14,CU_n_15,CU_n_16,CU_n_17,CU_n_18,CU_n_19,CU_n_20,CU_n_21,CU_n_22,CU_n_23,CU_n_24}),
        .\result_reg[7]_0 ({ROM_memory_n_18,ROM_memory_n_19,RAM_memory_n_10,RAM_memory_n_11}),
        .\result_reg[7]_1 ({ROM_memory_n_15,ROM_memory_n_16,ROM_memory_n_17,RAM_memory_n_31}),
        .rom_en(rom_en),
        .s00_axi_aclk(s00_axi_aclk),
        .valid_in_counter_reg(valid_in_counter_reg),
        .valid_out_counter_reg(valid_out_counter_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM RAM_memory
       (.D({CU_n_25,CU_n_26,CU_n_27,CU_n_28,CU_n_29,CU_n_30,CU_n_31,CU_n_32}),
        .E(\ram_reg[7]0 ),
        .Q(A),
        .S({RAM_memory_n_0,RAM_memory_n_1}),
        .\ram_out_reg[0]_0 (rom_en),
        .\ram_out_reg[1]_0 (RAM_memory_n_12),
        .\ram_out_reg[4]_0 ({RAM_memory_n_10,RAM_memory_n_11}),
        .\ram_out_reg[6]_0 (RAM_memory_n_13),
        .\ram_out_reg[7]_0 (RAM_memory_n_14),
        .\ram_out_reg[7]_1 (rom_addr),
        .\ram_reg[0][7]_0 (ram_in),
        .\ram_reg[3][0]_0 (RAM_memory_n_29),
        .\ram_reg[3][1]_0 (RAM_memory_n_27),
        .\ram_reg[3][2]_0 (RAM_memory_n_25),
        .\ram_reg[3][3]_0 (RAM_memory_n_23),
        .\ram_reg[3][4]_0 (RAM_memory_n_21),
        .\ram_reg[3][5]_0 (RAM_memory_n_19),
        .\ram_reg[3][6]_0 (RAM_memory_n_17),
        .\ram_reg[3][7]_0 (RAM_memory_n_15),
        .\ram_reg[7][0]_0 (RAM_memory_n_30),
        .\ram_reg[7][0]_1 (Q[9]),
        .\ram_reg[7][1]_0 (RAM_memory_n_28),
        .\ram_reg[7][2]_0 (RAM_memory_n_26),
        .\ram_reg[7][3]_0 (RAM_memory_n_24),
        .\ram_reg[7][4]_0 (RAM_memory_n_22),
        .\ram_reg[7][5]_0 (RAM_memory_n_20),
        .\ram_reg[7][6]_0 (RAM_memory_n_18),
        .\ram_reg[7][7]_0 (RAM_memory_n_16),
        .result0__0_carry__0(ROM_memory_n_7),
        .result0__0_carry__1(rom_out),
        .\rom_out_reg[1] (RAM_memory_n_31),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ROM ROM_memory
       (.D({rdata,CU_n_35,CU_n_36}),
        .DI({ROM_memory_n_0,ROM_memory_n_1,ROM_memory_n_2}),
        .E(rom_en),
        .Q(rom_out),
        .S({ROM_memory_n_10,ROM_memory_n_11}),
        .\ram_out_reg[6] ({ROM_memory_n_18,ROM_memory_n_19}),
        .\ram_out_reg[7] ({ROM_memory_n_15,ROM_memory_n_16,ROM_memory_n_17}),
        .result0__0_carry(RAM_memory_n_12),
        .result0__0_carry__0(RAM_memory_n_10),
        .result0__0_carry__1(A),
        .result0__0_carry__1_0(RAM_memory_n_13),
        .\rom_out_reg[1]_0 (ROM_memory_n_7),
        .\rom_out_reg[1]_1 ({ROM_memory_n_12,ROM_memory_n_13,ROM_memory_n_14}),
        .\rom_out_reg[3]_0 ({ROM_memory_n_8,ROM_memory_n_9}),
        .s00_axi_aclk(s00_axi_aclk));
  FDCE \ram_in_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[9]),
        .D(Q[0]),
        .Q(ram_in[0]));
  FDCE \ram_in_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[9]),
        .D(Q[1]),
        .Q(ram_in[1]));
  FDCE \ram_in_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[9]),
        .D(Q[2]),
        .Q(ram_in[2]));
  FDCE \ram_in_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[9]),
        .D(Q[3]),
        .Q(ram_in[3]));
  FDCE \ram_in_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[9]),
        .D(Q[4]),
        .Q(ram_in[4]));
  FDCE \ram_in_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[9]),
        .D(Q[5]),
        .Q(ram_in[5]));
  FDCE \ram_in_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[9]),
        .D(Q[6]),
        .Q(ram_in[6]));
  FDCE \ram_in_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[9]),
        .D(Q[7]),
        .Q(ram_in[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC
   (result0,
    rom_en,
    D,
    E,
    \result_reg[23]_0 ,
    DI,
    S,
    \result_reg[7]_0 ,
    \result_reg[7]_1 ,
    \result_reg[11]_0 ,
    \result_reg[11]_1 ,
    Q,
    valid_in_counter_reg,
    axi_araddr,
    \axi_rdata_reg[24] ,
    valid_out_counter_reg,
    SR,
    \result_reg[23]_1 ,
    s00_axi_aclk,
    \result_reg[15]_0 );
  output [11:0]result0;
  output rom_en;
  output [24:0]D;
  output [0:0]E;
  output [19:0]\result_reg[23]_0 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\result_reg[7]_0 ;
  input [3:0]\result_reg[7]_1 ;
  input [2:0]\result_reg[11]_0 ;
  input [2:0]\result_reg[11]_1 ;
  input [23:0]Q;
  input [24:0]valid_in_counter_reg;
  input [1:0]axi_araddr;
  input \axi_rdata_reg[24] ;
  input [23:0]valid_out_counter_reg;
  input [0:0]SR;
  input [19:0]\result_reg[23]_1 ;
  input s00_axi_aclk;
  input \result_reg[15]_0 ;

  wire [24:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [23:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [1:0]axi_araddr;
  wire \axi_rdata[24]_i_10_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[24]_i_7_n_0 ;
  wire \axi_rdata[24]_i_8_n_0 ;
  wire \axi_rdata[24]_i_9_n_0 ;
  wire \axi_rdata_reg[24] ;
  wire [2:0]count;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \fir_out_reg[23]_i_2_n_0 ;
  wire \fir_out_reg[23]_i_3_n_0 ;
  wire \fir_out_reg[23]_i_4_n_0 ;
  wire [23:0]result;
  wire [11:0]result0;
  wire [15:12]result00_out;
  wire result0__0_carry__0_n_0;
  wire result0__0_carry__0_n_1;
  wire result0__0_carry__0_n_2;
  wire result0__0_carry__0_n_3;
  wire result0__0_carry__1_n_2;
  wire result0__0_carry__1_n_3;
  wire result0__0_carry_n_0;
  wire result0__0_carry_n_1;
  wire result0__0_carry_n_2;
  wire result0__0_carry_n_3;
  wire \result[11]_i_3_n_0 ;
  wire \result[11]_i_4_n_0 ;
  wire \result[11]_i_5_n_0 ;
  wire \result[11]_i_6_n_0 ;
  wire \result[3]_i_3_n_0 ;
  wire \result[3]_i_4_n_0 ;
  wire \result[3]_i_5_n_0 ;
  wire \result[3]_i_6_n_0 ;
  wire \result[7]_i_3_n_0 ;
  wire \result[7]_i_4_n_0 ;
  wire \result[7]_i_5_n_0 ;
  wire \result[7]_i_6_n_0 ;
  wire [2:0]\result_reg[11]_0 ;
  wire [2:0]\result_reg[11]_1 ;
  wire \result_reg[11]_i_2_n_0 ;
  wire \result_reg[11]_i_2_n_1 ;
  wire \result_reg[11]_i_2_n_2 ;
  wire \result_reg[11]_i_2_n_3 ;
  wire \result_reg[15]_0 ;
  wire \result_reg[15]_i_2_n_0 ;
  wire \result_reg[15]_i_2_n_1 ;
  wire \result_reg[15]_i_2_n_2 ;
  wire \result_reg[15]_i_2_n_3 ;
  wire \result_reg[19]_i_2_n_0 ;
  wire \result_reg[19]_i_2_n_1 ;
  wire \result_reg[19]_i_2_n_2 ;
  wire \result_reg[19]_i_2_n_3 ;
  wire [19:0]\result_reg[23]_0 ;
  wire [19:0]\result_reg[23]_1 ;
  wire \result_reg[23]_i_3_n_1 ;
  wire \result_reg[23]_i_3_n_2 ;
  wire \result_reg[23]_i_3_n_3 ;
  wire \result_reg[3]_i_2_n_0 ;
  wire \result_reg[3]_i_2_n_1 ;
  wire \result_reg[3]_i_2_n_2 ;
  wire \result_reg[3]_i_2_n_3 ;
  wire [3:0]\result_reg[7]_0 ;
  wire [3:0]\result_reg[7]_1 ;
  wire \result_reg[7]_i_2_n_0 ;
  wire \result_reg[7]_i_2_n_1 ;
  wire \result_reg[7]_i_2_n_2 ;
  wire \result_reg[7]_i_2_n_3 ;
  wire rom_en;
  wire s00_axi_aclk;
  wire [24:0]valid_in_counter_reg;
  wire [23:0]valid_out_counter_reg;
  wire [23:0]y;
  wire [2:2]NLW_result0__0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_result0__0_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_result_reg[23]_i_3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(valid_in_counter_reg[0]),
        .I1(y[0]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[0]),
        .I4(axi_araddr[1]),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(valid_in_counter_reg[10]),
        .I1(y[10]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[10]),
        .I4(axi_araddr[1]),
        .I5(Q[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(valid_in_counter_reg[11]),
        .I1(y[11]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[11]),
        .I4(axi_araddr[1]),
        .I5(Q[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(valid_in_counter_reg[12]),
        .I1(y[12]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[12]),
        .I4(axi_araddr[1]),
        .I5(Q[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(valid_in_counter_reg[13]),
        .I1(y[13]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[13]),
        .I4(axi_araddr[1]),
        .I5(Q[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(valid_in_counter_reg[14]),
        .I1(y[14]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[14]),
        .I4(axi_araddr[1]),
        .I5(Q[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(valid_in_counter_reg[15]),
        .I1(y[15]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[15]),
        .I4(axi_araddr[1]),
        .I5(Q[15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(valid_in_counter_reg[16]),
        .I1(y[16]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[16]),
        .I4(axi_araddr[1]),
        .I5(Q[16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(valid_in_counter_reg[17]),
        .I1(y[17]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[17]),
        .I4(axi_araddr[1]),
        .I5(Q[17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(valid_in_counter_reg[18]),
        .I1(y[18]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[18]),
        .I4(axi_araddr[1]),
        .I5(Q[18]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(valid_in_counter_reg[19]),
        .I1(y[19]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[19]),
        .I4(axi_araddr[1]),
        .I5(Q[19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(valid_in_counter_reg[1]),
        .I1(y[1]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[1]),
        .I4(axi_araddr[1]),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(valid_in_counter_reg[20]),
        .I1(y[20]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[20]),
        .I4(axi_araddr[1]),
        .I5(Q[20]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(valid_in_counter_reg[21]),
        .I1(y[21]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[21]),
        .I4(axi_araddr[1]),
        .I5(Q[21]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(valid_in_counter_reg[22]),
        .I1(y[22]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[22]),
        .I4(axi_araddr[1]),
        .I5(Q[22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(valid_in_counter_reg[23]),
        .I1(y[23]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[23]),
        .I4(axi_araddr[1]),
        .I5(Q[23]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \axi_rdata[24]_i_1 
       (.I0(valid_in_counter_reg[24]),
        .I1(axi_araddr[1]),
        .I2(\axi_rdata[24]_i_2_n_0 ),
        .I3(\axi_rdata[24]_i_3_n_0 ),
        .I4(axi_araddr[0]),
        .I5(\axi_rdata_reg[24] ),
        .O(D[24]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_rdata[24]_i_10 
       (.I0(result[22]),
        .I1(result[9]),
        .I2(result[5]),
        .I3(result[3]),
        .O(\axi_rdata[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axi_rdata[24]_i_2 
       (.I0(\axi_rdata[24]_i_5_n_0 ),
        .I1(\axi_rdata[24]_i_6_n_0 ),
        .I2(\axi_rdata[24]_i_7_n_0 ),
        .I3(\axi_rdata[24]_i_8_n_0 ),
        .I4(\axi_rdata[24]_i_9_n_0 ),
        .I5(\axi_rdata[24]_i_10_n_0 ),
        .O(\axi_rdata[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[24]_i_3 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_rdata[24]_i_5 
       (.I0(result[18]),
        .I1(result[16]),
        .I2(result[12]),
        .I3(result[10]),
        .O(\axi_rdata[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_rdata[24]_i_6 
       (.I0(result[11]),
        .I1(result[6]),
        .I2(result[8]),
        .I3(result[4]),
        .O(\axi_rdata[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_rdata[24]_i_7 
       (.I0(result[21]),
        .I1(result[19]),
        .I2(result[17]),
        .I3(result[15]),
        .O(\axi_rdata[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_rdata[24]_i_8 
       (.I0(result[7]),
        .I1(result[1]),
        .I2(result[14]),
        .I3(result[2]),
        .O(\axi_rdata[24]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_rdata[24]_i_9 
       (.I0(result[23]),
        .I1(result[20]),
        .I2(result[13]),
        .I3(result[0]),
        .O(\axi_rdata[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(valid_in_counter_reg[2]),
        .I1(y[2]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[2]),
        .I4(axi_araddr[1]),
        .I5(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(valid_in_counter_reg[3]),
        .I1(y[3]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[3]),
        .I4(axi_araddr[1]),
        .I5(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(valid_in_counter_reg[4]),
        .I1(y[4]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[4]),
        .I4(axi_araddr[1]),
        .I5(Q[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(valid_in_counter_reg[5]),
        .I1(y[5]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[5]),
        .I4(axi_araddr[1]),
        .I5(Q[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(valid_in_counter_reg[6]),
        .I1(y[6]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[6]),
        .I4(axi_araddr[1]),
        .I5(Q[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(valid_in_counter_reg[7]),
        .I1(y[7]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[7]),
        .I4(axi_araddr[1]),
        .I5(Q[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(valid_in_counter_reg[8]),
        .I1(y[8]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[8]),
        .I4(axi_araddr[1]),
        .I5(Q[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(valid_in_counter_reg[9]),
        .I1(y[9]),
        .I2(axi_araddr[0]),
        .I3(valid_out_counter_reg[9]),
        .I4(axi_araddr[1]),
        .I5(Q[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count[0]),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[0] 
       (.CLR(1'b0),
        .D(result[0]),
        .G(E),
        .GE(1'b1),
        .Q(y[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[10] 
       (.CLR(1'b0),
        .D(result[10]),
        .G(E),
        .GE(1'b1),
        .Q(y[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[11] 
       (.CLR(1'b0),
        .D(result[11]),
        .G(E),
        .GE(1'b1),
        .Q(y[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[12] 
       (.CLR(1'b0),
        .D(result[12]),
        .G(E),
        .GE(1'b1),
        .Q(y[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[13] 
       (.CLR(1'b0),
        .D(result[13]),
        .G(E),
        .GE(1'b1),
        .Q(y[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[14] 
       (.CLR(1'b0),
        .D(result[14]),
        .G(E),
        .GE(1'b1),
        .Q(y[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[15] 
       (.CLR(1'b0),
        .D(result[15]),
        .G(E),
        .GE(1'b1),
        .Q(y[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[16] 
       (.CLR(1'b0),
        .D(result[16]),
        .G(E),
        .GE(1'b1),
        .Q(y[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[17] 
       (.CLR(1'b0),
        .D(result[17]),
        .G(E),
        .GE(1'b1),
        .Q(y[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[18] 
       (.CLR(1'b0),
        .D(result[18]),
        .G(E),
        .GE(1'b1),
        .Q(y[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[19] 
       (.CLR(1'b0),
        .D(result[19]),
        .G(E),
        .GE(1'b1),
        .Q(y[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[1] 
       (.CLR(1'b0),
        .D(result[1]),
        .G(E),
        .GE(1'b1),
        .Q(y[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[20] 
       (.CLR(1'b0),
        .D(result[20]),
        .G(E),
        .GE(1'b1),
        .Q(y[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[21] 
       (.CLR(1'b0),
        .D(result[21]),
        .G(E),
        .GE(1'b1),
        .Q(y[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[22] 
       (.CLR(1'b0),
        .D(result[22]),
        .G(E),
        .GE(1'b1),
        .Q(y[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[23] 
       (.CLR(1'b0),
        .D(result[23]),
        .G(E),
        .GE(1'b1),
        .Q(y[23]));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \fir_out_reg[23]_i_1 
       (.I0(\fir_out_reg[23]_i_2_n_0 ),
        .I1(\fir_out_reg[23]_i_3_n_0 ),
        .I2(\fir_out_reg[23]_i_4_n_0 ),
        .I3(count[0]),
        .I4(count[1]),
        .I5(count[2]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \fir_out_reg[23]_i_2 
       (.I0(result[0]),
        .I1(result[13]),
        .I2(result[20]),
        .I3(result[23]),
        .I4(\axi_rdata[24]_i_10_n_0 ),
        .O(\fir_out_reg[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \fir_out_reg[23]_i_3 
       (.I0(result[15]),
        .I1(result[17]),
        .I2(result[19]),
        .I3(result[21]),
        .I4(\axi_rdata[24]_i_8_n_0 ),
        .O(\fir_out_reg[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \fir_out_reg[23]_i_4 
       (.I0(result[4]),
        .I1(result[8]),
        .I2(result[6]),
        .I3(result[11]),
        .I4(\axi_rdata[24]_i_5_n_0 ),
        .O(\fir_out_reg[23]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[2] 
       (.CLR(1'b0),
        .D(result[2]),
        .G(E),
        .GE(1'b1),
        .Q(y[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[3] 
       (.CLR(1'b0),
        .D(result[3]),
        .G(E),
        .GE(1'b1),
        .Q(y[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[4] 
       (.CLR(1'b0),
        .D(result[4]),
        .G(E),
        .GE(1'b1),
        .Q(y[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[5] 
       (.CLR(1'b0),
        .D(result[5]),
        .G(E),
        .GE(1'b1),
        .Q(y[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[6] 
       (.CLR(1'b0),
        .D(result[6]),
        .G(E),
        .GE(1'b1),
        .Q(y[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[7] 
       (.CLR(1'b0),
        .D(result[7]),
        .G(E),
        .GE(1'b1),
        .Q(y[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[8] 
       (.CLR(1'b0),
        .D(result[8]),
        .G(E),
        .GE(1'b1),
        .Q(y[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fir_out_reg[9] 
       (.CLR(1'b0),
        .D(result[9]),
        .G(E),
        .GE(1'b1),
        .Q(y[9]));
  CARRY4 result0__0_carry
       (.CI(1'b0),
        .CO({result0__0_carry_n_0,result0__0_carry_n_1,result0__0_carry_n_2,result0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O(result0[3:0]),
        .S(S));
  CARRY4 result0__0_carry__0
       (.CI(result0__0_carry_n_0),
        .CO({result0__0_carry__0_n_0,result0__0_carry__0_n_1,result0__0_carry__0_n_2,result0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\result_reg[7]_0 ),
        .O(result0[7:4]),
        .S(\result_reg[7]_1 ));
  CARRY4 result0__0_carry__1
       (.CI(result0__0_carry__0_n_0),
        .CO({result0[11],NLW_result0__0_carry__1_CO_UNCONNECTED[2],result0__0_carry__1_n_2,result0__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\result_reg[11]_0 }),
        .O({NLW_result0__0_carry__1_O_UNCONNECTED[3],result0[10:8]}),
        .S({1'b1,\result_reg[11]_1 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result[11]_i_3 
       (.I0(result[11]),
        .I1(result0[11]),
        .O(\result[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[11]_i_4 
       (.I0(result[10]),
        .I1(result0[10]),
        .O(\result[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[11]_i_5 
       (.I0(result[9]),
        .I1(result0[9]),
        .O(\result[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[11]_i_6 
       (.I0(result[8]),
        .I1(result0[8]),
        .O(\result[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_3 
       (.I0(result[3]),
        .I1(result0[3]),
        .O(\result[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_4 
       (.I0(result[2]),
        .I1(result0[2]),
        .O(\result[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_5 
       (.I0(result[1]),
        .I1(result0[1]),
        .O(\result[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_6 
       (.I0(result[0]),
        .I1(result0[0]),
        .O(\result[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_3 
       (.I0(result[7]),
        .I1(result0[7]),
        .O(\result[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_4 
       (.I0(result[6]),
        .I1(result0[6]),
        .O(\result[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_5 
       (.I0(result[5]),
        .I1(result0[5]),
        .O(\result[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_6 
       (.I0(result[4]),
        .I1(result0[4]),
        .O(\result[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [0]),
        .Q(result[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[10] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [10]),
        .Q(result[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[11] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [11]),
        .Q(result[11]),
        .R(1'b0));
  CARRY4 \result_reg[11]_i_2 
       (.CI(\result_reg[7]_i_2_n_0 ),
        .CO({\result_reg[11]_i_2_n_0 ,\result_reg[11]_i_2_n_1 ,\result_reg[11]_i_2_n_2 ,\result_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(result[11:8]),
        .O(\result_reg[23]_0 [11:8]),
        .S({\result[11]_i_3_n_0 ,\result[11]_i_4_n_0 ,\result[11]_i_5_n_0 ,\result[11]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[12] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(result00_out[12]),
        .Q(result[12]),
        .R(\result_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[13] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(result00_out[13]),
        .Q(result[13]),
        .R(\result_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[14] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(result00_out[14]),
        .Q(result[14]),
        .R(\result_reg[15]_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[15] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(result00_out[15]),
        .Q(result[15]),
        .R(\result_reg[15]_0 ));
  CARRY4 \result_reg[15]_i_2 
       (.CI(\result_reg[11]_i_2_n_0 ),
        .CO({\result_reg[15]_i_2_n_0 ,\result_reg[15]_i_2_n_1 ,\result_reg[15]_i_2_n_2 ,\result_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result00_out),
        .S(result[15:12]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[16] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [12]),
        .Q(result[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[17] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [13]),
        .Q(result[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[18] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [14]),
        .Q(result[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[19] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [15]),
        .Q(result[19]),
        .R(SR));
  CARRY4 \result_reg[19]_i_2 
       (.CI(\result_reg[15]_i_2_n_0 ),
        .CO({\result_reg[19]_i_2_n_0 ,\result_reg[19]_i_2_n_1 ,\result_reg[19]_i_2_n_2 ,\result_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\result_reg[23]_0 [15:12]),
        .S(result[19:16]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [1]),
        .Q(result[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[20] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [16]),
        .Q(result[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[21] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [17]),
        .Q(result[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[22] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [18]),
        .Q(result[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[23] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [19]),
        .Q(result[23]),
        .R(SR));
  CARRY4 \result_reg[23]_i_3 
       (.CI(\result_reg[19]_i_2_n_0 ),
        .CO({\NLW_result_reg[23]_i_3_CO_UNCONNECTED [3],\result_reg[23]_i_3_n_1 ,\result_reg[23]_i_3_n_2 ,\result_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\result_reg[23]_0 [19:16]),
        .S(result[23:20]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [2]),
        .Q(result[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [3]),
        .Q(result[3]),
        .R(1'b0));
  CARRY4 \result_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\result_reg[3]_i_2_n_0 ,\result_reg[3]_i_2_n_1 ,\result_reg[3]_i_2_n_2 ,\result_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(result[3:0]),
        .O(\result_reg[23]_0 [3:0]),
        .S({\result[3]_i_3_n_0 ,\result[3]_i_4_n_0 ,\result[3]_i_5_n_0 ,\result[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [4]),
        .Q(result[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [5]),
        .Q(result[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [6]),
        .Q(result[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [7]),
        .Q(result[7]),
        .R(1'b0));
  CARRY4 \result_reg[7]_i_2 
       (.CI(\result_reg[3]_i_2_n_0 ),
        .CO({\result_reg[7]_i_2_n_0 ,\result_reg[7]_i_2_n_1 ,\result_reg[7]_i_2_n_2 ,\result_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(result[7:4]),
        .O(\result_reg[23]_0 [7:4]),
        .S({\result[7]_i_3_n_0 ,\result[7]_i_4_n_0 ,\result[7]_i_5_n_0 ,\result[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[8] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [8]),
        .Q(result[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \result_reg[9] 
       (.C(s00_axi_aclk),
        .CE(rom_en),
        .D(\result_reg[23]_1 [9]),
        .Q(result[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \rom_out[3]_i_1 
       (.I0(Q[9]),
        .O(rom_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM
   (S,
    Q,
    \ram_out_reg[4]_0 ,
    \ram_out_reg[1]_0 ,
    \ram_out_reg[6]_0 ,
    \ram_out_reg[7]_0 ,
    \ram_reg[3][7]_0 ,
    \ram_reg[7][7]_0 ,
    \ram_reg[3][6]_0 ,
    \ram_reg[7][6]_0 ,
    \ram_reg[3][5]_0 ,
    \ram_reg[7][5]_0 ,
    \ram_reg[3][4]_0 ,
    \ram_reg[7][4]_0 ,
    \ram_reg[3][3]_0 ,
    \ram_reg[7][3]_0 ,
    \ram_reg[3][2]_0 ,
    \ram_reg[7][2]_0 ,
    \ram_reg[3][1]_0 ,
    \ram_reg[7][1]_0 ,
    \ram_reg[3][0]_0 ,
    \ram_reg[7][0]_0 ,
    \rom_out_reg[1] ,
    result0__0_carry__1,
    result0__0_carry__0,
    \ram_out_reg[7]_1 ,
    E,
    \ram_reg[0][7]_0 ,
    s00_axi_aclk,
    \ram_reg[7][0]_1 ,
    \ram_out_reg[0]_0 ,
    D);
  output [1:0]S;
  output [7:0]Q;
  output [1:0]\ram_out_reg[4]_0 ;
  output \ram_out_reg[1]_0 ;
  output \ram_out_reg[6]_0 ;
  output [0:0]\ram_out_reg[7]_0 ;
  output \ram_reg[3][7]_0 ;
  output \ram_reg[7][7]_0 ;
  output \ram_reg[3][6]_0 ;
  output \ram_reg[7][6]_0 ;
  output \ram_reg[3][5]_0 ;
  output \ram_reg[7][5]_0 ;
  output \ram_reg[3][4]_0 ;
  output \ram_reg[7][4]_0 ;
  output \ram_reg[3][3]_0 ;
  output \ram_reg[7][3]_0 ;
  output \ram_reg[3][2]_0 ;
  output \ram_reg[7][2]_0 ;
  output \ram_reg[3][1]_0 ;
  output \ram_reg[7][1]_0 ;
  output \ram_reg[3][0]_0 ;
  output \ram_reg[7][0]_0 ;
  output [0:0]\rom_out_reg[1] ;
  input [3:0]result0__0_carry__1;
  input result0__0_carry__0;
  input [1:0]\ram_out_reg[7]_1 ;
  input [0:0]E;
  input [7:0]\ram_reg[0][7]_0 ;
  input s00_axi_aclk;
  input [0:0]\ram_reg[7][0]_1 ;
  input [0:0]\ram_out_reg[0]_0 ;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [1:0]S;
  wire [0:0]\ram_out_reg[0]_0 ;
  wire \ram_out_reg[1]_0 ;
  wire [1:0]\ram_out_reg[4]_0 ;
  wire \ram_out_reg[6]_0 ;
  wire [0:0]\ram_out_reg[7]_0 ;
  wire [1:0]\ram_out_reg[7]_1 ;
  wire [7:0]\ram_reg[0] ;
  wire [7:0]\ram_reg[0][7]_0 ;
  wire [7:0]\ram_reg[1] ;
  wire [7:0]\ram_reg[2] ;
  wire [7:0]\ram_reg[3] ;
  wire \ram_reg[3][0]_0 ;
  wire \ram_reg[3][1]_0 ;
  wire \ram_reg[3][2]_0 ;
  wire \ram_reg[3][3]_0 ;
  wire \ram_reg[3][4]_0 ;
  wire \ram_reg[3][5]_0 ;
  wire \ram_reg[3][6]_0 ;
  wire \ram_reg[3][7]_0 ;
  wire [7:0]\ram_reg[4] ;
  wire [7:0]\ram_reg[5] ;
  wire [7:0]\ram_reg[6] ;
  wire [7:0]\ram_reg[7] ;
  wire \ram_reg[7][0]_0 ;
  wire [0:0]\ram_reg[7][0]_1 ;
  wire \ram_reg[7][1]_0 ;
  wire \ram_reg[7][2]_0 ;
  wire \ram_reg[7][3]_0 ;
  wire \ram_reg[7][4]_0 ;
  wire \ram_reg[7][5]_0 ;
  wire \ram_reg[7][6]_0 ;
  wire \ram_reg[7][7]_0 ;
  wire result0__0_carry__0;
  wire result0__0_carry__0_i_14_n_0;
  wire [3:0]result0__0_carry__1;
  wire [0:0]\rom_out_reg[1] ;
  wire s00_axi_aclk;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[0]_i_2 
       (.I0(\ram_reg[7] [0]),
        .I1(\ram_reg[6] [0]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [0]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [0]),
        .O(\ram_reg[7][0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[0]_i_3 
       (.I0(\ram_reg[3] [0]),
        .I1(\ram_reg[2] [0]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [0]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [0]),
        .O(\ram_reg[3][0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[1]_i_2 
       (.I0(\ram_reg[7] [1]),
        .I1(\ram_reg[6] [1]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [1]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [1]),
        .O(\ram_reg[7][1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[1]_i_3 
       (.I0(\ram_reg[3] [1]),
        .I1(\ram_reg[2] [1]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [1]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [1]),
        .O(\ram_reg[3][1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[2]_i_2 
       (.I0(\ram_reg[7] [2]),
        .I1(\ram_reg[6] [2]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [2]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [2]),
        .O(\ram_reg[7][2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[2]_i_3 
       (.I0(\ram_reg[3] [2]),
        .I1(\ram_reg[2] [2]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [2]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [2]),
        .O(\ram_reg[3][2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[3]_i_2 
       (.I0(\ram_reg[7] [3]),
        .I1(\ram_reg[6] [3]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [3]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [3]),
        .O(\ram_reg[7][3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[3]_i_3 
       (.I0(\ram_reg[3] [3]),
        .I1(\ram_reg[2] [3]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [3]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [3]),
        .O(\ram_reg[3][3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[4]_i_2 
       (.I0(\ram_reg[7] [4]),
        .I1(\ram_reg[6] [4]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [4]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [4]),
        .O(\ram_reg[7][4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[4]_i_3 
       (.I0(\ram_reg[3] [4]),
        .I1(\ram_reg[2] [4]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [4]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [4]),
        .O(\ram_reg[3][4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[5]_i_2 
       (.I0(\ram_reg[7] [5]),
        .I1(\ram_reg[6] [5]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [5]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [5]),
        .O(\ram_reg[7][5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[5]_i_3 
       (.I0(\ram_reg[3] [5]),
        .I1(\ram_reg[2] [5]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [5]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [5]),
        .O(\ram_reg[3][5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[6]_i_2 
       (.I0(\ram_reg[7] [6]),
        .I1(\ram_reg[6] [6]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [6]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [6]),
        .O(\ram_reg[7][6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[6]_i_3 
       (.I0(\ram_reg[3] [6]),
        .I1(\ram_reg[2] [6]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [6]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [6]),
        .O(\ram_reg[3][6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[7]_i_3 
       (.I0(\ram_reg[7] [7]),
        .I1(\ram_reg[6] [7]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [7]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [7]),
        .O(\ram_reg[7][7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[7]_i_4 
       (.I0(\ram_reg[3] [7]),
        .I1(\ram_reg[2] [7]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [7]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [7]),
        .O(\ram_reg[3][7]_0 ));
  FDRE \ram_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ram_out_reg[0]_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \ram_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ram_out_reg[0]_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \ram_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ram_out_reg[0]_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \ram_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ram_out_reg[0]_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \ram_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ram_out_reg[0]_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \ram_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ram_out_reg[0]_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \ram_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ram_out_reg[0]_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \ram_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ram_out_reg[0]_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0][7]_0 [0]),
        .Q(\ram_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0][7]_0 [1]),
        .Q(\ram_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0][7]_0 [2]),
        .Q(\ram_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0][7]_0 [3]),
        .Q(\ram_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0][7]_0 [4]),
        .Q(\ram_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0][7]_0 [5]),
        .Q(\ram_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0][7]_0 [6]),
        .Q(\ram_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0][7]_0 [7]),
        .Q(\ram_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0] [0]),
        .Q(\ram_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0] [1]),
        .Q(\ram_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0] [2]),
        .Q(\ram_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0] [3]),
        .Q(\ram_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0] [4]),
        .Q(\ram_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0] [5]),
        .Q(\ram_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0] [6]),
        .Q(\ram_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[0] [7]),
        .Q(\ram_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[1] [0]),
        .Q(\ram_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[1] [1]),
        .Q(\ram_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[1] [2]),
        .Q(\ram_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[1] [3]),
        .Q(\ram_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[1] [4]),
        .Q(\ram_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[1] [5]),
        .Q(\ram_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[1] [6]),
        .Q(\ram_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[1] [7]),
        .Q(\ram_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[2] [0]),
        .Q(\ram_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[2] [1]),
        .Q(\ram_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[2] [2]),
        .Q(\ram_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[2] [3]),
        .Q(\ram_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[2] [4]),
        .Q(\ram_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[2] [5]),
        .Q(\ram_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[2] [6]),
        .Q(\ram_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[2] [7]),
        .Q(\ram_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[3] [0]),
        .Q(\ram_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[3] [1]),
        .Q(\ram_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[3] [2]),
        .Q(\ram_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[3] [3]),
        .Q(\ram_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[3] [4]),
        .Q(\ram_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[3] [5]),
        .Q(\ram_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[3] [6]),
        .Q(\ram_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[3] [7]),
        .Q(\ram_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[4] [0]),
        .Q(\ram_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[4] [1]),
        .Q(\ram_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[4] [2]),
        .Q(\ram_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[4] [3]),
        .Q(\ram_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[4] [4]),
        .Q(\ram_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[4] [5]),
        .Q(\ram_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[4] [6]),
        .Q(\ram_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[4] [7]),
        .Q(\ram_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[5] [0]),
        .Q(\ram_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[5] [1]),
        .Q(\ram_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[5] [2]),
        .Q(\ram_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[5] [3]),
        .Q(\ram_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[5] [4]),
        .Q(\ram_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[5] [5]),
        .Q(\ram_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[5] [6]),
        .Q(\ram_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[5] [7]),
        .Q(\ram_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[6] [0]),
        .Q(\ram_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[6] [1]),
        .Q(\ram_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[6] [2]),
        .Q(\ram_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[6] [3]),
        .Q(\ram_reg[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[6] [4]),
        .Q(\ram_reg[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[6] [5]),
        .Q(\ram_reg[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[6] [6]),
        .Q(\ram_reg[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\ram_reg[7][0]_1 ),
        .D(\ram_reg[6] [7]),
        .Q(\ram_reg[7] [7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    result0__0_carry__0_i_14
       (.I0(Q[3]),
        .I1(result0__0_carry__1[0]),
        .I2(Q[0]),
        .I3(result0__0_carry__1[1]),
        .I4(Q[1]),
        .I5(result0__0_carry__1[2]),
        .O(result0__0_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'hF880)) 
    result0__0_carry__0_i_3
       (.I0(Q[4]),
        .I1(result0__0_carry__1[0]),
        .I2(result0__0_carry__0),
        .I3(result0__0_carry__0_i_14_n_0),
        .O(\ram_out_reg[4]_0 [1]));
  LUT4 #(
    .INIT(16'h9666)) 
    result0__0_carry__0_i_4
       (.I0(result0__0_carry__0_i_14_n_0),
        .I1(result0__0_carry__0),
        .I2(result0__0_carry__1[0]),
        .I3(Q[4]),
        .O(\ram_out_reg[4]_0 [0]));
  LUT6 #(
    .INIT(64'h6AAAAAAA556A6A6A)) 
    result0__0_carry__0_i_8
       (.I0(\ram_out_reg[4]_0 [0]),
        .I1(result0__0_carry__1[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(result0__0_carry__1[3]),
        .I5(\ram_out_reg[1]_0 ),
        .O(\rom_out_reg[1] ));
  LUT2 #(
    .INIT(4'h8)) 
    result0__0_carry__1_i_1
       (.I0(Q[7]),
        .I1(result0__0_carry__1[3]),
        .O(\ram_out_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    result0__0_carry__1_i_8
       (.I0(Q[6]),
        .I1(result0__0_carry__1[2]),
        .O(\ram_out_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    result0__0_carry_i_5
       (.I0(Q[0]),
        .I1(result0__0_carry__1[2]),
        .I2(Q[1]),
        .I3(result0__0_carry__1[1]),
        .I4(Q[2]),
        .I5(result0__0_carry__1[0]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h7888)) 
    result0__0_carry_i_6
       (.I0(Q[1]),
        .I1(result0__0_carry__1[0]),
        .I2(result0__0_carry__1[1]),
        .I3(Q[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    result0__0_carry_i_9
       (.I0(Q[1]),
        .I1(result0__0_carry__1[2]),
        .O(\ram_out_reg[1]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ROM
   (DI,
    Q,
    \rom_out_reg[1]_0 ,
    \rom_out_reg[3]_0 ,
    S,
    \rom_out_reg[1]_1 ,
    \ram_out_reg[7] ,
    \ram_out_reg[6] ,
    result0__0_carry__1,
    result0__0_carry__1_0,
    result0__0_carry,
    result0__0_carry__0,
    E,
    D,
    s00_axi_aclk);
  output [2:0]DI;
  output [3:0]Q;
  output \rom_out_reg[1]_0 ;
  output [1:0]\rom_out_reg[3]_0 ;
  output [1:0]S;
  output [2:0]\rom_out_reg[1]_1 ;
  output [2:0]\ram_out_reg[7] ;
  output [1:0]\ram_out_reg[6] ;
  input [7:0]result0__0_carry__1;
  input result0__0_carry__1_0;
  input result0__0_carry;
  input [0:0]result0__0_carry__0;
  input [0:0]E;
  input [3:0]D;
  input s00_axi_aclk;

  wire [3:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [3:0]Q;
  wire [1:0]S;
  wire [1:0]\ram_out_reg[6] ;
  wire [2:0]\ram_out_reg[7] ;
  wire result0__0_carry;
  wire [0:0]result0__0_carry__0;
  wire result0__0_carry__0_i_10_n_0;
  wire result0__0_carry__0_i_11_n_0;
  wire result0__0_carry__0_i_12_n_0;
  wire result0__0_carry__0_i_15_n_0;
  wire result0__0_carry__0_i_16_n_0;
  wire result0__0_carry__0_i_9_n_0;
  wire [7:0]result0__0_carry__1;
  wire result0__0_carry__1_0;
  wire result0__0_carry__1_i_10_n_0;
  wire result0__0_carry__1_i_7_n_0;
  wire result0__0_carry__1_i_9_n_0;
  wire result0__0_carry_i_8_n_0;
  wire \rom_out_reg[1]_0 ;
  wire [2:0]\rom_out_reg[1]_1 ;
  wire [1:0]\rom_out_reg[3]_0 ;
  wire s00_axi_aclk;

  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'hD540)) 
    result0__0_carry__0_i_1
       (.I0(result0__0_carry__0_i_9_n_0),
        .I1(result0__0_carry__1[6]),
        .I2(Q[0]),
        .I3(result0__0_carry__0_i_10_n_0),
        .O(\ram_out_reg[6] [1]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    result0__0_carry__0_i_10
       (.I0(Q[1]),
        .I1(result0__0_carry__1[5]),
        .I2(Q[3]),
        .I3(result0__0_carry__1[3]),
        .I4(Q[2]),
        .I5(result0__0_carry__1[4]),
        .O(result0__0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h07777FFF7FFF7FFF)) 
    result0__0_carry__0_i_11
       (.I0(Q[2]),
        .I1(result0__0_carry__1[2]),
        .I2(Q[3]),
        .I3(result0__0_carry__1[1]),
        .I4(result0__0_carry__1[3]),
        .I5(Q[1]),
        .O(result0__0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    result0__0_carry__0_i_12
       (.I0(Q[1]),
        .I1(result0__0_carry__1[4]),
        .I2(result0__0_carry__1[3]),
        .I3(Q[2]),
        .I4(result0__0_carry__1[2]),
        .I5(Q[3]),
        .O(result0__0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    result0__0_carry__0_i_13
       (.I0(Q[1]),
        .I1(result0__0_carry__1[3]),
        .I2(Q[2]),
        .I3(result0__0_carry__1[2]),
        .I4(Q[3]),
        .I5(result0__0_carry__1[1]),
        .O(\rom_out_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h07777FFF7FFF7FFF)) 
    result0__0_carry__0_i_15
       (.I0(Q[3]),
        .I1(result0__0_carry__1[3]),
        .I2(Q[2]),
        .I3(result0__0_carry__1[4]),
        .I4(result0__0_carry__1[5]),
        .I5(Q[1]),
        .O(result0__0_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    result0__0_carry__0_i_16
       (.I0(Q[1]),
        .I1(result0__0_carry__1[6]),
        .I2(result0__0_carry__1[5]),
        .I3(Q[2]),
        .I4(result0__0_carry__1[4]),
        .I5(Q[3]),
        .O(result0__0_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'hD540)) 
    result0__0_carry__0_i_2
       (.I0(result0__0_carry__0_i_11_n_0),
        .I1(result0__0_carry__1[5]),
        .I2(Q[0]),
        .I3(result0__0_carry__0_i_12_n_0),
        .O(\ram_out_reg[6] [0]));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h956A6A95)) 
    result0__0_carry__0_i_5
       (.I0(result0__0_carry__0_i_15_n_0),
        .I1(result0__0_carry__1[7]),
        .I2(Q[0]),
        .I3(result0__0_carry__0_i_16_n_0),
        .I4(\ram_out_reg[6] [1]),
        .O(\ram_out_reg[7] [2]));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h956A6A95)) 
    result0__0_carry__0_i_6
       (.I0(result0__0_carry__0_i_9_n_0),
        .I1(result0__0_carry__1[6]),
        .I2(Q[0]),
        .I3(result0__0_carry__0_i_10_n_0),
        .I4(\ram_out_reg[6] [0]),
        .O(\ram_out_reg[7] [1]));
  LUT5 #(
    .INIT(32'h956A6A95)) 
    result0__0_carry__0_i_7
       (.I0(result0__0_carry__0_i_11_n_0),
        .I1(result0__0_carry__1[5]),
        .I2(Q[0]),
        .I3(result0__0_carry__0_i_12_n_0),
        .I4(result0__0_carry__0),
        .O(\ram_out_reg[7] [0]));
  LUT6 #(
    .INIT(64'h07777FFF7FFF7FFF)) 
    result0__0_carry__0_i_9
       (.I0(Q[3]),
        .I1(result0__0_carry__1[2]),
        .I2(Q[2]),
        .I3(result0__0_carry__1[3]),
        .I4(result0__0_carry__1[4]),
        .I5(Q[1]),
        .O(result0__0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    result0__0_carry__1_i_10
       (.I0(Q[1]),
        .I1(result0__0_carry__1[7]),
        .I2(result0__0_carry__1[6]),
        .I3(Q[2]),
        .I4(result0__0_carry__1[5]),
        .I5(Q[3]),
        .O(result0__0_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h4015154015401540)) 
    result0__0_carry__1_i_2
       (.I0(result0__0_carry__1_i_7_n_0),
        .I1(Q[3]),
        .I2(result0__0_carry__1[5]),
        .I3(result0__0_carry__1_0),
        .I4(result0__0_carry__1[7]),
        .I5(Q[1]),
        .O(\rom_out_reg[3]_0 [1]));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'hD540)) 
    result0__0_carry__1_i_3
       (.I0(result0__0_carry__0_i_15_n_0),
        .I1(result0__0_carry__1[7]),
        .I2(Q[0]),
        .I3(result0__0_carry__0_i_16_n_0),
        .O(\rom_out_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h173F8080C0000000)) 
    result0__0_carry__1_i_4
       (.I0(Q[1]),
        .I1(result0__0_carry__1[6]),
        .I2(Q[2]),
        .I3(result0__0_carry__1[5]),
        .I4(Q[3]),
        .I5(result0__0_carry__1[7]),
        .O(\rom_out_reg[1]_1 [2]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    result0__0_carry__1_i_5
       (.I0(\rom_out_reg[3]_0 [1]),
        .I1(result0__0_carry__1_i_9_n_0),
        .I2(Q[3]),
        .I3(result0__0_carry__1[6]),
        .I4(Q[2]),
        .I5(result0__0_carry__1[7]),
        .O(\rom_out_reg[1]_1 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    result0__0_carry__1_i_6
       (.I0(\rom_out_reg[3]_0 [0]),
        .I1(result0__0_carry__1_i_10_n_0),
        .I2(result0__0_carry__1_i_7_n_0),
        .O(\rom_out_reg[1]_1 [0]));
  LUT6 #(
    .INIT(64'h07777FFF7FFF7FFF)) 
    result0__0_carry__1_i_7
       (.I0(Q[3]),
        .I1(result0__0_carry__1[4]),
        .I2(Q[2]),
        .I3(result0__0_carry__1[5]),
        .I4(result0__0_carry__1[6]),
        .I5(Q[1]),
        .O(result0__0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h07777FFF7FFF7FFF)) 
    result0__0_carry__1_i_9
       (.I0(Q[3]),
        .I1(result0__0_carry__1[5]),
        .I2(Q[2]),
        .I3(result0__0_carry__1[6]),
        .I4(result0__0_carry__1[7]),
        .I5(Q[1]),
        .O(result0__0_carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    result0__0_carry_i_1
       (.I0(Q[1]),
        .I1(result0__0_carry__1[2]),
        .I2(Q[2]),
        .I3(result0__0_carry__1[1]),
        .I4(Q[3]),
        .I5(result0__0_carry__1[0]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h7888)) 
    result0__0_carry_i_2
       (.I0(Q[1]),
        .I1(result0__0_carry__1[1]),
        .I2(Q[2]),
        .I3(result0__0_carry__1[0]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    result0__0_carry_i_3
       (.I0(Q[0]),
        .I1(result0__0_carry__1[1]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h963C5AF096C3A50F)) 
    result0__0_carry_i_4
       (.I0(Q[3]),
        .I1(result0__0_carry__1[2]),
        .I2(result0__0_carry_i_8_n_0),
        .I3(result0__0_carry__1[0]),
        .I4(Q[1]),
        .I5(result0__0_carry),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    result0__0_carry_i_7
       (.I0(Q[0]),
        .I1(result0__0_carry__1[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h8)) 
    result0__0_carry_i_8
       (.I0(Q[0]),
        .I1(result0__0_carry__1[3]),
        .O(result0__0_carry_i_8_n_0));
  FDRE \rom_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \rom_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \rom_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \rom_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_filter_ip_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_filter_ip_v1_0_S00_AXI fir_filter_ip_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_filter_ip_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire rst;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;
  wire valid_in;
  wire \valid_in_counter[0]_i_2_n_0 ;
  wire [31:0]valid_in_counter_reg;
  wire \valid_in_counter_reg[0]_i_1_n_0 ;
  wire \valid_in_counter_reg[0]_i_1_n_1 ;
  wire \valid_in_counter_reg[0]_i_1_n_2 ;
  wire \valid_in_counter_reg[0]_i_1_n_3 ;
  wire \valid_in_counter_reg[0]_i_1_n_4 ;
  wire \valid_in_counter_reg[0]_i_1_n_5 ;
  wire \valid_in_counter_reg[0]_i_1_n_6 ;
  wire \valid_in_counter_reg[0]_i_1_n_7 ;
  wire \valid_in_counter_reg[12]_i_1_n_0 ;
  wire \valid_in_counter_reg[12]_i_1_n_1 ;
  wire \valid_in_counter_reg[12]_i_1_n_2 ;
  wire \valid_in_counter_reg[12]_i_1_n_3 ;
  wire \valid_in_counter_reg[12]_i_1_n_4 ;
  wire \valid_in_counter_reg[12]_i_1_n_5 ;
  wire \valid_in_counter_reg[12]_i_1_n_6 ;
  wire \valid_in_counter_reg[12]_i_1_n_7 ;
  wire \valid_in_counter_reg[16]_i_1_n_0 ;
  wire \valid_in_counter_reg[16]_i_1_n_1 ;
  wire \valid_in_counter_reg[16]_i_1_n_2 ;
  wire \valid_in_counter_reg[16]_i_1_n_3 ;
  wire \valid_in_counter_reg[16]_i_1_n_4 ;
  wire \valid_in_counter_reg[16]_i_1_n_5 ;
  wire \valid_in_counter_reg[16]_i_1_n_6 ;
  wire \valid_in_counter_reg[16]_i_1_n_7 ;
  wire \valid_in_counter_reg[20]_i_1_n_0 ;
  wire \valid_in_counter_reg[20]_i_1_n_1 ;
  wire \valid_in_counter_reg[20]_i_1_n_2 ;
  wire \valid_in_counter_reg[20]_i_1_n_3 ;
  wire \valid_in_counter_reg[20]_i_1_n_4 ;
  wire \valid_in_counter_reg[20]_i_1_n_5 ;
  wire \valid_in_counter_reg[20]_i_1_n_6 ;
  wire \valid_in_counter_reg[20]_i_1_n_7 ;
  wire \valid_in_counter_reg[24]_i_1_n_0 ;
  wire \valid_in_counter_reg[24]_i_1_n_1 ;
  wire \valid_in_counter_reg[24]_i_1_n_2 ;
  wire \valid_in_counter_reg[24]_i_1_n_3 ;
  wire \valid_in_counter_reg[24]_i_1_n_4 ;
  wire \valid_in_counter_reg[24]_i_1_n_5 ;
  wire \valid_in_counter_reg[24]_i_1_n_6 ;
  wire \valid_in_counter_reg[24]_i_1_n_7 ;
  wire \valid_in_counter_reg[28]_i_1_n_1 ;
  wire \valid_in_counter_reg[28]_i_1_n_2 ;
  wire \valid_in_counter_reg[28]_i_1_n_3 ;
  wire \valid_in_counter_reg[28]_i_1_n_4 ;
  wire \valid_in_counter_reg[28]_i_1_n_5 ;
  wire \valid_in_counter_reg[28]_i_1_n_6 ;
  wire \valid_in_counter_reg[28]_i_1_n_7 ;
  wire \valid_in_counter_reg[4]_i_1_n_0 ;
  wire \valid_in_counter_reg[4]_i_1_n_1 ;
  wire \valid_in_counter_reg[4]_i_1_n_2 ;
  wire \valid_in_counter_reg[4]_i_1_n_3 ;
  wire \valid_in_counter_reg[4]_i_1_n_4 ;
  wire \valid_in_counter_reg[4]_i_1_n_5 ;
  wire \valid_in_counter_reg[4]_i_1_n_6 ;
  wire \valid_in_counter_reg[4]_i_1_n_7 ;
  wire \valid_in_counter_reg[8]_i_1_n_0 ;
  wire \valid_in_counter_reg[8]_i_1_n_1 ;
  wire \valid_in_counter_reg[8]_i_1_n_2 ;
  wire \valid_in_counter_reg[8]_i_1_n_3 ;
  wire \valid_in_counter_reg[8]_i_1_n_4 ;
  wire \valid_in_counter_reg[8]_i_1_n_5 ;
  wire \valid_in_counter_reg[8]_i_1_n_6 ;
  wire \valid_in_counter_reg[8]_i_1_n_7 ;
  wire valid_out;
  wire \valid_out_counter[0]_i_2_n_0 ;
  wire [31:0]valid_out_counter_reg;
  wire \valid_out_counter_reg[0]_i_1_n_0 ;
  wire \valid_out_counter_reg[0]_i_1_n_1 ;
  wire \valid_out_counter_reg[0]_i_1_n_2 ;
  wire \valid_out_counter_reg[0]_i_1_n_3 ;
  wire \valid_out_counter_reg[0]_i_1_n_4 ;
  wire \valid_out_counter_reg[0]_i_1_n_5 ;
  wire \valid_out_counter_reg[0]_i_1_n_6 ;
  wire \valid_out_counter_reg[0]_i_1_n_7 ;
  wire \valid_out_counter_reg[12]_i_1_n_0 ;
  wire \valid_out_counter_reg[12]_i_1_n_1 ;
  wire \valid_out_counter_reg[12]_i_1_n_2 ;
  wire \valid_out_counter_reg[12]_i_1_n_3 ;
  wire \valid_out_counter_reg[12]_i_1_n_4 ;
  wire \valid_out_counter_reg[12]_i_1_n_5 ;
  wire \valid_out_counter_reg[12]_i_1_n_6 ;
  wire \valid_out_counter_reg[12]_i_1_n_7 ;
  wire \valid_out_counter_reg[16]_i_1_n_0 ;
  wire \valid_out_counter_reg[16]_i_1_n_1 ;
  wire \valid_out_counter_reg[16]_i_1_n_2 ;
  wire \valid_out_counter_reg[16]_i_1_n_3 ;
  wire \valid_out_counter_reg[16]_i_1_n_4 ;
  wire \valid_out_counter_reg[16]_i_1_n_5 ;
  wire \valid_out_counter_reg[16]_i_1_n_6 ;
  wire \valid_out_counter_reg[16]_i_1_n_7 ;
  wire \valid_out_counter_reg[20]_i_1_n_0 ;
  wire \valid_out_counter_reg[20]_i_1_n_1 ;
  wire \valid_out_counter_reg[20]_i_1_n_2 ;
  wire \valid_out_counter_reg[20]_i_1_n_3 ;
  wire \valid_out_counter_reg[20]_i_1_n_4 ;
  wire \valid_out_counter_reg[20]_i_1_n_5 ;
  wire \valid_out_counter_reg[20]_i_1_n_6 ;
  wire \valid_out_counter_reg[20]_i_1_n_7 ;
  wire \valid_out_counter_reg[24]_i_1_n_0 ;
  wire \valid_out_counter_reg[24]_i_1_n_1 ;
  wire \valid_out_counter_reg[24]_i_1_n_2 ;
  wire \valid_out_counter_reg[24]_i_1_n_3 ;
  wire \valid_out_counter_reg[24]_i_1_n_4 ;
  wire \valid_out_counter_reg[24]_i_1_n_5 ;
  wire \valid_out_counter_reg[24]_i_1_n_6 ;
  wire \valid_out_counter_reg[24]_i_1_n_7 ;
  wire \valid_out_counter_reg[28]_i_1_n_1 ;
  wire \valid_out_counter_reg[28]_i_1_n_2 ;
  wire \valid_out_counter_reg[28]_i_1_n_3 ;
  wire \valid_out_counter_reg[28]_i_1_n_4 ;
  wire \valid_out_counter_reg[28]_i_1_n_5 ;
  wire \valid_out_counter_reg[28]_i_1_n_6 ;
  wire \valid_out_counter_reg[28]_i_1_n_7 ;
  wire \valid_out_counter_reg[4]_i_1_n_0 ;
  wire \valid_out_counter_reg[4]_i_1_n_1 ;
  wire \valid_out_counter_reg[4]_i_1_n_2 ;
  wire \valid_out_counter_reg[4]_i_1_n_3 ;
  wire \valid_out_counter_reg[4]_i_1_n_4 ;
  wire \valid_out_counter_reg[4]_i_1_n_5 ;
  wire \valid_out_counter_reg[4]_i_1_n_6 ;
  wire \valid_out_counter_reg[4]_i_1_n_7 ;
  wire \valid_out_counter_reg[8]_i_1_n_0 ;
  wire \valid_out_counter_reg[8]_i_1_n_1 ;
  wire \valid_out_counter_reg[8]_i_1_n_2 ;
  wire \valid_out_counter_reg[8]_i_1_n_3 ;
  wire \valid_out_counter_reg[8]_i_1_n_4 ;
  wire \valid_out_counter_reg[8]_i_1_n_5 ;
  wire \valid_out_counter_reg[8]_i_1_n_6 ;
  wire \valid_out_counter_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_valid_in_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_valid_out_counter_reg[28]_i_1_CO_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_filter_unit FIR
       (.D(reg_data_out[24:0]),
        .Q({\slv_reg0_reg_n_0_[23] ,\slv_reg0_reg_n_0_[22] ,\slv_reg0_reg_n_0_[21] ,\slv_reg0_reg_n_0_[20] ,\slv_reg0_reg_n_0_[19] ,\slv_reg0_reg_n_0_[18] ,\slv_reg0_reg_n_0_[17] ,\slv_reg0_reg_n_0_[16] ,\slv_reg0_reg_n_0_[15] ,\slv_reg0_reg_n_0_[14] ,\slv_reg0_reg_n_0_[13] ,\slv_reg0_reg_n_0_[12] ,\slv_reg0_reg_n_0_[11] ,\slv_reg0_reg_n_0_[10] ,rst,valid_in,\slv_reg0_reg_n_0_[7] ,\slv_reg0_reg_n_0_[6] ,\slv_reg0_reg_n_0_[5] ,\slv_reg0_reg_n_0_[4] ,\slv_reg0_reg_n_0_[3] ,\slv_reg0_reg_n_0_[2] ,\slv_reg0_reg_n_0_[1] ,\slv_reg0_reg_n_0_[0] }),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[24] (\axi_rdata[24]_i_4_n_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .valid_in_counter_reg(valid_in_counter_reg[24:0]),
        .valid_out(valid_out),
        .valid_out_counter_reg(valid_out_counter_reg[23:0]));
  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[24]_i_4 
       (.I0(valid_out_counter_reg[24]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg0_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[25]_i_1 
       (.I0(valid_in_counter_reg[25]),
        .I1(axi_araddr[2]),
        .I2(valid_out_counter_reg[25]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[26]_i_1 
       (.I0(valid_in_counter_reg[26]),
        .I1(axi_araddr[2]),
        .I2(valid_out_counter_reg[26]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[27]_i_1 
       (.I0(valid_in_counter_reg[27]),
        .I1(axi_araddr[2]),
        .I2(valid_out_counter_reg[27]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[28]_i_1 
       (.I0(valid_in_counter_reg[28]),
        .I1(axi_araddr[2]),
        .I2(valid_out_counter_reg[28]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[29]_i_1 
       (.I0(valid_in_counter_reg[29]),
        .I1(axi_araddr[2]),
        .I2(valid_out_counter_reg[29]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[30]_i_1 
       (.I0(valid_in_counter_reg[30]),
        .I1(axi_araddr[2]),
        .I2(valid_out_counter_reg[30]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[31]_i_2 
       (.I0(valid_in_counter_reg[31]),
        .I1(axi_araddr[2]),
        .I2(valid_out_counter_reg[31]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(valid_in),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(rst),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \valid_in_counter[0]_i_2 
       (.I0(valid_in_counter_reg[0]),
        .O(\valid_in_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[0] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[0]_i_1_n_7 ),
        .Q(valid_in_counter_reg[0]),
        .R(1'b0));
  CARRY4 \valid_in_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\valid_in_counter_reg[0]_i_1_n_0 ,\valid_in_counter_reg[0]_i_1_n_1 ,\valid_in_counter_reg[0]_i_1_n_2 ,\valid_in_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\valid_in_counter_reg[0]_i_1_n_4 ,\valid_in_counter_reg[0]_i_1_n_5 ,\valid_in_counter_reg[0]_i_1_n_6 ,\valid_in_counter_reg[0]_i_1_n_7 }),
        .S({valid_in_counter_reg[3:1],\valid_in_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[10] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[8]_i_1_n_5 ),
        .Q(valid_in_counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[11] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[8]_i_1_n_4 ),
        .Q(valid_in_counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[12] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[12]_i_1_n_7 ),
        .Q(valid_in_counter_reg[12]),
        .R(1'b0));
  CARRY4 \valid_in_counter_reg[12]_i_1 
       (.CI(\valid_in_counter_reg[8]_i_1_n_0 ),
        .CO({\valid_in_counter_reg[12]_i_1_n_0 ,\valid_in_counter_reg[12]_i_1_n_1 ,\valid_in_counter_reg[12]_i_1_n_2 ,\valid_in_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_in_counter_reg[12]_i_1_n_4 ,\valid_in_counter_reg[12]_i_1_n_5 ,\valid_in_counter_reg[12]_i_1_n_6 ,\valid_in_counter_reg[12]_i_1_n_7 }),
        .S(valid_in_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[13] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[12]_i_1_n_6 ),
        .Q(valid_in_counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[14] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[12]_i_1_n_5 ),
        .Q(valid_in_counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[15] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[12]_i_1_n_4 ),
        .Q(valid_in_counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[16] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[16]_i_1_n_7 ),
        .Q(valid_in_counter_reg[16]),
        .R(1'b0));
  CARRY4 \valid_in_counter_reg[16]_i_1 
       (.CI(\valid_in_counter_reg[12]_i_1_n_0 ),
        .CO({\valid_in_counter_reg[16]_i_1_n_0 ,\valid_in_counter_reg[16]_i_1_n_1 ,\valid_in_counter_reg[16]_i_1_n_2 ,\valid_in_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_in_counter_reg[16]_i_1_n_4 ,\valid_in_counter_reg[16]_i_1_n_5 ,\valid_in_counter_reg[16]_i_1_n_6 ,\valid_in_counter_reg[16]_i_1_n_7 }),
        .S(valid_in_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[17] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[16]_i_1_n_6 ),
        .Q(valid_in_counter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[18] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[16]_i_1_n_5 ),
        .Q(valid_in_counter_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[19] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[16]_i_1_n_4 ),
        .Q(valid_in_counter_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[1] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[0]_i_1_n_6 ),
        .Q(valid_in_counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[20] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[20]_i_1_n_7 ),
        .Q(valid_in_counter_reg[20]),
        .R(1'b0));
  CARRY4 \valid_in_counter_reg[20]_i_1 
       (.CI(\valid_in_counter_reg[16]_i_1_n_0 ),
        .CO({\valid_in_counter_reg[20]_i_1_n_0 ,\valid_in_counter_reg[20]_i_1_n_1 ,\valid_in_counter_reg[20]_i_1_n_2 ,\valid_in_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_in_counter_reg[20]_i_1_n_4 ,\valid_in_counter_reg[20]_i_1_n_5 ,\valid_in_counter_reg[20]_i_1_n_6 ,\valid_in_counter_reg[20]_i_1_n_7 }),
        .S(valid_in_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[21] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[20]_i_1_n_6 ),
        .Q(valid_in_counter_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[22] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[20]_i_1_n_5 ),
        .Q(valid_in_counter_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[23] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[20]_i_1_n_4 ),
        .Q(valid_in_counter_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[24] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[24]_i_1_n_7 ),
        .Q(valid_in_counter_reg[24]),
        .R(1'b0));
  CARRY4 \valid_in_counter_reg[24]_i_1 
       (.CI(\valid_in_counter_reg[20]_i_1_n_0 ),
        .CO({\valid_in_counter_reg[24]_i_1_n_0 ,\valid_in_counter_reg[24]_i_1_n_1 ,\valid_in_counter_reg[24]_i_1_n_2 ,\valid_in_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_in_counter_reg[24]_i_1_n_4 ,\valid_in_counter_reg[24]_i_1_n_5 ,\valid_in_counter_reg[24]_i_1_n_6 ,\valid_in_counter_reg[24]_i_1_n_7 }),
        .S(valid_in_counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[25] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[24]_i_1_n_6 ),
        .Q(valid_in_counter_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[26] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[24]_i_1_n_5 ),
        .Q(valid_in_counter_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[27] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[24]_i_1_n_4 ),
        .Q(valid_in_counter_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[28] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[28]_i_1_n_7 ),
        .Q(valid_in_counter_reg[28]),
        .R(1'b0));
  CARRY4 \valid_in_counter_reg[28]_i_1 
       (.CI(\valid_in_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_valid_in_counter_reg[28]_i_1_CO_UNCONNECTED [3],\valid_in_counter_reg[28]_i_1_n_1 ,\valid_in_counter_reg[28]_i_1_n_2 ,\valid_in_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_in_counter_reg[28]_i_1_n_4 ,\valid_in_counter_reg[28]_i_1_n_5 ,\valid_in_counter_reg[28]_i_1_n_6 ,\valid_in_counter_reg[28]_i_1_n_7 }),
        .S(valid_in_counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[29] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[28]_i_1_n_6 ),
        .Q(valid_in_counter_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[2] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[0]_i_1_n_5 ),
        .Q(valid_in_counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[30] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[28]_i_1_n_5 ),
        .Q(valid_in_counter_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[31] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[28]_i_1_n_4 ),
        .Q(valid_in_counter_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[3] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[0]_i_1_n_4 ),
        .Q(valid_in_counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[4] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[4]_i_1_n_7 ),
        .Q(valid_in_counter_reg[4]),
        .R(1'b0));
  CARRY4 \valid_in_counter_reg[4]_i_1 
       (.CI(\valid_in_counter_reg[0]_i_1_n_0 ),
        .CO({\valid_in_counter_reg[4]_i_1_n_0 ,\valid_in_counter_reg[4]_i_1_n_1 ,\valid_in_counter_reg[4]_i_1_n_2 ,\valid_in_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_in_counter_reg[4]_i_1_n_4 ,\valid_in_counter_reg[4]_i_1_n_5 ,\valid_in_counter_reg[4]_i_1_n_6 ,\valid_in_counter_reg[4]_i_1_n_7 }),
        .S(valid_in_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[5] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[4]_i_1_n_6 ),
        .Q(valid_in_counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[6] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[4]_i_1_n_5 ),
        .Q(valid_in_counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[7] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[4]_i_1_n_4 ),
        .Q(valid_in_counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[8] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[8]_i_1_n_7 ),
        .Q(valid_in_counter_reg[8]),
        .R(1'b0));
  CARRY4 \valid_in_counter_reg[8]_i_1 
       (.CI(\valid_in_counter_reg[4]_i_1_n_0 ),
        .CO({\valid_in_counter_reg[8]_i_1_n_0 ,\valid_in_counter_reg[8]_i_1_n_1 ,\valid_in_counter_reg[8]_i_1_n_2 ,\valid_in_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_in_counter_reg[8]_i_1_n_4 ,\valid_in_counter_reg[8]_i_1_n_5 ,\valid_in_counter_reg[8]_i_1_n_6 ,\valid_in_counter_reg[8]_i_1_n_7 }),
        .S(valid_in_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_in_counter_reg[9] 
       (.C(valid_in),
        .CE(1'b1),
        .D(\valid_in_counter_reg[8]_i_1_n_6 ),
        .Q(valid_in_counter_reg[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \valid_out_counter[0]_i_2 
       (.I0(valid_out_counter_reg[0]),
        .O(\valid_out_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[0] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[0]_i_1_n_7 ),
        .Q(valid_out_counter_reg[0]),
        .R(1'b0));
  CARRY4 \valid_out_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\valid_out_counter_reg[0]_i_1_n_0 ,\valid_out_counter_reg[0]_i_1_n_1 ,\valid_out_counter_reg[0]_i_1_n_2 ,\valid_out_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\valid_out_counter_reg[0]_i_1_n_4 ,\valid_out_counter_reg[0]_i_1_n_5 ,\valid_out_counter_reg[0]_i_1_n_6 ,\valid_out_counter_reg[0]_i_1_n_7 }),
        .S({valid_out_counter_reg[3:1],\valid_out_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[10] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[8]_i_1_n_5 ),
        .Q(valid_out_counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[11] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[8]_i_1_n_4 ),
        .Q(valid_out_counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[12] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[12]_i_1_n_7 ),
        .Q(valid_out_counter_reg[12]),
        .R(1'b0));
  CARRY4 \valid_out_counter_reg[12]_i_1 
       (.CI(\valid_out_counter_reg[8]_i_1_n_0 ),
        .CO({\valid_out_counter_reg[12]_i_1_n_0 ,\valid_out_counter_reg[12]_i_1_n_1 ,\valid_out_counter_reg[12]_i_1_n_2 ,\valid_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_out_counter_reg[12]_i_1_n_4 ,\valid_out_counter_reg[12]_i_1_n_5 ,\valid_out_counter_reg[12]_i_1_n_6 ,\valid_out_counter_reg[12]_i_1_n_7 }),
        .S(valid_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[13] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[12]_i_1_n_6 ),
        .Q(valid_out_counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[14] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[12]_i_1_n_5 ),
        .Q(valid_out_counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[15] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[12]_i_1_n_4 ),
        .Q(valid_out_counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[16] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[16]_i_1_n_7 ),
        .Q(valid_out_counter_reg[16]),
        .R(1'b0));
  CARRY4 \valid_out_counter_reg[16]_i_1 
       (.CI(\valid_out_counter_reg[12]_i_1_n_0 ),
        .CO({\valid_out_counter_reg[16]_i_1_n_0 ,\valid_out_counter_reg[16]_i_1_n_1 ,\valid_out_counter_reg[16]_i_1_n_2 ,\valid_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_out_counter_reg[16]_i_1_n_4 ,\valid_out_counter_reg[16]_i_1_n_5 ,\valid_out_counter_reg[16]_i_1_n_6 ,\valid_out_counter_reg[16]_i_1_n_7 }),
        .S(valid_out_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[17] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[16]_i_1_n_6 ),
        .Q(valid_out_counter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[18] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[16]_i_1_n_5 ),
        .Q(valid_out_counter_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[19] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[16]_i_1_n_4 ),
        .Q(valid_out_counter_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[1] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[0]_i_1_n_6 ),
        .Q(valid_out_counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[20] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[20]_i_1_n_7 ),
        .Q(valid_out_counter_reg[20]),
        .R(1'b0));
  CARRY4 \valid_out_counter_reg[20]_i_1 
       (.CI(\valid_out_counter_reg[16]_i_1_n_0 ),
        .CO({\valid_out_counter_reg[20]_i_1_n_0 ,\valid_out_counter_reg[20]_i_1_n_1 ,\valid_out_counter_reg[20]_i_1_n_2 ,\valid_out_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_out_counter_reg[20]_i_1_n_4 ,\valid_out_counter_reg[20]_i_1_n_5 ,\valid_out_counter_reg[20]_i_1_n_6 ,\valid_out_counter_reg[20]_i_1_n_7 }),
        .S(valid_out_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[21] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[20]_i_1_n_6 ),
        .Q(valid_out_counter_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[22] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[20]_i_1_n_5 ),
        .Q(valid_out_counter_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[23] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[20]_i_1_n_4 ),
        .Q(valid_out_counter_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[24] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[24]_i_1_n_7 ),
        .Q(valid_out_counter_reg[24]),
        .R(1'b0));
  CARRY4 \valid_out_counter_reg[24]_i_1 
       (.CI(\valid_out_counter_reg[20]_i_1_n_0 ),
        .CO({\valid_out_counter_reg[24]_i_1_n_0 ,\valid_out_counter_reg[24]_i_1_n_1 ,\valid_out_counter_reg[24]_i_1_n_2 ,\valid_out_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_out_counter_reg[24]_i_1_n_4 ,\valid_out_counter_reg[24]_i_1_n_5 ,\valid_out_counter_reg[24]_i_1_n_6 ,\valid_out_counter_reg[24]_i_1_n_7 }),
        .S(valid_out_counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[25] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[24]_i_1_n_6 ),
        .Q(valid_out_counter_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[26] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[24]_i_1_n_5 ),
        .Q(valid_out_counter_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[27] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[24]_i_1_n_4 ),
        .Q(valid_out_counter_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[28] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[28]_i_1_n_7 ),
        .Q(valid_out_counter_reg[28]),
        .R(1'b0));
  CARRY4 \valid_out_counter_reg[28]_i_1 
       (.CI(\valid_out_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_valid_out_counter_reg[28]_i_1_CO_UNCONNECTED [3],\valid_out_counter_reg[28]_i_1_n_1 ,\valid_out_counter_reg[28]_i_1_n_2 ,\valid_out_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_out_counter_reg[28]_i_1_n_4 ,\valid_out_counter_reg[28]_i_1_n_5 ,\valid_out_counter_reg[28]_i_1_n_6 ,\valid_out_counter_reg[28]_i_1_n_7 }),
        .S(valid_out_counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[29] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[28]_i_1_n_6 ),
        .Q(valid_out_counter_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[2] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[0]_i_1_n_5 ),
        .Q(valid_out_counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[30] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[28]_i_1_n_5 ),
        .Q(valid_out_counter_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[31] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[28]_i_1_n_4 ),
        .Q(valid_out_counter_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[3] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[0]_i_1_n_4 ),
        .Q(valid_out_counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[4] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[4]_i_1_n_7 ),
        .Q(valid_out_counter_reg[4]),
        .R(1'b0));
  CARRY4 \valid_out_counter_reg[4]_i_1 
       (.CI(\valid_out_counter_reg[0]_i_1_n_0 ),
        .CO({\valid_out_counter_reg[4]_i_1_n_0 ,\valid_out_counter_reg[4]_i_1_n_1 ,\valid_out_counter_reg[4]_i_1_n_2 ,\valid_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_out_counter_reg[4]_i_1_n_4 ,\valid_out_counter_reg[4]_i_1_n_5 ,\valid_out_counter_reg[4]_i_1_n_6 ,\valid_out_counter_reg[4]_i_1_n_7 }),
        .S(valid_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[5] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[4]_i_1_n_6 ),
        .Q(valid_out_counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[6] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[4]_i_1_n_5 ),
        .Q(valid_out_counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[7] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[4]_i_1_n_4 ),
        .Q(valid_out_counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[8] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[8]_i_1_n_7 ),
        .Q(valid_out_counter_reg[8]),
        .R(1'b0));
  CARRY4 \valid_out_counter_reg[8]_i_1 
       (.CI(\valid_out_counter_reg[4]_i_1_n_0 ),
        .CO({\valid_out_counter_reg[8]_i_1_n_0 ,\valid_out_counter_reg[8]_i_1_n_1 ,\valid_out_counter_reg[8]_i_1_n_2 ,\valid_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\valid_out_counter_reg[8]_i_1_n_4 ,\valid_out_counter_reg[8]_i_1_n_5 ,\valid_out_counter_reg[8]_i_1_n_6 ,\valid_out_counter_reg[8]_i_1_n_7 }),
        .S(valid_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \valid_out_counter_reg[9] 
       (.C(valid_out),
        .CE(1'b1),
        .D(\valid_out_counter_reg[8]_i_1_n_6 ),
        .Q(valid_out_counter_reg[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "zybo_design_1_fir_filter_ip_0_0,fir_filter_ip_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fir_filter_ip_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zybo_design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zybo_design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_filter_ip_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
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
