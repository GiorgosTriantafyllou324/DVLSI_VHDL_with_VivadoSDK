-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Apr 24 02:28:42 2024
-- Host        : DESKTOP-7A5ODGC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zybo_design_1_fir_filter_ip_0_0_sim_netlist.vhdl
-- Design      : zybo_design_1_fir_filter_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[2]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \ram_in_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_reg[1]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_fir : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    result00_out : in STD_LOGIC_VECTOR ( 19 downto 0 );
    result0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \ram_out_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ram_out_reg[0]\ : in STD_LOGIC;
    \ram_out_reg[0]_0\ : in STD_LOGIC;
    \ram_out_reg[1]\ : in STD_LOGIC;
    \ram_out_reg[1]_0\ : in STD_LOGIC;
    \ram_out_reg[2]\ : in STD_LOGIC;
    \ram_out_reg[2]_0\ : in STD_LOGIC;
    \ram_out_reg[3]\ : in STD_LOGIC;
    \ram_out_reg[3]_0\ : in STD_LOGIC;
    \ram_out_reg[4]\ : in STD_LOGIC;
    \ram_out_reg[4]_0\ : in STD_LOGIC;
    \ram_out_reg[5]\ : in STD_LOGIC;
    \ram_out_reg[5]_0\ : in STD_LOGIC;
    \ram_out_reg[6]\ : in STD_LOGIC;
    \ram_out_reg[6]_0\ : in STD_LOGIC;
    \ram_out_reg[7]_0\ : in STD_LOGIC;
    \ram_out_reg[7]_1\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \^count_reg[1]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_out[7]_i_2_n_0\ : STD_LOGIC;
  signal rom_addr : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ram[0][7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ram_out[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \result[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \result[18]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \result[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \result[21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \result[22]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result[23]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \result[23]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \result[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \result[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \result[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rom_out[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rom_out[3]_i_2\ : label is "soft_lutpair3";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \count_reg[1]_0\(3 downto 0) <= \^count_reg[1]_0\(3 downto 0);
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \^count_reg[1]_0\(0)
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \^count_reg[1]_0\(1)
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => rom_addr(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \count[2]_i_1__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_fir,
      D => \^count_reg[1]_0\(0),
      Q => \^q\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_fir,
      D => \^count_reg[1]_0\(1),
      Q => \^q\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_fir,
      D => \count[2]_i_1__0_n_0\,
      Q => rom_addr(2)
    );
\ram[0][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => valid_in,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => reset_fir,
      O => E(0)
    );
\ram_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \ram_out_reg[7]\(0),
      I1 => valid_in,
      I2 => \ram_out[7]_i_2_n_0\,
      I3 => \ram_out_reg[0]\,
      I4 => rom_addr(2),
      I5 => \ram_out_reg[0]_0\,
      O => \ram_in_reg[7]\(0)
    );
\ram_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \ram_out_reg[7]\(1),
      I1 => valid_in,
      I2 => \ram_out[7]_i_2_n_0\,
      I3 => \ram_out_reg[1]\,
      I4 => rom_addr(2),
      I5 => \ram_out_reg[1]_0\,
      O => \ram_in_reg[7]\(1)
    );
\ram_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \ram_out_reg[7]\(2),
      I1 => valid_in,
      I2 => \ram_out[7]_i_2_n_0\,
      I3 => \ram_out_reg[2]\,
      I4 => rom_addr(2),
      I5 => \ram_out_reg[2]_0\,
      O => \ram_in_reg[7]\(2)
    );
\ram_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \ram_out_reg[7]\(3),
      I1 => valid_in,
      I2 => \ram_out[7]_i_2_n_0\,
      I3 => \ram_out_reg[3]\,
      I4 => rom_addr(2),
      I5 => \ram_out_reg[3]_0\,
      O => \ram_in_reg[7]\(3)
    );
\ram_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \ram_out_reg[7]\(4),
      I1 => valid_in,
      I2 => \ram_out[7]_i_2_n_0\,
      I3 => \ram_out_reg[4]\,
      I4 => rom_addr(2),
      I5 => \ram_out_reg[4]_0\,
      O => \ram_in_reg[7]\(4)
    );
\ram_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \ram_out_reg[7]\(5),
      I1 => valid_in,
      I2 => \ram_out[7]_i_2_n_0\,
      I3 => \ram_out_reg[5]\,
      I4 => rom_addr(2),
      I5 => \ram_out_reg[5]_0\,
      O => \ram_in_reg[7]\(5)
    );
\ram_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \ram_out_reg[7]\(6),
      I1 => valid_in,
      I2 => \ram_out[7]_i_2_n_0\,
      I3 => \ram_out_reg[6]\,
      I4 => rom_addr(2),
      I5 => \ram_out_reg[6]_0\,
      O => \ram_in_reg[7]\(6)
    );
\ram_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \ram_out_reg[7]\(7),
      I1 => valid_in,
      I2 => \ram_out[7]_i_2_n_0\,
      I3 => \ram_out_reg[7]_0\,
      I4 => rom_addr(2),
      I5 => \ram_out_reg[7]_1\,
      O => \ram_in_reg[7]\(7)
    );
\ram_out[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => rom_addr(2),
      O => \ram_out[7]_i_2_n_0\
    );
\result[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => result00_out(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => result0(0),
      O => D(0)
    );
\result[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => result00_out(10),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => result0(10),
      O => D(10)
    );
\result[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => result00_out(11),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => result0(11),
      O => D(11)
    );
\result[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rom_addr(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => reset_fir,
      O => \count_reg[2]_0\
    );
\result[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => result00_out(12),
      I1 => rom_addr(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(12)
    );
\result[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => result00_out(13),
      I1 => rom_addr(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(13)
    );
\result[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => result00_out(14),
      I1 => rom_addr(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(14)
    );
\result[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => result00_out(15),
      I1 => rom_addr(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(15)
    );
\result[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => result00_out(1),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => result0(1),
      O => D(1)
    );
\result[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => result00_out(16),
      I1 => rom_addr(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(16)
    );
\result[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => result00_out(17),
      I1 => rom_addr(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(17)
    );
\result[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => result00_out(18),
      I1 => rom_addr(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(18)
    );
\result[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => reset_fir,
      I1 => rom_addr(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => SR(0)
    );
\result[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => result00_out(19),
      I1 => rom_addr(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(19)
    );
\result[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => result00_out(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => result0(2),
      O => D(2)
    );
\result[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => result00_out(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => result0(3),
      O => D(3)
    );
\result[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => result00_out(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => result0(4),
      O => D(4)
    );
\result[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => result00_out(5),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => result0(5),
      O => D(5)
    );
\result[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => result00_out(6),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => result0(6),
      O => D(6)
    );
\result[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => result00_out(7),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => result0(7),
      O => D(7)
    );
\result[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => result00_out(8),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => result0(8),
      O => D(8)
    );
\result[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => result00_out(9),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rom_addr(2),
      I4 => result0(9),
      O => D(9)
    );
\rom_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => \^q\(1),
      I1 => rom_addr(2),
      I2 => \^q\(0),
      O => \^count_reg[1]_0\(2)
    );
\rom_out[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => rom_addr(2),
      I2 => \^q\(0),
      O => \^count_reg[1]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC is
  port (
    result0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rom_en : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[2]_0\ : out STD_LOGIC;
    \count_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \result_reg[8]_0\ : out STD_LOGIC;
    \result_reg[23]_0\ : out STD_LOGIC_VECTOR ( 19 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result_reg[7]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result_reg[11]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \result_reg[11]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_fir : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg1_reg[23]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \result_reg[15]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC is
  signal count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \^count_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^count_reg[2]_0\ : STD_LOGIC;
  signal \fir_out_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \fir_out_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \fir_out_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \fir_out_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \fir_out_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \fir_out_reg[23]_i_7_n_0\ : STD_LOGIC;
  signal result : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^result0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal result00_out : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal \result0__0_carry__0_n_0\ : STD_LOGIC;
  signal \result0__0_carry__0_n_1\ : STD_LOGIC;
  signal \result0__0_carry__0_n_2\ : STD_LOGIC;
  signal \result0__0_carry__0_n_3\ : STD_LOGIC;
  signal \result0__0_carry__1_n_2\ : STD_LOGIC;
  signal \result0__0_carry__1_n_3\ : STD_LOGIC;
  signal \result0__0_carry_n_0\ : STD_LOGIC;
  signal \result0__0_carry_n_1\ : STD_LOGIC;
  signal \result0__0_carry_n_2\ : STD_LOGIC;
  signal \result0__0_carry_n_3\ : STD_LOGIC;
  signal \result[11]_i_3_n_0\ : STD_LOGIC;
  signal \result[11]_i_4_n_0\ : STD_LOGIC;
  signal \result[11]_i_5_n_0\ : STD_LOGIC;
  signal \result[11]_i_6_n_0\ : STD_LOGIC;
  signal \result[3]_i_3_n_0\ : STD_LOGIC;
  signal \result[3]_i_4_n_0\ : STD_LOGIC;
  signal \result[3]_i_5_n_0\ : STD_LOGIC;
  signal \result[3]_i_6_n_0\ : STD_LOGIC;
  signal \result[7]_i_3_n_0\ : STD_LOGIC;
  signal \result[7]_i_4_n_0\ : STD_LOGIC;
  signal \result[7]_i_5_n_0\ : STD_LOGIC;
  signal \result[7]_i_6_n_0\ : STD_LOGIC;
  signal \result_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg[23]_i_3_n_1\ : STD_LOGIC;
  signal \result_reg[23]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg[23]_i_3_n_3\ : STD_LOGIC;
  signal \result_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \^rom_en\ : STD_LOGIC;
  signal \slv_reg1[24]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg1[24]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg1[24]_i_5_n_0\ : STD_LOGIC;
  signal \NLW_result0__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_result0__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_result_reg[23]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[23]\ : label is "LD";
  attribute SOFT_HLUTNM of \fir_out_reg[23]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fir_out_reg[23]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fir_out_reg[23]_i_4\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fir_out_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \slv_reg1[23]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg1[24]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg1[24]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg1[24]_i_5\ : label is "soft_lutpair13";
begin
  \count_reg[0]_0\(0) <= \^count_reg[0]_0\(0);
  \count_reg[2]_0\ <= \^count_reg[2]_0\;
  result0(11 downto 0) <= \^result0\(11 downto 0);
  rom_en <= \^rom_en\;
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => \count[0]_i_1__0_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count(2),
      I1 => count(1),
      I2 => count(0),
      O => \count[2]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => \count[0]_i_1__0_n_0\,
      Q => count(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => \count[1]_i_1_n_0\,
      Q => count(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => \count[2]_i_1_n_0\,
      Q => count(2),
      R => '0'
    );
\fir_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(0),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(0)
    );
\fir_out_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(10),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(10)
    );
\fir_out_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(11),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(11)
    );
\fir_out_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(12),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(12)
    );
\fir_out_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(13),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(13)
    );
\fir_out_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(14),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(14)
    );
\fir_out_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(15),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(15)
    );
\fir_out_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(16),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(16)
    );
\fir_out_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(17),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(17)
    );
\fir_out_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(18),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(18)
    );
\fir_out_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(19),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(19)
    );
\fir_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(1),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(1)
    );
\fir_out_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(20),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(20)
    );
\fir_out_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(21),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(21)
    );
\fir_out_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(22),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(22)
    );
\fir_out_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(23),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(23)
    );
\fir_out_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000FE"
    )
        port map (
      I0 => \fir_out_reg[23]_i_2_n_0\,
      I1 => \fir_out_reg[23]_i_3_n_0\,
      I2 => \fir_out_reg[23]_i_4_n_0\,
      I3 => count(0),
      I4 => count(1),
      I5 => count(2),
      O => \^count_reg[0]_0\(0)
    );
\fir_out_reg[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => result(4),
      I1 => result(14),
      I2 => result(2),
      I3 => result(11),
      I4 => \fir_out_reg[23]_i_5_n_0\,
      O => \fir_out_reg[23]_i_2_n_0\
    );
\fir_out_reg[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => result(12),
      I1 => result(19),
      I2 => result(16),
      I3 => result(18),
      I4 => \fir_out_reg[23]_i_6_n_0\,
      O => \fir_out_reg[23]_i_3_n_0\
    );
\fir_out_reg[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => result(0),
      I1 => result(6),
      I2 => result(21),
      I3 => result(23),
      I4 => \fir_out_reg[23]_i_7_n_0\,
      O => \fir_out_reg[23]_i_4_n_0\
    );
\fir_out_reg[23]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => result(22),
      I1 => result(10),
      I2 => result(17),
      I3 => result(13),
      O => \fir_out_reg[23]_i_5_n_0\
    );
