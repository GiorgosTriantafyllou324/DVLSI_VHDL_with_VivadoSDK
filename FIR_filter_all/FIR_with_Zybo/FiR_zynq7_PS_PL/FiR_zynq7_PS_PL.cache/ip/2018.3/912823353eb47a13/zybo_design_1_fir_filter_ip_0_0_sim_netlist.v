// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Apr 22 02:03:24 2024
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
   (E,
    \count_reg[2]_0 ,
    D,
    \count_reg[1]_0 ,
    mac_init,
    Q,
    s00_axi_aclk);
  output [0:0]E;
  output [2:0]\count_reg[2]_0 ;
  output [3:0]D;
  output \count_reg[1]_0 ;
  output mac_init;
  input [1:0]Q;
  input s00_axi_aclk;

  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count_reg[1]_0 ;
  wire [2:0]\count_reg[2]_0 ;
  wire mac_init;
  wire s00_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h01)) 
    MAC_Unit_i_2
       (.I0(\count_reg[2]_0 [2]),
        .I1(\count_reg[2]_0 [0]),
        .I2(\count_reg[2]_0 [1]),
        .O(mac_init));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg[2]_0 [0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(\count_reg[2]_0 [1]),
        .I1(\count_reg[2]_0 [0]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(\count_reg[2]_0 [2]),
        .I1(\count_reg[2]_0 [1]),
        .I2(\count_reg[2]_0 [0]),
        .O(\count[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \ram[0][7]_i_1 
       (.I0(Q[0]),
        .I1(\count_reg[2]_0 [2]),
        .I2(\count_reg[2]_0 [0]),
        .I3(\count_reg[2]_0 [1]),
        .I4(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \ram_out[7]_i_4 
       (.I0(\count_reg[2]_0 [1]),
        .I1(\count_reg[2]_0 [0]),
        .I2(\count_reg[2]_0 [2]),
        .I3(Q[0]),
        .O(\count_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rom_out[0]_i_1 
       (.I0(\count_reg[2]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rom_out[1]_i_1 
       (.I0(\count_reg[2]_0 [0]),
        .I1(\count_reg[2]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \rom_out[2]_i_1 
       (.I0(\count_reg[2]_0 [1]),
        .I1(\count_reg[2]_0 [2]),
        .I2(\count_reg[2]_0 [0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rom_out[3]_i_1 
       (.I0(\count_reg[2]_0 [1]),
        .I1(\count_reg[2]_0 [0]),
        .I2(\count_reg[2]_0 [2]),
        .O(D[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_filter_unit
   (D,
    s00_axi_aclk,
    Q,
    \axi_rdata_reg[24] ,
    axi_araddr,
    \axi_rdata_reg[24]_0 );
  output [24:0]D;
  input s00_axi_aclk;
  input [24:0]Q;
  input [24:0]\axi_rdata_reg[24] ;
  input [1:0]axi_araddr;
  input [24:0]\axi_rdata_reg[24]_0 ;

  wire CU_n_0;
  wire CU_n_4;
  wire CU_n_8;
  wire [24:0]D;
  wire [24:0]Q;
  wire [1:0]axi_araddr;
  wire [24:0]\axi_rdata_reg[24] ;
  wire [24:0]\axi_rdata_reg[24]_0 ;
  wire [0:0]plusOp;
  wire [1:1]plusOp__3;
  wire [7:0]ram_in;
  wire [7:0]ram_out;
  wire ram_we;
  wire [2:2]rdata;
  wire [2:0]rom_addr;
  wire rom_en;
  wire [3:0]rom_out;
  wire s00_axi_aclk;
  wire valid_out;
  wire [23:0]y;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit CU
       (.D({CU_n_4,rdata,plusOp__3,plusOp}),
        .E(CU_n_0),
        .Q(Q[9:8]),
        .\count_reg[1]_0 (CU_n_8),
        .\count_reg[2]_0 (rom_addr),
        .mac_init(ram_we),
        .s00_axi_aclk(s00_axi_aclk));
  (* data_width = "8" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC MAC_Unit
       (.clk(s00_axi_aclk),
        .fir_out(y),
        .mac_en(rom_en),
        .mac_init(ram_we),
        .mac_ready(valid_out),
        .ram_out(ram_out),
        .rom_out({1'b0,1'b0,1'b0,1'b0,rom_out}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM RAM_memory
       (.E(rom_en),
        .Q(ram_in),
        .\ram_out_reg[7]_0 (ram_out),
        .\ram_out_reg[7]_1 (rom_addr),
        .\ram_out_reg[7]_2 (CU_n_8),
        .\ram_reg[7][0]_0 (Q[9]),
        .\ram_reg[7][0]_1 (CU_n_0),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ROM ROM_memory
       (.D({CU_n_4,rdata,plusOp__3,plusOp}),
        .E(rom_en),
        .Q(rom_out),
        .s00_axi_aclk(s00_axi_aclk));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[24] [0]),
        .I1(y[0]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [0]),
        .I4(axi_araddr[1]),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata_reg[24] [10]),
        .I1(y[10]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [10]),
        .I4(axi_araddr[1]),
        .I5(Q[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata_reg[24] [11]),
        .I1(y[11]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [11]),
        .I4(axi_araddr[1]),
        .I5(Q[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata_reg[24] [12]),
        .I1(y[12]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [12]),
        .I4(axi_araddr[1]),
        .I5(Q[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata_reg[24] [13]),
        .I1(y[13]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [13]),
        .I4(axi_araddr[1]),
        .I5(Q[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata_reg[24] [14]),
        .I1(y[14]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [14]),
        .I4(axi_araddr[1]),
        .I5(Q[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata_reg[24] [15]),
        .I1(y[15]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [15]),
        .I4(axi_araddr[1]),
        .I5(Q[15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata_reg[24] [16]),
        .I1(y[16]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [16]),
        .I4(axi_araddr[1]),
        .I5(Q[16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata_reg[24] [17]),
        .I1(y[17]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [17]),
        .I4(axi_araddr[1]),
        .I5(Q[17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata_reg[24] [18]),
        .I1(y[18]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [18]),
        .I4(axi_araddr[1]),
        .I5(Q[18]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata_reg[24] [19]),
        .I1(y[19]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [19]),
        .I4(axi_araddr[1]),
        .I5(Q[19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata_reg[24] [1]),
        .I1(y[1]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [1]),
        .I4(axi_araddr[1]),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata_reg[24] [20]),
        .I1(y[20]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [20]),
        .I4(axi_araddr[1]),
        .I5(Q[20]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata_reg[24] [21]),
        .I1(y[21]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [21]),
        .I4(axi_araddr[1]),
        .I5(Q[21]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata_reg[24] [22]),
        .I1(y[22]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [22]),
        .I4(axi_araddr[1]),
        .I5(Q[22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata_reg[24] [23]),
        .I1(y[23]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [23]),
        .I4(axi_araddr[1]),
        .I5(Q[23]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata_reg[24] [24]),
        .I1(valid_out),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [24]),
        .I4(axi_araddr[1]),
        .I5(Q[24]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata_reg[24] [2]),
        .I1(y[2]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [2]),
        .I4(axi_araddr[1]),
        .I5(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata_reg[24] [3]),
        .I1(y[3]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [3]),
        .I4(axi_araddr[1]),
        .I5(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[24] [4]),
        .I1(y[4]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [4]),
        .I4(axi_araddr[1]),
        .I5(Q[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata_reg[24] [5]),
        .I1(y[5]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [5]),
        .I4(axi_araddr[1]),
        .I5(Q[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata_reg[24] [6]),
        .I1(y[6]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [6]),
        .I4(axi_araddr[1]),
        .I5(Q[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata_reg[24] [7]),
        .I1(y[7]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [7]),
        .I4(axi_araddr[1]),
        .I5(Q[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata_reg[24] [8]),
        .I1(y[8]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [8]),
        .I4(axi_araddr[1]),
        .I5(Q[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata_reg[24] [9]),
        .I1(y[9]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[24]_0 [9]),
        .I4(axi_araddr[1]),
        .I5(Q[9]),
        .O(D[9]));
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
   (clk,
    mac_en,
    mac_init,
    mac_ready,
    rom_out,
    ram_out,
    fir_out);
  input clk;
  input mac_en;
  input mac_init;
  output mac_ready;
  input [7:0]rom_out;
  input [7:0]ram_out;
  output [23:0]fir_out;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM
   (E,
    \ram_out_reg[7]_0 ,
    Q,
    \ram_out_reg[7]_1 ,
    \ram_out_reg[7]_2 ,
    \ram_reg[7][0]_0 ,
    \ram_reg[7][0]_1 ,
    s00_axi_aclk);
  output [0:0]E;
  output [7:0]\ram_out_reg[7]_0 ;
  input [7:0]Q;
  input [2:0]\ram_out_reg[7]_1 ;
  input \ram_out_reg[7]_2 ;
  input [0:0]\ram_reg[7][0]_0 ;
  input [0:0]\ram_reg[7][0]_1 ;
  input s00_axi_aclk;

  wire [0:0]E;
  wire [7:0]Q;
  wire \ram_out[0]_i_1_n_0 ;
  wire \ram_out[0]_i_2_n_0 ;
  wire \ram_out[0]_i_3_n_0 ;
  wire \ram_out[1]_i_1_n_0 ;
  wire \ram_out[1]_i_2_n_0 ;
  wire \ram_out[1]_i_3_n_0 ;
  wire \ram_out[2]_i_1_n_0 ;
  wire \ram_out[2]_i_2_n_0 ;
  wire \ram_out[2]_i_3_n_0 ;
  wire \ram_out[3]_i_1_n_0 ;
  wire \ram_out[3]_i_2_n_0 ;
  wire \ram_out[3]_i_3_n_0 ;
  wire \ram_out[4]_i_1_n_0 ;
  wire \ram_out[4]_i_2_n_0 ;
  wire \ram_out[4]_i_3_n_0 ;
  wire \ram_out[5]_i_1_n_0 ;
  wire \ram_out[5]_i_2_n_0 ;
  wire \ram_out[5]_i_3_n_0 ;
  wire \ram_out[6]_i_1_n_0 ;
  wire \ram_out[6]_i_2_n_0 ;
  wire \ram_out[6]_i_3_n_0 ;
  wire \ram_out[7]_i_1_n_0 ;
  wire \ram_out[7]_i_2_n_0 ;
  wire \ram_out[7]_i_3_n_0 ;
  wire [7:0]\ram_out_reg[7]_0 ;
  wire [2:0]\ram_out_reg[7]_1 ;
  wire \ram_out_reg[7]_2 ;
  wire [7:0]\ram_reg[0] ;
  wire [7:0]\ram_reg[1] ;
  wire [7:0]\ram_reg[2] ;
  wire [7:0]\ram_reg[3] ;
  wire [7:0]\ram_reg[4] ;
  wire [7:0]\ram_reg[5] ;
  wire [7:0]\ram_reg[6] ;
  wire [7:0]\ram_reg[7] ;
  wire [0:0]\ram_reg[7][0]_0 ;
  wire [0:0]\ram_reg[7][0]_1 ;
  wire s00_axi_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    MAC_Unit_i_1
       (.I0(\ram_reg[7][0]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[0]_i_1 
       (.I0(Q[0]),
        .I1(\ram_out[0]_i_2_n_0 ),
        .I2(\ram_out_reg[7]_1 [2]),
        .I3(\ram_out[0]_i_3_n_0 ),
        .I4(\ram_out_reg[7]_2 ),
        .O(\ram_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[0]_i_2 
       (.I0(\ram_reg[7] [0]),
        .I1(\ram_reg[6] [0]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [0]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [0]),
        .O(\ram_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[0]_i_3 
       (.I0(\ram_reg[3] [0]),
        .I1(\ram_reg[2] [0]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [0]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [0]),
        .O(\ram_out[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[1]_i_1 
       (.I0(Q[1]),
        .I1(\ram_out[1]_i_2_n_0 ),
        .I2(\ram_out_reg[7]_1 [2]),
        .I3(\ram_out[1]_i_3_n_0 ),
        .I4(\ram_out_reg[7]_2 ),
        .O(\ram_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[1]_i_2 
       (.I0(\ram_reg[7] [1]),
        .I1(\ram_reg[6] [1]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [1]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [1]),
        .O(\ram_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[1]_i_3 
       (.I0(\ram_reg[3] [1]),
        .I1(\ram_reg[2] [1]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [1]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [1]),
        .O(\ram_out[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[2]_i_1 
       (.I0(Q[2]),
        .I1(\ram_out[2]_i_2_n_0 ),
        .I2(\ram_out_reg[7]_1 [2]),
        .I3(\ram_out[2]_i_3_n_0 ),
        .I4(\ram_out_reg[7]_2 ),
        .O(\ram_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[2]_i_2 
       (.I0(\ram_reg[7] [2]),
        .I1(\ram_reg[6] [2]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [2]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [2]),
        .O(\ram_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[2]_i_3 
       (.I0(\ram_reg[3] [2]),
        .I1(\ram_reg[2] [2]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [2]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [2]),
        .O(\ram_out[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[3]_i_1 
       (.I0(Q[3]),
        .I1(\ram_out[3]_i_2_n_0 ),
        .I2(\ram_out_reg[7]_1 [2]),
        .I3(\ram_out[3]_i_3_n_0 ),
        .I4(\ram_out_reg[7]_2 ),
        .O(\ram_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[3]_i_2 
       (.I0(\ram_reg[7] [3]),
        .I1(\ram_reg[6] [3]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [3]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [3]),
        .O(\ram_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[3]_i_3 
       (.I0(\ram_reg[3] [3]),
        .I1(\ram_reg[2] [3]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [3]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [3]),
        .O(\ram_out[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[4]_i_1 
       (.I0(Q[4]),
        .I1(\ram_out[4]_i_2_n_0 ),
        .I2(\ram_out_reg[7]_1 [2]),
        .I3(\ram_out[4]_i_3_n_0 ),
        .I4(\ram_out_reg[7]_2 ),
        .O(\ram_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[4]_i_2 
       (.I0(\ram_reg[7] [4]),
        .I1(\ram_reg[6] [4]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [4]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [4]),
        .O(\ram_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[4]_i_3 
       (.I0(\ram_reg[3] [4]),
        .I1(\ram_reg[2] [4]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [4]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [4]),
        .O(\ram_out[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[5]_i_1 
       (.I0(Q[5]),
        .I1(\ram_out[5]_i_2_n_0 ),
        .I2(\ram_out_reg[7]_1 [2]),
        .I3(\ram_out[5]_i_3_n_0 ),
        .I4(\ram_out_reg[7]_2 ),
        .O(\ram_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[5]_i_2 
       (.I0(\ram_reg[7] [5]),
        .I1(\ram_reg[6] [5]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [5]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [5]),
        .O(\ram_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[5]_i_3 
       (.I0(\ram_reg[3] [5]),
        .I1(\ram_reg[2] [5]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [5]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [5]),
        .O(\ram_out[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[6]_i_1 
       (.I0(Q[6]),
        .I1(\ram_out[6]_i_2_n_0 ),
        .I2(\ram_out_reg[7]_1 [2]),
        .I3(\ram_out[6]_i_3_n_0 ),
        .I4(\ram_out_reg[7]_2 ),
        .O(\ram_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[6]_i_2 
       (.I0(\ram_reg[7] [6]),
        .I1(\ram_reg[6] [6]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [6]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [6]),
        .O(\ram_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[6]_i_3 
       (.I0(\ram_reg[3] [6]),
        .I1(\ram_reg[2] [6]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [6]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [6]),
        .O(\ram_out[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \ram_out[7]_i_1 
       (.I0(Q[7]),
        .I1(\ram_out[7]_i_2_n_0 ),
        .I2(\ram_out_reg[7]_1 [2]),
        .I3(\ram_out[7]_i_3_n_0 ),
        .I4(\ram_out_reg[7]_2 ),
        .O(\ram_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[7]_i_2 
       (.I0(\ram_reg[7] [7]),
        .I1(\ram_reg[6] [7]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[5] [7]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[4] [7]),
        .O(\ram_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ram_out[7]_i_3 
       (.I0(\ram_reg[3] [7]),
        .I1(\ram_reg[2] [7]),
        .I2(\ram_out_reg[7]_1 [1]),
        .I3(\ram_reg[1] [7]),
        .I4(\ram_out_reg[7]_1 [0]),
        .I5(\ram_reg[0] [7]),
        .O(\ram_out[7]_i_3_n_0 ));
  FDRE \ram_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\ram_out[0]_i_1_n_0 ),
        .Q(\ram_out_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \ram_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\ram_out[1]_i_1_n_0 ),
        .Q(\ram_out_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \ram_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\ram_out[2]_i_1_n_0 ),
        .Q(\ram_out_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \ram_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\ram_out[3]_i_1_n_0 ),
        .Q(\ram_out_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \ram_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\ram_out[4]_i_1_n_0 ),
        .Q(\ram_out_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \ram_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\ram_out[5]_i_1_n_0 ),
        .Q(\ram_out_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \ram_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\ram_out[6]_i_1_n_0 ),
        .Q(\ram_out_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \ram_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\ram_out[7]_i_1_n_0 ),
        .Q(\ram_out_reg[7]_0 [7]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(Q[0]),
        .Q(\ram_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(Q[1]),
        .Q(\ram_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(Q[2]),
        .Q(\ram_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(Q[3]),
        .Q(\ram_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(Q[4]),
        .Q(\ram_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(Q[5]),
        .Q(\ram_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(Q[6]),
        .Q(\ram_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(Q[7]),
        .Q(\ram_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[0] [0]),
        .Q(\ram_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[0] [1]),
        .Q(\ram_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[0] [2]),
        .Q(\ram_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[0] [3]),
        .Q(\ram_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[0] [4]),
        .Q(\ram_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[0] [5]),
        .Q(\ram_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[0] [6]),
        .Q(\ram_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[0] [7]),
        .Q(\ram_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[1] [0]),
        .Q(\ram_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[1] [1]),
        .Q(\ram_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[1] [2]),
        .Q(\ram_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[1] [3]),
        .Q(\ram_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[1] [4]),
        .Q(\ram_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[1] [5]),
        .Q(\ram_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[1] [6]),
        .Q(\ram_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[1] [7]),
        .Q(\ram_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[2] [0]),
        .Q(\ram_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[2] [1]),
        .Q(\ram_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[2] [2]),
        .Q(\ram_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[2] [3]),
        .Q(\ram_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[2] [4]),
        .Q(\ram_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[2] [5]),
        .Q(\ram_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[2] [6]),
        .Q(\ram_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[2] [7]),
        .Q(\ram_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[3] [0]),
        .Q(\ram_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[3] [1]),
        .Q(\ram_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[3] [2]),
        .Q(\ram_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[3] [3]),
        .Q(\ram_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][4] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[3] [4]),
        .Q(\ram_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][5] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[3] [5]),
        .Q(\ram_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][6] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[3] [6]),
        .Q(\ram_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[4][7] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[3] [7]),
        .Q(\ram_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[4] [0]),
        .Q(\ram_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[4] [1]),
        .Q(\ram_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[4] [2]),
        .Q(\ram_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[4] [3]),
        .Q(\ram_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][4] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[4] [4]),
        .Q(\ram_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][5] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[4] [5]),
        .Q(\ram_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][6] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[4] [6]),
        .Q(\ram_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[5][7] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[4] [7]),
        .Q(\ram_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][0] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[5] [0]),
        .Q(\ram_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][1] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[5] [1]),
        .Q(\ram_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][2] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[5] [2]),
        .Q(\ram_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][3] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[5] [3]),
        .Q(\ram_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][4] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[5] [4]),
        .Q(\ram_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][5] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[5] [5]),
        .Q(\ram_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][6] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[5] [6]),
        .Q(\ram_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[6][7] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[5] [7]),
        .Q(\ram_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][0] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[6] [0]),
        .Q(\ram_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][1] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[6] [1]),
        .Q(\ram_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][2] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[6] [2]),
        .Q(\ram_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][3] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[6] [3]),
        .Q(\ram_reg[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][4] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[6] [4]),
        .Q(\ram_reg[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][5] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[6] [5]),
        .Q(\ram_reg[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][6] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[6] [6]),
        .Q(\ram_reg[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_reg[7][7] 
       (.C(s00_axi_aclk),
        .CE(\ram_reg[7][0]_1 ),
        .CLR(\ram_reg[7][0]_0 ),
        .D(\ram_reg[6] [7]),
        .Q(\ram_reg[7] [7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ROM
   (Q,
    E,
    D,
    s00_axi_aclk);
  output [3:0]Q;
  input [0:0]E;
  input [3:0]D;
  input s00_axi_aclk;

  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire s00_axi_aclk;

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
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
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
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
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
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
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
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
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
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
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
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
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
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;
  wire valid_in;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_filter_unit FIR
       (.D(reg_data_out[24:0]),
        .Q({\slv_reg0_reg_n_0_[24] ,\slv_reg0_reg_n_0_[23] ,\slv_reg0_reg_n_0_[22] ,\slv_reg0_reg_n_0_[21] ,\slv_reg0_reg_n_0_[20] ,\slv_reg0_reg_n_0_[19] ,\slv_reg0_reg_n_0_[18] ,\slv_reg0_reg_n_0_[17] ,\slv_reg0_reg_n_0_[16] ,\slv_reg0_reg_n_0_[15] ,\slv_reg0_reg_n_0_[14] ,\slv_reg0_reg_n_0_[13] ,\slv_reg0_reg_n_0_[12] ,\slv_reg0_reg_n_0_[11] ,\slv_reg0_reg_n_0_[10] ,rst,valid_in,\slv_reg0_reg_n_0_[7] ,\slv_reg0_reg_n_0_[6] ,\slv_reg0_reg_n_0_[5] ,\slv_reg0_reg_n_0_[4] ,\slv_reg0_reg_n_0_[3] ,\slv_reg0_reg_n_0_[2] ,\slv_reg0_reg_n_0_[1] ,\slv_reg0_reg_n_0_[0] }),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[24] (slv_reg3[24:0]),
        .\axi_rdata_reg[24]_0 (slv_reg2[24:0]),
        .s00_axi_aclk(s00_axi_aclk));
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg3[25]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[25]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg3[26]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[26]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg3[27]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[27]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg3[28]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[28]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg3[29]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg3[30]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[30]),
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
       (.I0(slv_reg3[31]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[31]),
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
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
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(valid_in),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(rst),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
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
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zybo_design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zybo_design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
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