\fir_out_reg[23]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => result(9),
      I1 => result(1),
      I2 => result(20),
      I3 => result(5),
      O => \fir_out_reg[23]_i_6_n_0\
    );
\fir_out_reg[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => result(8),
      I1 => result(7),
      I2 => result(15),
      I3 => result(3),
      O => \fir_out_reg[23]_i_7_n_0\
    );
\fir_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(2),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(2)
    );
\fir_out_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(3),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(3)
    );
\fir_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(4),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(4)
    );
\fir_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(5),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(5)
    );
\fir_out_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(6),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(6)
    );
\fir_out_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(7),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(7)
    );
\fir_out_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(8),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(8)
    );
\fir_out_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => result(9),
      G => \^count_reg[0]_0\(0),
      GE => '1',
      Q => Q(9)
    );
\result0__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result0__0_carry_n_0\,
      CO(2) => \result0__0_carry_n_1\,
      CO(1) => \result0__0_carry_n_2\,
      CO(0) => \result0__0_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => \^result0\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\result0__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0__0_carry_n_0\,
      CO(3) => \result0__0_carry__0_n_0\,
      CO(2) => \result0__0_carry__0_n_1\,
      CO(1) => \result0__0_carry__0_n_2\,
      CO(0) => \result0__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \result_reg[7]_0\(3 downto 0),
      O(3 downto 0) => \^result0\(7 downto 4),
      S(3 downto 0) => \result_reg[7]_1\(3 downto 0)
    );
\result0__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0__0_carry__0_n_0\,
      CO(3) => \^result0\(11),
      CO(2) => \NLW_result0__0_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \result0__0_carry__1_n_2\,
      CO(0) => \result0__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \result_reg[11]_0\(2 downto 0),
      O(3) => \NLW_result0__0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \^result0\(10 downto 8),
      S(3) => '1',
      S(2 downto 0) => \result_reg[11]_1\(2 downto 0)
    );
\result[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(11),
      I1 => \^result0\(11),
      O => \result[11]_i_3_n_0\
    );
\result[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(10),
      I1 => \^result0\(10),
      O => \result[11]_i_4_n_0\
    );
\result[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(9),
      I1 => \^result0\(9),
      O => \result[11]_i_5_n_0\
    );
\result[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(8),
      I1 => \^result0\(8),
      O => \result[11]_i_6_n_0\
    );
\result[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(3),
      I1 => \^result0\(3),
      O => \result[3]_i_3_n_0\
    );
\result[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(2),
      I1 => \^result0\(2),
      O => \result[3]_i_4_n_0\
    );
\result[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(1),
      I1 => \^result0\(1),
      O => \result[3]_i_5_n_0\
    );
\result[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(0),
      I1 => \^result0\(0),
      O => \result[3]_i_6_n_0\
    );
\result[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(7),
      I1 => \^result0\(7),
      O => \result[7]_i_3_n_0\
    );
\result[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(6),
      I1 => \^result0\(6),
      O => \result[7]_i_4_n_0\
    );
\result[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(5),
      I1 => \^result0\(5),
      O => \result[7]_i_5_n_0\
    );
\result[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => result(4),
      I1 => \^result0\(4),
      O => \result[7]_i_6_n_0\
    );
\result_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(0),
      Q => result(0),
      R => '0'
    );
\result_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(10),
      Q => result(10),
      R => '0'
    );
\result_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(11),
      Q => result(11),
      R => '0'
    );
\result_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[7]_i_2_n_0\,
      CO(3) => \result_reg[11]_i_2_n_0\,
      CO(2) => \result_reg[11]_i_2_n_1\,
      CO(1) => \result_reg[11]_i_2_n_2\,
      CO(0) => \result_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => result(11 downto 8),
      O(3 downto 0) => \result_reg[23]_0\(11 downto 8),
      S(3) => \result[11]_i_3_n_0\,
      S(2) => \result[11]_i_4_n_0\,
      S(1) => \result[11]_i_5_n_0\,
      S(0) => \result[11]_i_6_n_0\
    );
\result_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => result00_out(12),
      Q => result(12),
      R => \result_reg[15]_0\
    );
\result_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => result00_out(13),
      Q => result(13),
      R => \result_reg[15]_0\
    );
\result_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => result00_out(14),
      Q => result(14),
      R => \result_reg[15]_0\
    );
\result_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => result00_out(15),
      Q => result(15),
      R => \result_reg[15]_0\
    );
\result_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[11]_i_2_n_0\,
      CO(3) => \result_reg[15]_i_2_n_0\,
      CO(2) => \result_reg[15]_i_2_n_1\,
      CO(1) => \result_reg[15]_i_2_n_2\,
      CO(0) => \result_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => result00_out(15 downto 12),
      S(3 downto 0) => result(15 downto 12)
    );
\result_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(12),
      Q => result(16),
      R => SR(0)
    );
\result_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(13),
      Q => result(17),
      R => SR(0)
    );
\result_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(14),
      Q => result(18),
      R => SR(0)
    );
\result_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(15),
      Q => result(19),
      R => SR(0)
    );
\result_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[15]_i_2_n_0\,
      CO(3) => \result_reg[19]_i_2_n_0\,
      CO(2) => \result_reg[19]_i_2_n_1\,
      CO(1) => \result_reg[19]_i_2_n_2\,
      CO(0) => \result_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \result_reg[23]_0\(15 downto 12),
      S(3 downto 0) => result(19 downto 16)
    );
\result_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(1),
      Q => result(1),
      R => '0'
    );
\result_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(16),
      Q => result(20),
      R => SR(0)
    );
\result_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(17),
      Q => result(21),
      R => SR(0)
    );
\result_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(18),
      Q => result(22),
      R => SR(0)
    );
\result_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(19),
      Q => result(23),
      R => SR(0)
    );
\result_reg[23]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[19]_i_2_n_0\,
      CO(3) => \NLW_result_reg[23]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \result_reg[23]_i_3_n_1\,
      CO(1) => \result_reg[23]_i_3_n_2\,
      CO(0) => \result_reg[23]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \result_reg[23]_0\(19 downto 16),
      S(3 downto 0) => result(23 downto 20)
    );
\result_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(2),
      Q => result(2),
      R => '0'
    );
\result_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(3),
      Q => result(3),
      R => '0'
    );
\result_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_reg[3]_i_2_n_0\,
      CO(2) => \result_reg[3]_i_2_n_1\,
      CO(1) => \result_reg[3]_i_2_n_2\,
      CO(0) => \result_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => result(3 downto 0),
      O(3 downto 0) => \result_reg[23]_0\(3 downto 0),
      S(3) => \result[3]_i_3_n_0\,
      S(2) => \result[3]_i_4_n_0\,
      S(1) => \result[3]_i_5_n_0\,
      S(0) => \result[3]_i_6_n_0\
    );
\result_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(4),
      Q => result(4),
      R => '0'
    );
\result_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(5),
      Q => result(5),
      R => '0'
    );
\result_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(6),
      Q => result(6),
      R => '0'
    );
\result_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(7),
      Q => result(7),
      R => '0'
    );
\result_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[3]_i_2_n_0\,
      CO(3) => \result_reg[7]_i_2_n_0\,
      CO(2) => \result_reg[7]_i_2_n_1\,
      CO(1) => \result_reg[7]_i_2_n_2\,
      CO(0) => \result_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => result(7 downto 4),
      O(3 downto 0) => \result_reg[23]_0\(7 downto 4),
      S(3) => \result[7]_i_3_n_0\,
      S(2) => \result[7]_i_4_n_0\,
      S(1) => \result[7]_i_5_n_0\,
      S(0) => \result[7]_i_6_n_0\
    );
\result_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(8),
      Q => result(8),
      R => '0'
    );
\result_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^rom_en\,
      D => D(9),
      Q => result(9),
      R => '0'
    );
\rom_out[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_fir,
      O => \^rom_en\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540000"
    )
        port map (
      I0 => \^count_reg[2]_0\,
      I1 => \fir_out_reg[23]_i_4_n_0\,
      I2 => \fir_out_reg[23]_i_3_n_0\,
      I3 => \fir_out_reg[23]_i_2_n_0\,
      I4 => s00_axi_aresetn,
      I5 => \slv_reg1_reg[23]\(0),
      O => E(0)
    );
\slv_reg1[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => count(2),
      I1 => count(1),
      I2 => count(0),
      O => \^count_reg[2]_0\
    );
\slv_reg1[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \fir_out_reg[23]_i_7_n_0\,
      I1 => \slv_reg1[24]_i_3_n_0\,
      I2 => \slv_reg1[24]_i_4_n_0\,
      I3 => \fir_out_reg[23]_i_6_n_0\,
      I4 => \slv_reg1[24]_i_5_n_0\,
      I5 => \fir_out_reg[23]_i_5_n_0\,
      O => \result_reg[8]_0\
    );
\slv_reg1[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => result(23),
      I1 => result(21),
      I2 => result(6),
      I3 => result(0),
      O => \slv_reg1[24]_i_3_n_0\
    );
\slv_reg1[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => result(18),
      I1 => result(16),
      I2 => result(19),
      I3 => result(12),
      O => \slv_reg1[24]_i_4_n_0\
    );
\slv_reg1[24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => result(11),
      I1 => result(2),
      I2 => result(14),
      I3 => result(4),
      O => \slv_reg1[24]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM is
  port (
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \ram_out_reg[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ram_out_reg[1]_0\ : out STD_LOGIC;
    \ram_out_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_reg[3][7]_0\ : out STD_LOGIC;
    \ram_reg[7][7]_0\ : out STD_LOGIC;
    \ram_reg[3][6]_0\ : out STD_LOGIC;
    \ram_reg[7][6]_0\ : out STD_LOGIC;
    \ram_reg[3][5]_0\ : out STD_LOGIC;
    \ram_reg[7][5]_0\ : out STD_LOGIC;
    \ram_reg[3][4]_0\ : out STD_LOGIC;
    \ram_reg[7][4]_0\ : out STD_LOGIC;
    \ram_reg[3][3]_0\ : out STD_LOGIC;
    \ram_reg[7][3]_0\ : out STD_LOGIC;
    \ram_reg[3][2]_0\ : out STD_LOGIC;
    \ram_reg[7][2]_0\ : out STD_LOGIC;
    \ram_reg[3][1]_0\ : out STD_LOGIC;
    \ram_reg[7][1]_0\ : out STD_LOGIC;
    \ram_reg[3][0]_0\ : out STD_LOGIC;
    \ram_reg[7][0]_0\ : out STD_LOGIC;
    \ram_out_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \result0__0_carry__1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0__0_carry__0\ : in STD_LOGIC;
    \ram_out_reg[7]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_reg[0][7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    reset_fir : in STD_LOGIC;
    \ram_out_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ram_out_reg[4]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ram_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \result0__0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \result0__0_carry__0_i_17_n_0\ : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \ram_out_reg[4]_0\(1 downto 0) <= \^ram_out_reg[4]_0\(1 downto 0);
\ram_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(0),
      I1 => \ram_reg[6]\(0),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[5]\(0),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[4]\(0),
      O => \ram_reg[7][0]_0\
    );
\ram_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(0),
      I1 => \ram_reg[2]\(0),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[1]\(0),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[0]\(0),
      O => \ram_reg[3][0]_0\
    );
\ram_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(1),
      I1 => \ram_reg[6]\(1),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[5]\(1),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[4]\(1),
      O => \ram_reg[7][1]_0\
    );
\ram_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(1),
      I1 => \ram_reg[2]\(1),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[1]\(1),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[0]\(1),
      O => \ram_reg[3][1]_0\
    );
\ram_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(2),
      I1 => \ram_reg[6]\(2),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[5]\(2),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[4]\(2),
      O => \ram_reg[7][2]_0\
    );
\ram_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(2),
      I1 => \ram_reg[2]\(2),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[1]\(2),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[0]\(2),
      O => \ram_reg[3][2]_0\
    );
\ram_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(3),
      I1 => \ram_reg[6]\(3),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[5]\(3),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[4]\(3),
      O => \ram_reg[7][3]_0\
    );
\ram_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(3),
      I1 => \ram_reg[2]\(3),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[1]\(3),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[0]\(3),
      O => \ram_reg[3][3]_0\
    );
\ram_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(4),
      I1 => \ram_reg[6]\(4),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[5]\(4),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[4]\(4),
      O => \ram_reg[7][4]_0\
    );
\ram_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(4),
      I1 => \ram_reg[2]\(4),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[1]\(4),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[0]\(4),
      O => \ram_reg[3][4]_0\
    );
\ram_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(5),
      I1 => \ram_reg[6]\(5),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[5]\(5),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[4]\(5),
      O => \ram_reg[7][5]_0\
    );
\ram_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(5),
      I1 => \ram_reg[2]\(5),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[1]\(5),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[0]\(5),
      O => \ram_reg[3][5]_0\
    );
\ram_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(6),
      I1 => \ram_reg[6]\(6),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[5]\(6),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[4]\(6),
      O => \ram_reg[7][6]_0\
    );
\ram_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(6),
      I1 => \ram_reg[2]\(6),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[1]\(6),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[0]\(6),
      O => \ram_reg[3][6]_0\
    );
\ram_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(7),
      I1 => \ram_reg[6]\(7),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[5]\(7),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[4]\(7),
      O => \ram_reg[7][7]_0\
    );
\ram_out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(7),
      I1 => \ram_reg[2]\(7),
      I2 => \ram_out_reg[7]_1\(1),
      I3 => \ram_reg[1]\(7),
      I4 => \ram_out_reg[7]_1\(0),
      I5 => \ram_reg[0]\(7),
      O => \ram_reg[3][7]_0\
    );
\ram_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[0]_0\(0),
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\ram_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[0]_0\(0),
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
\ram_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[0]_0\(0),
      D => D(2),
      Q => \^q\(2),
      R => '0'
    );
\ram_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[0]_0\(0),
      D => D(3),
      Q => \^q\(3),
      R => '0'
    );
\ram_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[0]_0\(0),
      D => D(4),
      Q => \^q\(4),
      R => '0'
    );
\ram_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[0]_0\(0),
      D => D(5),
      Q => \^q\(5),
      R => '0'
    );
\ram_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[0]_0\(0),
      D => D(6),
      Q => \^q\(6),
      R => '0'
    );
\ram_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[0]_0\(0),
      D => D(7),
      Q => \^q\(7),
      R => '0'
    );
\ram_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0][7]_0\(0),
      Q => \ram_reg[0]\(0)
    );
\ram_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0][7]_0\(1),
      Q => \ram_reg[0]\(1)
    );
\ram_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0][7]_0\(2),
      Q => \ram_reg[0]\(2)
    );
\ram_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0][7]_0\(3),
      Q => \ram_reg[0]\(3)
    );
\ram_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0][7]_0\(4),
      Q => \ram_reg[0]\(4)
    );
\ram_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0][7]_0\(5),
      Q => \ram_reg[0]\(5)
    );
\ram_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0][7]_0\(6),
      Q => \ram_reg[0]\(6)
    );
\ram_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0][7]_0\(7),
      Q => \ram_reg[0]\(7)
    );
\ram_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0]\(0),
      Q => \ram_reg[1]\(0)
    );
\ram_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0]\(1),
      Q => \ram_reg[1]\(1)
    );
\ram_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0]\(2),
      Q => \ram_reg[1]\(2)
    );
\ram_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0]\(3),
      Q => \ram_reg[1]\(3)
    );
\ram_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0]\(4),
      Q => \ram_reg[1]\(4)
    );
\ram_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0]\(5),
      Q => \ram_reg[1]\(5)
    );
\ram_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0]\(6),
      Q => \ram_reg[1]\(6)
    );
\ram_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[0]\(7),
      Q => \ram_reg[1]\(7)
    );
\ram_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[1]\(0),
      Q => \ram_reg[2]\(0)
    );
\ram_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[1]\(1),
      Q => \ram_reg[2]\(1)
    );
\ram_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[1]\(2),
      Q => \ram_reg[2]\(2)
    );
\ram_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[1]\(3),
      Q => \ram_reg[2]\(3)
    );
\ram_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[1]\(4),
      Q => \ram_reg[2]\(4)
    );
\ram_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[1]\(5),
      Q => \ram_reg[2]\(5)
    );
\ram_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[1]\(6),
      Q => \ram_reg[2]\(6)
    );
\ram_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[1]\(7),
      Q => \ram_reg[2]\(7)
    );
\ram_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[2]\(0),
      Q => \ram_reg[3]\(0)
    );
\ram_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[2]\(1),
      Q => \ram_reg[3]\(1)
    );
\ram_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[2]\(2),
      Q => \ram_reg[3]\(2)
    );
\ram_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[2]\(3),
      Q => \ram_reg[3]\(3)
    );
\ram_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[2]\(4),
      Q => \ram_reg[3]\(4)
    );
\ram_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[2]\(5),
      Q => \ram_reg[3]\(5)
    );
\ram_reg[3][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[2]\(6),
      Q => \ram_reg[3]\(6)
    );
\ram_reg[3][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[2]\(7),
      Q => \ram_reg[3]\(7)
    );
\ram_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[3]\(0),
      Q => \ram_reg[4]\(0)
    );
\ram_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[3]\(1),
      Q => \ram_reg[4]\(1)
    );
\ram_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[3]\(2),
      Q => \ram_reg[4]\(2)
    );
\ram_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[3]\(3),
      Q => \ram_reg[4]\(3)
    );
\ram_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[3]\(4),
      Q => \ram_reg[4]\(4)
    );
\ram_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[3]\(5),
      Q => \ram_reg[4]\(5)
    );
\ram_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[3]\(6),
      Q => \ram_reg[4]\(6)
    );
\ram_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[3]\(7),
      Q => \ram_reg[4]\(7)
    );
\ram_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[4]\(0),
      Q => \ram_reg[5]\(0)
    );
\ram_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[4]\(1),
      Q => \ram_reg[5]\(1)
    );
\ram_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[4]\(2),
      Q => \ram_reg[5]\(2)
    );
\ram_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[4]\(3),
      Q => \ram_reg[5]\(3)
    );
\ram_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[4]\(4),
      Q => \ram_reg[5]\(4)
    );
\ram_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[4]\(5),
      Q => \ram_reg[5]\(5)
    );
\ram_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[4]\(6),
      Q => \ram_reg[5]\(6)
    );
\ram_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[4]\(7),
      Q => \ram_reg[5]\(7)
    );
\ram_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[5]\(0),
      Q => \ram_reg[6]\(0)
    );
\ram_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[5]\(1),
      Q => \ram_reg[6]\(1)
    );
\ram_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[5]\(2),
      Q => \ram_reg[6]\(2)
    );
\ram_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[5]\(3),
      Q => \ram_reg[6]\(3)
    );
\ram_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[5]\(4),
      Q => \ram_reg[6]\(4)
    );
\ram_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[5]\(5),
      Q => \ram_reg[6]\(5)
    );
\ram_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[5]\(6),
      Q => \ram_reg[6]\(6)
    );
\ram_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[5]\(7),
      Q => \ram_reg[6]\(7)
    );
\ram_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[6]\(0),
      Q => \ram_reg[7]\(0)
    );
\ram_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[6]\(1),
      Q => \ram_reg[7]\(1)
    );
\ram_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[6]\(2),
      Q => \ram_reg[7]\(2)
    );
\ram_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[6]\(3),
      Q => \ram_reg[7]\(3)
    );
\ram_reg[7][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[6]\(4),
      Q => \ram_reg[7]\(4)
    );
\ram_reg[7][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[6]\(5),
      Q => \ram_reg[7]\(5)
    );
\ram_reg[7][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[6]\(6),
      Q => \ram_reg[7]\(6)
    );
\ram_reg[7][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => reset_fir,
      D => \ram_reg[6]\(7),
      Q => \ram_reg[7]\(7)
    );
\result0__0_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \result0__0_carry__1\(0),
      I2 => \^q\(1),
      I3 => \result0__0_carry__1\(2),
      I4 => \^q\(0),
      I5 => \result0__0_carry__1\(1),
      O => \result0__0_carry__0_i_14_n_0\
    );
\result0__0_carry__0_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \result0__0_carry__1\(1),
      O => \result0__0_carry__0_i_17_n_0\
    );
\result0__0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \^q\(4),
      I1 => \result0__0_carry__1\(0),
      I2 => \result0__0_carry__0\,
      I3 => \result0__0_carry__0_i_14_n_0\,
      O => \^ram_out_reg[4]_0\(1)
    );
\result0__0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => \result0__0_carry__0_i_14_n_0\,
      I1 => \^q\(4),
      I2 => \result0__0_carry__1\(0),
      I3 => \result0__0_carry__0\,
      O => \^ram_out_reg[4]_0\(0)
    );
\result0__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56666AAA6AAA6AAA"
    )
        port map (
      I0 => \^ram_out_reg[4]_0\(0),
      I1 => \result0__0_carry__0_i_17_n_0\,
      I2 => \^q\(1),
      I3 => \result0__0_carry__1\(2),
      I4 => \^q\(0),
      I5 => \result0__0_carry__1\(3),
      O => \ram_out_reg[1]_1\(0)
    );
\result0__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(7),
      I1 => \result0__0_carry__1\(3),
      O => \ram_out_reg[7]_0\(0)
    );
\result0__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(0),
      I1 => \result0__0_carry__1\(2),
      I2 => \^q\(1),
      I3 => \result0__0_carry__1\(1),
      I4 => \^q\(2),
      I5 => \result0__0_carry__1\(0),
      O => S(1)
    );
\result0__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \result0__0_carry__1\(0),
      I2 => \result0__0_carry__1\(1),
      I3 => \^q\(0),
      O => S(0)
    );
\result0__0_carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \result0__0_carry__1\(2),
      O => \ram_out_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ROM is
  port (
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rom_out_reg[1]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \rom_out_reg[1]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rom_out_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ram_out_reg[7]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ram_out_reg[6]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \result0__0_carry__1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \result0__0_carry\ : in STD_LOGIC;
    \result0__0_carry__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ROM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ROM is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ram_out_reg[6]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \result0__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \result0__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \result0__0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \result0__0_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \result0__0_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \result0__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \result0__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \result0__0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \result0__0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \result0__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \^rom_out_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HLUTNM : string;
  attribute HLUTNM of \result0__0_carry__0_i_1\ : label is "lutpair0";
  attribute HLUTNM of \result0__0_carry__0_i_5\ : label is "lutpair1";
  attribute HLUTNM of \result0__0_carry__0_i_6\ : label is "lutpair0";
  attribute HLUTNM of \result0__0_carry__1_i_2\ : label is "lutpair2";
  attribute HLUTNM of \result0__0_carry__1_i_3\ : label is "lutpair1";
  attribute HLUTNM of \result0__0_carry__1_i_6\ : label is "lutpair2";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \ram_out_reg[6]\(1 downto 0) <= \^ram_out_reg[6]\(1 downto 0);
  \rom_out_reg[3]_0\(1 downto 0) <= \^rom_out_reg[3]_0\(1 downto 0);
\result0__0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D540"
    )
        port map (
      I0 => \result0__0_carry__0_i_9_n_0\,
      I1 => \result0__0_carry__1\(6),
      I2 => \^q\(0),
      I3 => \result0__0_carry__0_i_10_n_0\,
      O => \^ram_out_reg[6]\(1)
    );
\result0__0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \result0__0_carry__1\(5),
      I2 => \result0__0_carry__1\(4),
      I3 => \^q\(2),
      I4 => \result0__0_carry__1\(3),
      I5 => \^q\(3),
      O => \result0__0_carry__0_i_10_n_0\
    );
\result0__0_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07777FFF7FFF7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \result0__0_carry__1\(2),
      I2 => \^q\(3),
      I3 => \result0__0_carry__1\(1),
      I4 => \result0__0_carry__1\(3),
      I5 => \^q\(1),
      O => \result0__0_carry__0_i_11_n_0\
    );
\result0__0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \result0__0_carry__1\(4),
      I2 => \result0__0_carry__1\(3),
      I3 => \^q\(2),
      I4 => \result0__0_carry__1\(2),
      I5 => \^q\(3),
      O => \result0__0_carry__0_i_12_n_0\
    );
\result0__0_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \result0__0_carry__1\(3),
      I2 => \result0__0_carry__1\(2),
      I3 => \^q\(2),
      I4 => \result0__0_carry__1\(1),
      I5 => \^q\(3),
      O => \rom_out_reg[1]_0\
    );
\result0__0_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07777FFF7FFF7FFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \result0__0_carry__1\(3),
      I2 => \^q\(2),
      I3 => \result0__0_carry__1\(4),
      I4 => \result0__0_carry__1\(5),
      I5 => \^q\(1),
      O => \result0__0_carry__0_i_15_n_0\
    );
\result0__0_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \result0__0_carry__1\(6),
      I2 => \result0__0_carry__1\(5),
      I3 => \^q\(2),
      I4 => \result0__0_carry__1\(4),
      I5 => \^q\(3),
      O => \result0__0_carry__0_i_16_n_0\
    );
\result0__0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D540"
    )
        port map (
      I0 => \result0__0_carry__0_i_11_n_0\,
      I1 => \result0__0_carry__1\(5),
      I2 => \^q\(0),
      I3 => \result0__0_carry__0_i_12_n_0\,
      O => \^ram_out_reg[6]\(0)
    );
\result0__0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A95"
    )
        port map (
      I0 => \result0__0_carry__0_i_15_n_0\,
      I1 => \result0__0_carry__1\(7),
      I2 => \^q\(0),
      I3 => \result0__0_carry__0_i_16_n_0\,
      I4 => \^ram_out_reg[6]\(1),
      O => \ram_out_reg[7]\(2)
    );
\result0__0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A95"
    )
        port map (
      I0 => \result0__0_carry__0_i_9_n_0\,
      I1 => \result0__0_carry__1\(6),
      I2 => \^q\(0),
      I3 => \result0__0_carry__0_i_10_n_0\,
      I4 => \^ram_out_reg[6]\(0),
      O => \ram_out_reg[7]\(1)
    );
\result0__0_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A95"
    )
        port map (
      I0 => \result0__0_carry__0_i_11_n_0\,
      I1 => \result0__0_carry__1\(5),
      I2 => \^q\(0),
      I3 => \result0__0_carry__0_i_12_n_0\,
      I4 => \result0__0_carry__0\(0),
      O => \ram_out_reg[7]\(0)
    );
\result0__0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07777FFF7FFF7FFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \result0__0_carry__1\(2),
      I2 => \^q\(2),
      I3 => \result0__0_carry__1\(3),
      I4 => \result0__0_carry__1\(4),
      I5 => \^q\(1),
      O => \result0__0_carry__0_i_9_n_0\
    );
\result0__0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \result0__0_carry__1_i_7_n_0\,
      I1 => \result0__0_carry__1_i_8_n_0\,
      O => \^rom_out_reg[3]_0\(1)
    );
\result0__0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D540"
    )
        port map (
      I0 => \result0__0_carry__0_i_15_n_0\,
      I1 => \result0__0_carry__1\(7),
      I2 => \^q\(0),
      I3 => \result0__0_carry__0_i_16_n_0\,
      O => \^rom_out_reg[3]_0\(0)
    );
\result0__0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"173F8080C0000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \result0__0_carry__1\(6),
      I2 => \^q\(2),
      I3 => \result0__0_carry__1\(5),
      I4 => \^q\(3),
      I5 => \result0__0_carry__1\(7),
      O => \rom_out_reg[1]_1\(2)
    );
\result0__0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666699969996999"
    )
        port map (
      I0 => \^rom_out_reg[3]_0\(1),
      I1 => \result0__0_carry__1_i_9_n_0\,
      I2 => \^q\(3),
      I3 => \result0__0_carry__1\(6),
      I4 => \^q\(2),
      I5 => \result0__0_carry__1\(7),
      O => \rom_out_reg[1]_1\(1)
    );
\result0__0_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \result0__0_carry__1_i_7_n_0\,
      I1 => \result0__0_carry__1_i_8_n_0\,
      I2 => \^rom_out_reg[3]_0\(0),
      O => \rom_out_reg[1]_1\(0)
    );
\result0__0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \result0__0_carry__1\(4),
      I2 => \^q\(2),
      I3 => \result0__0_carry__1\(5),
      I4 => \result0__0_carry__1\(6),
      I5 => \^q\(1),
      O => \result0__0_carry__1_i_7_n_0\
    );
\result0__0_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \result0__0_carry__1\(7),
      I2 => \^q\(3),
      I3 => \result0__0_carry__1\(5),
      I4 => \^q\(2),
      I5 => \result0__0_carry__1\(6),
      O => \result0__0_carry__1_i_8_n_0\
    );
\result0__0_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07777FFF7FFF7FFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \result0__0_carry__1\(5),
      I2 => \^q\(2),
      I3 => \result0__0_carry__1\(6),
      I4 => \result0__0_carry__1\(7),
      I5 => \^q\(1),
      O => \result0__0_carry__1_i_9_n_0\
    );
\result0__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \result0__0_carry__1\(2),
      I2 => \result0__0_carry__1\(1),
      I3 => \^q\(2),
      I4 => \result0__0_carry__1\(0),
      I5 => \^q\(3),
      O => DI(2)
    );
\result0__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \result0__0_carry__1\(1),
      I2 => \^q\(2),
      I3 => \result0__0_carry__1\(0),
      O => DI(1)
    );
\result0__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \result0__0_carry__1\(1),
      O => DI(0)
    );
\result0__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696C33CA55A0FF0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \result0__0_carry__1\(2),
      I2 => \result0__0_carry_i_8_n_0\,
      I3 => \result0__0_carry\,
      I4 => \result0__0_carry__1\(0),
      I5 => \^q\(1),
      O => S(1)
    );
\result0__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \result0__0_carry__1\(0),
      O => S(0)
    );
\result0__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \result0__0_carry__1\(3),
      O => \result0__0_carry_i_8_n_0\
    );
\rom_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\rom_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
\rom_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => '0'
    );
\rom_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_filter_unit is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[2]\ : out STD_LOGIC;
    valid_out : out STD_LOGIC;
    \result_reg[8]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    reset_fir : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg1_reg[23]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ram_in_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_filter_unit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_filter_unit is
  signal A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CU_n_0 : STD_LOGIC;
  signal CU_n_10 : STD_LOGIC;
  signal CU_n_11 : STD_LOGIC;
  signal CU_n_12 : STD_LOGIC;
  signal CU_n_13 : STD_LOGIC;
  signal CU_n_14 : STD_LOGIC;
  signal CU_n_15 : STD_LOGIC;
  signal CU_n_16 : STD_LOGIC;
  signal CU_n_17 : STD_LOGIC;
  signal CU_n_18 : STD_LOGIC;
  signal CU_n_19 : STD_LOGIC;
  signal CU_n_20 : STD_LOGIC;
  signal CU_n_21 : STD_LOGIC;
  signal CU_n_22 : STD_LOGIC;
  signal CU_n_23 : STD_LOGIC;
  signal CU_n_24 : STD_LOGIC;
  signal CU_n_25 : STD_LOGIC;
  signal CU_n_26 : STD_LOGIC;
  signal CU_n_27 : STD_LOGIC;
  signal CU_n_28 : STD_LOGIC;
  signal CU_n_29 : STD_LOGIC;
  signal CU_n_3 : STD_LOGIC;
  signal CU_n_30 : STD_LOGIC;
  signal CU_n_31 : STD_LOGIC;
  signal CU_n_32 : STD_LOGIC;
  signal CU_n_35 : STD_LOGIC;
  signal CU_n_36 : STD_LOGIC;
  signal CU_n_5 : STD_LOGIC;
  signal CU_n_6 : STD_LOGIC;
  signal CU_n_7 : STD_LOGIC;
  signal CU_n_8 : STD_LOGIC;
  signal CU_n_9 : STD_LOGIC;
  signal RAM_memory_n_0 : STD_LOGIC;
  signal RAM_memory_n_1 : STD_LOGIC;
  signal RAM_memory_n_10 : STD_LOGIC;
  signal RAM_memory_n_11 : STD_LOGIC;
  signal RAM_memory_n_12 : STD_LOGIC;
  signal RAM_memory_n_13 : STD_LOGIC;
  signal RAM_memory_n_14 : STD_LOGIC;
  signal RAM_memory_n_15 : STD_LOGIC;
  signal RAM_memory_n_16 : STD_LOGIC;
  signal RAM_memory_n_17 : STD_LOGIC;
  signal RAM_memory_n_18 : STD_LOGIC;
  signal RAM_memory_n_19 : STD_LOGIC;
  signal RAM_memory_n_20 : STD_LOGIC;
  signal RAM_memory_n_21 : STD_LOGIC;
  signal RAM_memory_n_22 : STD_LOGIC;
  signal RAM_memory_n_23 : STD_LOGIC;
  signal RAM_memory_n_24 : STD_LOGIC;
  signal RAM_memory_n_25 : STD_LOGIC;
  signal RAM_memory_n_26 : STD_LOGIC;
  signal RAM_memory_n_27 : STD_LOGIC;
  signal RAM_memory_n_28 : STD_LOGIC;
  signal RAM_memory_n_29 : STD_LOGIC;
  signal RAM_memory_n_30 : STD_LOGIC;
  signal ROM_memory_n_0 : STD_LOGIC;
  signal ROM_memory_n_1 : STD_LOGIC;
  signal ROM_memory_n_10 : STD_LOGIC;
  signal ROM_memory_n_11 : STD_LOGIC;
  signal ROM_memory_n_12 : STD_LOGIC;
  signal ROM_memory_n_13 : STD_LOGIC;
  signal ROM_memory_n_14 : STD_LOGIC;
  signal ROM_memory_n_15 : STD_LOGIC;
  signal ROM_memory_n_16 : STD_LOGIC;
  signal ROM_memory_n_17 : STD_LOGIC;
  signal ROM_memory_n_18 : STD_LOGIC;
  signal ROM_memory_n_19 : STD_LOGIC;
  signal ROM_memory_n_2 : STD_LOGIC;
  signal ROM_memory_n_7 : STD_LOGIC;
  signal ROM_memory_n_8 : STD_LOGIC;
  signal ROM_memory_n_9 : STD_LOGIC;
  signal ram_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[7]0\ : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal result0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal result00_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal rom_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rom_en : STD_LOGIC;
  signal rom_out : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
CU: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit
     port map (
      D(19) => CU_n_5,
      D(18) => CU_n_6,
      D(17) => CU_n_7,
      D(16) => CU_n_8,
      D(15) => CU_n_9,
      D(14) => CU_n_10,
      D(13) => CU_n_11,
      D(12) => CU_n_12,
      D(11) => CU_n_13,
      D(10) => CU_n_14,
      D(9) => CU_n_15,
      D(8) => CU_n_16,
      D(7) => CU_n_17,
      D(6) => CU_n_18,
      D(5) => CU_n_19,
      D(4) => CU_n_20,
      D(3) => CU_n_21,
      D(2) => CU_n_22,
      D(1) => CU_n_23,
      D(0) => CU_n_24,
      E(0) => \ram_reg[7]0\,
      Q(1 downto 0) => rom_addr(1 downto 0),
      SR(0) => CU_n_0,
      \count_reg[1]_0\(3 downto 2) => rdata(3 downto 2),
      \count_reg[1]_0\(1) => CU_n_35,
      \count_reg[1]_0\(0) => CU_n_36,
      \count_reg[2]_0\ => CU_n_3,
      \ram_in_reg[7]\(7) => CU_n_25,
      \ram_in_reg[7]\(6) => CU_n_26,
      \ram_in_reg[7]\(5) => CU_n_27,
      \ram_in_reg[7]\(4) => CU_n_28,
      \ram_in_reg[7]\(3) => CU_n_29,
      \ram_in_reg[7]\(2) => CU_n_30,
      \ram_in_reg[7]\(1) => CU_n_31,
      \ram_in_reg[7]\(0) => CU_n_32,
      \ram_out_reg[0]\ => RAM_memory_n_29,
      \ram_out_reg[0]_0\ => RAM_memory_n_28,
      \ram_out_reg[1]\ => RAM_memory_n_27,
      \ram_out_reg[1]_0\ => RAM_memory_n_26,
      \ram_out_reg[2]\ => RAM_memory_n_25,
      \ram_out_reg[2]_0\ => RAM_memory_n_24,
      \ram_out_reg[3]\ => RAM_memory_n_23,
      \ram_out_reg[3]_0\ => RAM_memory_n_22,
      \ram_out_reg[4]\ => RAM_memory_n_21,
      \ram_out_reg[4]_0\ => RAM_memory_n_20,
      \ram_out_reg[5]\ => RAM_memory_n_19,
      \ram_out_reg[5]_0\ => RAM_memory_n_18,
      \ram_out_reg[6]\ => RAM_memory_n_17,
      \ram_out_reg[6]_0\ => RAM_memory_n_16,
      \ram_out_reg[7]\(7 downto 0) => ram_in(7 downto 0),
      \ram_out_reg[7]_0\ => RAM_memory_n_15,
      \ram_out_reg[7]_1\ => RAM_memory_n_14,
      reset_fir => reset_fir,
      result0(11 downto 0) => result0(11 downto 0),
      result00_out(19 downto 12) => result00_out(23 downto 16),
      result00_out(11 downto 0) => result00_out(11 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      valid_in => valid_in
    );
MAC_Unit: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC
     port map (
      D(19) => CU_n_5,
      D(18) => CU_n_6,
      D(17) => CU_n_7,
      D(16) => CU_n_8,
      D(15) => CU_n_9,
      D(14) => CU_n_10,
      D(13) => CU_n_11,
      D(12) => CU_n_12,
      D(11) => CU_n_13,
      D(10) => CU_n_14,
      D(9) => CU_n_15,
      D(8) => CU_n_16,
      D(7) => CU_n_17,
      D(6) => CU_n_18,
      D(5) => CU_n_19,
      D(4) => CU_n_20,
      D(3) => CU_n_21,
      D(2) => CU_n_22,
      D(1) => CU_n_23,
      D(0) => CU_n_24,
      DI(2) => ROM_memory_n_0,
      DI(1) => ROM_memory_n_1,
      DI(0) => ROM_memory_n_2,
      E(0) => E(0),
      Q(23 downto 0) => Q(23 downto 0),
      S(3) => ROM_memory_n_8,
      S(2) => RAM_memory_n_0,
      S(1) => RAM_memory_n_1,
      S(0) => ROM_memory_n_9,
      SR(0) => CU_n_0,
      \count_reg[0]_0\(0) => valid_out,
      \count_reg[2]_0\ => \count_reg[2]\,
      reset_fir => reset_fir,
      result0(11 downto 0) => result0(11 downto 0),
      \result_reg[11]_0\(2) => RAM_memory_n_13,
      \result_reg[11]_0\(1) => ROM_memory_n_13,
      \result_reg[11]_0\(0) => ROM_memory_n_14,
      \result_reg[11]_1\(2) => ROM_memory_n_10,
      \result_reg[11]_1\(1) => ROM_memory_n_11,
      \result_reg[11]_1\(0) => ROM_memory_n_12,
      \result_reg[15]_0\ => CU_n_3,
      \result_reg[23]_0\(19 downto 12) => result00_out(23 downto 16),
      \result_reg[23]_0\(11 downto 0) => result00_out(11 downto 0),
      \result_reg[7]_0\(3) => ROM_memory_n_18,
      \result_reg[7]_0\(2) => ROM_memory_n_19,
      \result_reg[7]_0\(1) => RAM_memory_n_10,
      \result_reg[7]_0\(0) => RAM_memory_n_11,
      \result_reg[7]_1\(3) => ROM_memory_n_15,
      \result_reg[7]_1\(2) => ROM_memory_n_16,
      \result_reg[7]_1\(1) => ROM_memory_n_17,
      \result_reg[7]_1\(0) => RAM_memory_n_30,
      \result_reg[8]_0\ => \result_reg[8]\,
      rom_en => rom_en,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg1_reg[23]\(0) => \slv_reg1_reg[23]\(0)
    );
RAM_memory: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM
     port map (
      D(7) => CU_n_25,
      D(6) => CU_n_26,
      D(5) => CU_n_27,
      D(4) => CU_n_28,
      D(3) => CU_n_29,
      D(2) => CU_n_30,
      D(1) => CU_n_31,
      D(0) => CU_n_32,
      E(0) => \ram_reg[7]0\,
      Q(7 downto 0) => A(7 downto 0),
      S(1) => RAM_memory_n_0,
      S(0) => RAM_memory_n_1,
      \ram_out_reg[0]_0\(0) => rom_en,
      \ram_out_reg[1]_0\ => RAM_memory_n_12,
      \ram_out_reg[1]_1\(0) => RAM_memory_n_30,
      \ram_out_reg[4]_0\(1) => RAM_memory_n_10,
      \ram_out_reg[4]_0\(0) => RAM_memory_n_11,
      \ram_out_reg[7]_0\(0) => RAM_memory_n_13,
      \ram_out_reg[7]_1\(1 downto 0) => rom_addr(1 downto 0),
      \ram_reg[0][7]_0\(7 downto 0) => ram_in(7 downto 0),
      \ram_reg[3][0]_0\ => RAM_memory_n_28,
      \ram_reg[3][1]_0\ => RAM_memory_n_26,
      \ram_reg[3][2]_0\ => RAM_memory_n_24,
      \ram_reg[3][3]_0\ => RAM_memory_n_22,
      \ram_reg[3][4]_0\ => RAM_memory_n_20,
      \ram_reg[3][5]_0\ => RAM_memory_n_18,
      \ram_reg[3][6]_0\ => RAM_memory_n_16,
      \ram_reg[3][7]_0\ => RAM_memory_n_14,
      \ram_reg[7][0]_0\ => RAM_memory_n_29,
      \ram_reg[7][1]_0\ => RAM_memory_n_27,
      \ram_reg[7][2]_0\ => RAM_memory_n_25,
      \ram_reg[7][3]_0\ => RAM_memory_n_23,
      \ram_reg[7][4]_0\ => RAM_memory_n_21,
      \ram_reg[7][5]_0\ => RAM_memory_n_19,
      \ram_reg[7][6]_0\ => RAM_memory_n_17,
      \ram_reg[7][7]_0\ => RAM_memory_n_15,
      reset_fir => reset_fir,
      \result0__0_carry__0\ => ROM_memory_n_7,
      \result0__0_carry__1\(3 downto 0) => rom_out(3 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
ROM_memory: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ROM
     port map (
      D(3 downto 2) => rdata(3 downto 2),
      D(1) => CU_n_35,
      D(0) => CU_n_36,
      DI(2) => ROM_memory_n_0,
      DI(1) => ROM_memory_n_1,
      DI(0) => ROM_memory_n_2,
      E(0) => rom_en,
      Q(3 downto 0) => rom_out(3 downto 0),
      S(1) => ROM_memory_n_8,
      S(0) => ROM_memory_n_9,
      \ram_out_reg[6]\(1) => ROM_memory_n_18,
      \ram_out_reg[6]\(0) => ROM_memory_n_19,
      \ram_out_reg[7]\(2) => ROM_memory_n_15,
      \ram_out_reg[7]\(1) => ROM_memory_n_16,
      \ram_out_reg[7]\(0) => ROM_memory_n_17,
      \result0__0_carry\ => RAM_memory_n_12,
      \result0__0_carry__0\(0) => RAM_memory_n_10,
      \result0__0_carry__1\(7 downto 0) => A(7 downto 0),
      \rom_out_reg[1]_0\ => ROM_memory_n_7,
      \rom_out_reg[1]_1\(2) => ROM_memory_n_10,
      \rom_out_reg[1]_1\(1) => ROM_memory_n_11,
      \rom_out_reg[1]_1\(0) => ROM_memory_n_12,
      \rom_out_reg[3]_0\(1) => ROM_memory_n_13,
      \rom_out_reg[3]_0\(0) => ROM_memory_n_14,
      s00_axi_aclk => s00_axi_aclk
    );
\ram_in_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_fir,
      D => \ram_in_reg[7]_0\(0),
      Q => ram_in(0)
    );
\ram_in_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_fir,
      D => \ram_in_reg[7]_0\(1),
      Q => ram_in(1)
    );
\ram_in_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_fir,
      D => \ram_in_reg[7]_0\(2),
      Q => ram_in(2)
    );
\ram_in_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_fir,
      D => \ram_in_reg[7]_0\(3),
      Q => ram_in(3)
    );
\ram_in_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_fir,
      D => \ram_in_reg[7]_0\(4),
      Q => ram_in(4)
    );
\ram_in_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_fir,
      D => \ram_in_reg[7]_0\(5),
      Q => ram_in(5)
    );
\ram_in_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_fir,
      D => \ram_in_reg[7]_0\(6),
      Q => ram_in(6)
    );
\ram_in_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => reset_fir,
      D => \ram_in_reg[7]_0\(7),
      Q => ram_in(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_filter_ip_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_filter_ip_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_filter_ip_v1_0_S00_AXI is
  signal FIR_n_0 : STD_LOGIC;
  signal FIR_n_1 : STD_LOGIC;
  signal FIR_n_3 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reset_fir : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal valid_in : STD_LOGIC;
  signal valid_out : STD_LOGIC;
  signal \valid_out_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal valid_out_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \valid_out_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \valid_out_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \valid_out_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \valid_out_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \valid_out_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \valid_out_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \valid_out_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \valid_out_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \valid_out_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \valid_out_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \valid_out_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \valid_out_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \valid_out_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \valid_out_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \valid_out_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \valid_out_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \valid_out_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \valid_out_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \valid_out_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \valid_out_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \valid_out_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \valid_out_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \valid_out_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \valid_out_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \valid_out_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \valid_out_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \valid_out_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \valid_out_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \valid_out_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \valid_out_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \valid_out_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \valid_out_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \valid_out_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \valid_out_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \valid_out_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \valid_out_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \valid_out_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \valid_out_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \valid_out_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \valid_out_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \valid_out_counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \valid_out_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \valid_out_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \valid_out_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \valid_out_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \valid_out_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \valid_out_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \valid_out_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \valid_out_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \valid_out_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \valid_out_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \valid_out_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \valid_out_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \valid_out_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \valid_out_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \valid_out_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \valid_out_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \valid_out_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \valid_out_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \valid_out_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \valid_out_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \valid_out_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \valid_out_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal x : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal y : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \NLW_valid_out_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg3[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg3[10]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \slv_reg3[11]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \slv_reg3[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \slv_reg3[13]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \slv_reg3[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \slv_reg3[15]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \slv_reg3[16]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg3[17]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg3[18]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \slv_reg3[19]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \slv_reg3[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg3[20]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \slv_reg3[21]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \slv_reg3[22]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \slv_reg3[23]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \slv_reg3[24]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \slv_reg3[25]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \slv_reg3[26]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \slv_reg3[27]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \slv_reg3[28]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \slv_reg3[29]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \slv_reg3[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg3[30]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \slv_reg3[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg3[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg3[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg3[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg3[7]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg3[8]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \slv_reg3[9]_i_1\ : label is "soft_lutpair33";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
FIR: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_filter_unit
     port map (
      E(0) => FIR_n_0,
      Q(23 downto 0) => y(23 downto 0),
      \count_reg[2]\ => FIR_n_1,
      \ram_in_reg[7]_0\(7 downto 0) => x(7 downto 0),
      reset_fir => reset_fir,
      \result_reg[8]\ => FIR_n_3,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg1_reg[23]\(0) => slv_reg_rden,
      valid_in => valid_in,
      valid_out => valid_out
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[0]\,
      I1 => \slv_reg1_reg_n_0_[0]\,
      I2 => slv_reg3(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_out_counter_reg(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[10]\,
      I1 => \slv_reg1_reg_n_0_[10]\,
      I2 => valid_out_counter_reg(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[11]\,
      I1 => valid_out_counter_reg(11),
      I2 => \slv_reg0_reg_n_0_[11]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[12]\,
      I1 => \slv_reg1_reg_n_0_[12]\,
      I2 => slv_reg3(12),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_out_counter_reg(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[13]\,
      I1 => valid_out_counter_reg(13),
      I2 => \slv_reg0_reg_n_0_[13]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[14]\,
      I1 => \slv_reg1_reg_n_0_[14]\,
      I2 => valid_out_counter_reg(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[15]\,
      I1 => valid_out_counter_reg(15),
      I2 => \slv_reg0_reg_n_0_[15]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[16]\,
      I1 => valid_out_counter_reg(16),
      I2 => \slv_reg0_reg_n_0_[16]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[17]\,
      I1 => valid_out_counter_reg(17),
      I2 => \slv_reg0_reg_n_0_[17]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[18]\,
      I1 => \slv_reg1_reg_n_0_[18]\,
      I2 => valid_out_counter_reg(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[19]\,
      I1 => valid_out_counter_reg(19),
      I2 => \slv_reg0_reg_n_0_[19]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[1]\,
      I1 => valid_out_counter_reg(1),
      I2 => \slv_reg0_reg_n_0_[1]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[20]\,
      I1 => \slv_reg1_reg_n_0_[20]\,
      I2 => slv_reg3(20),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_out_counter_reg(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[21]\,
      I1 => valid_out_counter_reg(21),
      I2 => \slv_reg0_reg_n_0_[21]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[22]\,
      I1 => \slv_reg1_reg_n_0_[22]\,
      I2 => valid_out_counter_reg(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[23]\,
      I1 => valid_out_counter_reg(23),
      I2 => \slv_reg0_reg_n_0_[23]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[24]\,
      I1 => valid_out_counter_reg(24),
      I2 => \slv_reg0_reg_n_0_[24]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CA00CA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[25]\,
      I1 => valid_out_counter_reg(25),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => slv_reg3(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF0CA00C"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => \slv_reg0_reg_n_0_[26]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => valid_out_counter_reg(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF0CA00C"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => \slv_reg0_reg_n_0_[27]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => valid_out_counter_reg(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA0FCA00"
    )
        port map (
      I0 => valid_out_counter_reg(28),
      I1 => slv_reg3(28),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[28]\,
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF0CA00C"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => \slv_reg0_reg_n_0_[29]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => valid_out_counter_reg(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[2]\,
      I1 => \slv_reg1_reg_n_0_[2]\,
      I2 => valid_out_counter_reg(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA0FCA00"
    )
        port map (
      I0 => valid_out_counter_reg(30),
      I1 => slv_reg3(30),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF0CA00C"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => \slv_reg0_reg_n_0_[31]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => valid_out_counter_reg(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[3]\,
      I1 => valid_out_counter_reg(3),
      I2 => \slv_reg0_reg_n_0_[3]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[4]\,
      I1 => \slv_reg1_reg_n_0_[4]\,
      I2 => slv_reg3(4),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_out_counter_reg(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[5]\,
      I1 => valid_out_counter_reg(5),
      I2 => \slv_reg0_reg_n_0_[5]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[6]\,
      I1 => \slv_reg1_reg_n_0_[6]\,
      I2 => valid_out_counter_reg(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[7]\,
      I1 => valid_out_counter_reg(7),
      I2 => \slv_reg0_reg_n_0_[7]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[8]\,
      I1 => valid_out_counter_reg(8),
      I2 => \slv_reg0_reg_n_0_[8]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[9]\,
      I1 => valid_out_counter_reg(9),
      I2 => p_1_in,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55C0"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^s_axi_arready\,
      I2 => s00_axi_arvalid,
      I3 => \^s00_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
reset_fir_reg: unisim.vcomponents.FDRE
     port map (
      C => \slv_reg0_reg_n_0_[8]\,
      CE => '1',
      D => p_1_in,
      Q => reset_fir,
      R => '0'
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => p_1_in,
      R => axi_awready_i_1_n_0
    );
\slv_reg1[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55FF0008"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => FIR_n_3,
      I2 => FIR_n_1,
      I3 => slv_reg_rden,
      I4 => \slv_reg1_reg_n_0_[24]\,
      O => \slv_reg1[24]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => '0'
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => '0'
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => '0'
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => '0'
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => '0'
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => '0'
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => '0'
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => '0'
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => '0'
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => '0'
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => '0'
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => '0'
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => '0'
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => '0'
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => '0'
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => '0'
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1[24]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[24]\,
      R => '0'
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => '0'
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => '0'
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => '0'
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => '0'
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => '0'
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => '0'
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => '0'
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_0,
      D => y(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => '0'
    );
\slv_reg3[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(0),
      O => p_2_in(0)
    );
\slv_reg3[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(10),
      I1 => axi_awaddr(3),
      O => p_2_in(10)
    );
\slv_reg3[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(11),
      I1 => axi_awaddr(3),
      O => p_2_in(11)
    );
\slv_reg3[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(12),
      I1 => axi_awaddr(3),
      O => p_2_in(12)
    );
\slv_reg3[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(13),
      I1 => axi_awaddr(3),
      O => p_2_in(13)
    );
\slv_reg3[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(14),
      I1 => axi_awaddr(3),
      O => p_2_in(14)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(15),
      I1 => axi_awaddr(3),
      O => p_2_in(15)
    );
\slv_reg3[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(16),
      O => p_2_in(16)
    );
\slv_reg3[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(17),
      O => p_2_in(17)
    );
\slv_reg3[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(18),
      O => p_2_in(18)
    );
\slv_reg3[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(19),
      O => p_2_in(19)
    );
\slv_reg3[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(1),
      O => p_2_in(1)
    );
\slv_reg3[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(20),
      O => p_2_in(20)
    );
\slv_reg3[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(21),
      O => p_2_in(21)
    );
\slv_reg3[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(22),
      O => p_2_in(22)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(23),
      O => p_2_in(23)
    );
\slv_reg3[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(24),
      I1 => axi_awaddr(3),
      O => p_2_in(24)
    );
\slv_reg3[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(25),
      I1 => axi_awaddr(3),
      O => p_2_in(25)
    );
\slv_reg3[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(26),
      I1 => axi_awaddr(3),
      O => p_2_in(26)
    );
\slv_reg3[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(27),
      I1 => axi_awaddr(3),
      O => p_2_in(27)
    );
\slv_reg3[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(28),
      I1 => axi_awaddr(3),
      O => p_2_in(28)
    );
\slv_reg3[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(29),
      I1 => axi_awaddr(3),
      O => p_2_in(29)
    );
\slv_reg3[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(2),
      O => p_2_in(2)
    );
\slv_reg3[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(30),
      I1 => axi_awaddr(3),
      O => p_2_in(30)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(31),
      I1 => axi_awaddr(3),
      O => p_2_in(31)
    );
\slv_reg3[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(3),
      O => p_2_in(3)
    );
\slv_reg3[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(4),
      O => p_2_in(4)
    );
\slv_reg3[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(5),
      O => p_2_in(5)
    );
\slv_reg3[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(6),
      O => p_2_in(6)
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wdata(7),
      O => p_2_in(7)
    );
\slv_reg3[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(8),
      I1 => axi_awaddr(3),
      O => p_2_in(8)
    );
\slv_reg3[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s00_axi_wdata(9),
      I1 => axi_awaddr(3),
      O => p_2_in(9)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => p_2_in(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => p_2_in(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => p_2_in(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => p_2_in(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => p_2_in(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => p_2_in(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => p_2_in(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => p_2_in(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => p_2_in(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => p_2_in(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => p_2_in(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => p_2_in(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => p_2_in(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => p_2_in(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => p_2_in(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => p_2_in(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => p_2_in(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => p_2_in(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => p_2_in(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => p_2_in(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => p_2_in(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => p_2_in(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => p_2_in(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => p_2_in(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => p_2_in(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => p_2_in(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => p_2_in(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => p_2_in(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => p_2_in(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => p_2_in(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => p_2_in(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => p_2_in(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
valid_in_reg: unisim.vcomponents.FDRE
     port map (
      C => \slv_reg0_reg_n_0_[8]\,
      CE => '1',
      D => \slv_reg0_reg_n_0_[8]\,
      Q => valid_in,
      R => '0'
    );
\valid_out_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => valid_out_counter_reg(0),
      O => \valid_out_counter[0]_i_2_n_0\
    );
\valid_out_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[0]_i_1_n_7\,
      Q => valid_out_counter_reg(0),
      R => '0'
    );
\valid_out_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \valid_out_counter_reg[0]_i_1_n_0\,
      CO(2) => \valid_out_counter_reg[0]_i_1_n_1\,
      CO(1) => \valid_out_counter_reg[0]_i_1_n_2\,
      CO(0) => \valid_out_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \valid_out_counter_reg[0]_i_1_n_4\,
      O(2) => \valid_out_counter_reg[0]_i_1_n_5\,
      O(1) => \valid_out_counter_reg[0]_i_1_n_6\,
      O(0) => \valid_out_counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => valid_out_counter_reg(3 downto 1),
      S(0) => \valid_out_counter[0]_i_2_n_0\
    );
\valid_out_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[8]_i_1_n_5\,
      Q => valid_out_counter_reg(10),
      R => '0'
    );
\valid_out_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[8]_i_1_n_4\,
      Q => valid_out_counter_reg(11),
      R => '0'
    );
\valid_out_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[12]_i_1_n_7\,
      Q => valid_out_counter_reg(12),
      R => '0'
    );
\valid_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_out_counter_reg[8]_i_1_n_0\,
      CO(3) => \valid_out_counter_reg[12]_i_1_n_0\,
      CO(2) => \valid_out_counter_reg[12]_i_1_n_1\,
      CO(1) => \valid_out_counter_reg[12]_i_1_n_2\,
      CO(0) => \valid_out_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_out_counter_reg[12]_i_1_n_4\,
      O(2) => \valid_out_counter_reg[12]_i_1_n_5\,
      O(1) => \valid_out_counter_reg[12]_i_1_n_6\,
      O(0) => \valid_out_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => valid_out_counter_reg(15 downto 12)
    );
\valid_out_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[12]_i_1_n_6\,
      Q => valid_out_counter_reg(13),
      R => '0'
    );
\valid_out_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[12]_i_1_n_5\,
      Q => valid_out_counter_reg(14),
      R => '0'
    );
\valid_out_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[12]_i_1_n_4\,
      Q => valid_out_counter_reg(15),
      R => '0'
    );
\valid_out_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[16]_i_1_n_7\,
      Q => valid_out_counter_reg(16),
      R => '0'
    );
\valid_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_out_counter_reg[12]_i_1_n_0\,
      CO(3) => \valid_out_counter_reg[16]_i_1_n_0\,
      CO(2) => \valid_out_counter_reg[16]_i_1_n_1\,
      CO(1) => \valid_out_counter_reg[16]_i_1_n_2\,
      CO(0) => \valid_out_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_out_counter_reg[16]_i_1_n_4\,
      O(2) => \valid_out_counter_reg[16]_i_1_n_5\,
      O(1) => \valid_out_counter_reg[16]_i_1_n_6\,
      O(0) => \valid_out_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => valid_out_counter_reg(19 downto 16)
    );
\valid_out_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[16]_i_1_n_6\,
      Q => valid_out_counter_reg(17),
      R => '0'
    );
\valid_out_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[16]_i_1_n_5\,
      Q => valid_out_counter_reg(18),
      R => '0'
    );
\valid_out_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[16]_i_1_n_4\,
      Q => valid_out_counter_reg(19),
      R => '0'
    );
\valid_out_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[0]_i_1_n_6\,
      Q => valid_out_counter_reg(1),
      R => '0'
    );
\valid_out_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[20]_i_1_n_7\,
      Q => valid_out_counter_reg(20),
      R => '0'
    );
\valid_out_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_out_counter_reg[16]_i_1_n_0\,
      CO(3) => \valid_out_counter_reg[20]_i_1_n_0\,
      CO(2) => \valid_out_counter_reg[20]_i_1_n_1\,
      CO(1) => \valid_out_counter_reg[20]_i_1_n_2\,
      CO(0) => \valid_out_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_out_counter_reg[20]_i_1_n_4\,
      O(2) => \valid_out_counter_reg[20]_i_1_n_5\,
      O(1) => \valid_out_counter_reg[20]_i_1_n_6\,
      O(0) => \valid_out_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => valid_out_counter_reg(23 downto 20)
    );
\valid_out_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[20]_i_1_n_6\,
      Q => valid_out_counter_reg(21),
      R => '0'
    );
\valid_out_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[20]_i_1_n_5\,
      Q => valid_out_counter_reg(22),
      R => '0'
    );
\valid_out_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[20]_i_1_n_4\,
      Q => valid_out_counter_reg(23),
      R => '0'
    );
\valid_out_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[24]_i_1_n_7\,
      Q => valid_out_counter_reg(24),
      R => '0'
    );
\valid_out_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_out_counter_reg[20]_i_1_n_0\,
      CO(3) => \valid_out_counter_reg[24]_i_1_n_0\,
      CO(2) => \valid_out_counter_reg[24]_i_1_n_1\,
      CO(1) => \valid_out_counter_reg[24]_i_1_n_2\,
      CO(0) => \valid_out_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_out_counter_reg[24]_i_1_n_4\,
      O(2) => \valid_out_counter_reg[24]_i_1_n_5\,
      O(1) => \valid_out_counter_reg[24]_i_1_n_6\,
      O(0) => \valid_out_counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => valid_out_counter_reg(27 downto 24)
    );
\valid_out_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[24]_i_1_n_6\,
      Q => valid_out_counter_reg(25),
      R => '0'
    );
\valid_out_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[24]_i_1_n_5\,
      Q => valid_out_counter_reg(26),
      R => '0'
    );
\valid_out_counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[24]_i_1_n_4\,
      Q => valid_out_counter_reg(27),
      R => '0'
    );
\valid_out_counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[28]_i_1_n_7\,
      Q => valid_out_counter_reg(28),
      R => '0'
    );
\valid_out_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_out_counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_valid_out_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \valid_out_counter_reg[28]_i_1_n_1\,
      CO(1) => \valid_out_counter_reg[28]_i_1_n_2\,
      CO(0) => \valid_out_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_out_counter_reg[28]_i_1_n_4\,
      O(2) => \valid_out_counter_reg[28]_i_1_n_5\,
      O(1) => \valid_out_counter_reg[28]_i_1_n_6\,
      O(0) => \valid_out_counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => valid_out_counter_reg(31 downto 28)
    );
\valid_out_counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[28]_i_1_n_6\,
      Q => valid_out_counter_reg(29),
      R => '0'
    );
\valid_out_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[0]_i_1_n_5\,
      Q => valid_out_counter_reg(2),
      R => '0'
    );
\valid_out_counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[28]_i_1_n_5\,
      Q => valid_out_counter_reg(30),
      R => '0'
    );
\valid_out_counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[28]_i_1_n_4\,
      Q => valid_out_counter_reg(31),
      R => '0'
    );
\valid_out_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[0]_i_1_n_4\,
      Q => valid_out_counter_reg(3),
      R => '0'
    );
\valid_out_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[4]_i_1_n_7\,
      Q => valid_out_counter_reg(4),
      R => '0'
    );
\valid_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_out_counter_reg[0]_i_1_n_0\,
      CO(3) => \valid_out_counter_reg[4]_i_1_n_0\,
      CO(2) => \valid_out_counter_reg[4]_i_1_n_1\,
      CO(1) => \valid_out_counter_reg[4]_i_1_n_2\,
      CO(0) => \valid_out_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_out_counter_reg[4]_i_1_n_4\,
      O(2) => \valid_out_counter_reg[4]_i_1_n_5\,
      O(1) => \valid_out_counter_reg[4]_i_1_n_6\,
      O(0) => \valid_out_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => valid_out_counter_reg(7 downto 4)
    );
\valid_out_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[4]_i_1_n_6\,
      Q => valid_out_counter_reg(5),
      R => '0'
    );
\valid_out_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[4]_i_1_n_5\,
      Q => valid_out_counter_reg(6),
      R => '0'
    );
\valid_out_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[4]_i_1_n_4\,
      Q => valid_out_counter_reg(7),
      R => '0'
    );
\valid_out_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[8]_i_1_n_7\,
      Q => valid_out_counter_reg(8),
      R => '0'
    );
\valid_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_out_counter_reg[4]_i_1_n_0\,
      CO(3) => \valid_out_counter_reg[8]_i_1_n_0\,
      CO(2) => \valid_out_counter_reg[8]_i_1_n_1\,
      CO(1) => \valid_out_counter_reg[8]_i_1_n_2\,
      CO(0) => \valid_out_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_out_counter_reg[8]_i_1_n_4\,
      O(2) => \valid_out_counter_reg[8]_i_1_n_5\,
      O(1) => \valid_out_counter_reg[8]_i_1_n_6\,
      O(0) => \valid_out_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => valid_out_counter_reg(11 downto 8)
    );
\valid_out_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => valid_out,
      CE => '1',
      D => \valid_out_counter_reg[8]_i_1_n_6\,
      Q => valid_out_counter_reg(9),
      R => '0'
    );
\x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \slv_reg0_reg_n_0_[8]\,
      CE => '1',
      D => \slv_reg0_reg_n_0_[0]\,
      Q => x(0),
      R => '0'
    );
\x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \slv_reg0_reg_n_0_[8]\,
      CE => '1',
      D => \slv_reg0_reg_n_0_[1]\,
      Q => x(1),
      R => '0'
    );
\x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \slv_reg0_reg_n_0_[8]\,
      CE => '1',
      D => \slv_reg0_reg_n_0_[2]\,
      Q => x(2),
      R => '0'
    );
\x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \slv_reg0_reg_n_0_[8]\,
      CE => '1',
      D => \slv_reg0_reg_n_0_[3]\,
      Q => x(3),
      R => '0'
    );
\x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \slv_reg0_reg_n_0_[8]\,
      CE => '1',
      D => \slv_reg0_reg_n_0_[4]\,
      Q => x(4),
      R => '0'
    );
\x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \slv_reg0_reg_n_0_[8]\,
      CE => '1',
      D => \slv_reg0_reg_n_0_[5]\,
      Q => x(5),
      R => '0'
    );
\x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \slv_reg0_reg_n_0_[8]\,
      CE => '1',
      D => \slv_reg0_reg_n_0_[6]\,
      Q => x(6),
      R => '0'
    );
\x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \slv_reg0_reg_n_0_[8]\,
      CE => '1',
      D => \slv_reg0_reg_n_0_[7]\,
      Q => x(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_filter_ip_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_filter_ip_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_filter_ip_v1_0 is
begin
fir_filter_ip_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_filter_ip_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zybo_design_1_fir_filter_ip_0_0,fir_filter_ip_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fir_filter_ip_v1_0,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zybo_design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zybo_design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_filter_ip_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
