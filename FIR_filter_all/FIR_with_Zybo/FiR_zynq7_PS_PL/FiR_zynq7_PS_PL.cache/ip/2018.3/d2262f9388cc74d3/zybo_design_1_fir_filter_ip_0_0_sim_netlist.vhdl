-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Apr 27 18:25:39 2024
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DFF is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \Dout_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \Dout_reg[1]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \ram_out_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_out_reg[7]\ : in STD_LOGIC;
    \ram_out_reg[7]_0\ : in STD_LOGIC;
    \ram_out_reg[6]\ : in STD_LOGIC;
    \ram_out_reg[6]_0\ : in STD_LOGIC;
    \ram_out_reg[5]\ : in STD_LOGIC;
    \ram_out_reg[5]_0\ : in STD_LOGIC;
    \ram_out_reg[4]\ : in STD_LOGIC;
    \ram_out_reg[4]_0\ : in STD_LOGIC;
    \ram_out_reg[3]\ : in STD_LOGIC;
    \ram_out_reg[3]_0\ : in STD_LOGIC;
    \ram_out_reg[2]\ : in STD_LOGIC;
    \ram_out_reg[2]_0\ : in STD_LOGIC;
    \ram_out_reg[1]\ : in STD_LOGIC;
    \ram_out_reg[1]_0\ : in STD_LOGIC;
    \ram_out_reg[0]_0\ : in STD_LOGIC;
    \ram_out_reg[0]_1\ : in STD_LOGIC;
    counter : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DFF;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DFF is
  signal \^dout_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rom_addr : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rom_out[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rom_out[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rom_out[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rom_out[3]_i_1\ : label is "soft_lutpair0";
begin
  \Dout_reg[1]_0\(1 downto 0) <= \^dout_reg[1]_0\(1 downto 0);
\Dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(8),
      D => counter(0),
      Q => \^dout_reg[1]_0\(0)
    );
\Dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(8),
      D => counter(1),
      Q => \^dout_reg[1]_0\(1)
    );
\Dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(8),
      D => counter(2),
      Q => rom_addr(2)
    );
\ram_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(0),
      I1 => \ram_out_reg[0]\(0),
      I2 => \ram_out_reg[0]_0\,
      I3 => rom_addr(2),
      I4 => \ram_out_reg[0]_1\,
      O => D(0)
    );
\ram_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(1),
      I1 => \ram_out_reg[0]\(0),
      I2 => \ram_out_reg[1]\,
      I3 => rom_addr(2),
      I4 => \ram_out_reg[1]_0\,
      O => D(1)
    );
\ram_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(2),
      I1 => \ram_out_reg[0]\(0),
      I2 => \ram_out_reg[2]\,
      I3 => rom_addr(2),
      I4 => \ram_out_reg[2]_0\,
      O => D(2)
    );
\ram_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(3),
      I1 => \ram_out_reg[0]\(0),
      I2 => \ram_out_reg[3]\,
      I3 => rom_addr(2),
      I4 => \ram_out_reg[3]_0\,
      O => D(3)
    );
\ram_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(4),
      I1 => \ram_out_reg[0]\(0),
      I2 => \ram_out_reg[4]\,
      I3 => rom_addr(2),
      I4 => \ram_out_reg[4]_0\,
      O => D(4)
    );
\ram_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(5),
      I1 => \ram_out_reg[0]\(0),
      I2 => \ram_out_reg[5]\,
      I3 => rom_addr(2),
      I4 => \ram_out_reg[5]_0\,
      O => D(5)
    );
\ram_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(6),
      I1 => \ram_out_reg[0]\(0),
      I2 => \ram_out_reg[6]\,
      I3 => rom_addr(2),
      I4 => \ram_out_reg[6]_0\,
      O => D(6)
    );
\ram_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(7),
      I1 => \ram_out_reg[0]\(0),
      I2 => \ram_out_reg[7]\,
      I3 => rom_addr(2),
      I4 => \ram_out_reg[7]_0\,
      O => D(7)
    );
\rom_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dout_reg[1]_0\(0),
      O => \Dout_reg[1]_1\(0)
    );
\rom_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dout_reg[1]_0\(0),
      I1 => \^dout_reg[1]_0\(1),
      O => \Dout_reg[1]_1\(1)
    );
\rom_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => \^dout_reg[1]_0\(1),
      I1 => rom_addr(2),
      I2 => \^dout_reg[1]_0\(0),
      O => \Dout_reg[1]_1\(2)
    );
\rom_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^dout_reg[1]_0\(1),
      I1 => rom_addr(2),
      I2 => \^dout_reg[1]_0\(0),
      O => \Dout_reg[1]_1\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \fir_out_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result[4]_i_9_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result[4]_i_9_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result[8]_i_9_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \result[8]_i_9_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mac_init : in STD_LOGIC;
    \result_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \multOp__0_carry__0_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_1\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_2\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_3\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_4\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_5\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_6\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_7\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_2\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_3\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_5\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_6\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_7\ : STD_LOGIC;
  signal \multOp__0_carry_n_0\ : STD_LOGIC;
  signal \multOp__0_carry_n_1\ : STD_LOGIC;
  signal \multOp__0_carry_n_2\ : STD_LOGIC;
  signal \multOp__0_carry_n_3\ : STD_LOGIC;
  signal \multOp__0_carry_n_4\ : STD_LOGIC;
  signal \multOp__0_carry_n_5\ : STD_LOGIC;
  signal \multOp__0_carry_n_6\ : STD_LOGIC;
  signal \multOp__0_carry_n_7\ : STD_LOGIC;
  signal \result[0]_i_2_n_0\ : STD_LOGIC;
  signal \result[0]_i_3_n_0\ : STD_LOGIC;
  signal \result[0]_i_4_n_0\ : STD_LOGIC;
  signal \result[0]_i_5_n_0\ : STD_LOGIC;
  signal \result[0]_i_6_n_0\ : STD_LOGIC;
  signal \result[0]_i_7_n_0\ : STD_LOGIC;
  signal \result[0]_i_8_n_0\ : STD_LOGIC;
  signal \result[0]_i_9_n_0\ : STD_LOGIC;
  signal \result[12]_i_2_n_0\ : STD_LOGIC;
  signal \result[12]_i_3_n_0\ : STD_LOGIC;
  signal \result[12]_i_4_n_0\ : STD_LOGIC;
  signal \result[12]_i_5_n_0\ : STD_LOGIC;
  signal \result[16]_i_2_n_0\ : STD_LOGIC;
  signal \result[16]_i_3_n_0\ : STD_LOGIC;
  signal \result[16]_i_4_n_0\ : STD_LOGIC;
  signal \result[16]_i_5_n_0\ : STD_LOGIC;
  signal \result[20]_i_2_n_0\ : STD_LOGIC;
  signal \result[20]_i_3_n_0\ : STD_LOGIC;
  signal \result[20]_i_4_n_0\ : STD_LOGIC;
  signal \result[20]_i_5_n_0\ : STD_LOGIC;
  signal \result[4]_i_2_n_0\ : STD_LOGIC;
  signal \result[4]_i_3_n_0\ : STD_LOGIC;
  signal \result[4]_i_4_n_0\ : STD_LOGIC;
  signal \result[4]_i_5_n_0\ : STD_LOGIC;
  signal \result[4]_i_6_n_0\ : STD_LOGIC;
  signal \result[4]_i_7_n_0\ : STD_LOGIC;
  signal \result[4]_i_8_n_0\ : STD_LOGIC;
  signal \result[4]_i_9_n_0\ : STD_LOGIC;
  signal \result[8]_i_3_n_0\ : STD_LOGIC;
  signal \result[8]_i_4_n_0\ : STD_LOGIC;
  signal \result[8]_i_5_n_0\ : STD_LOGIC;
  signal \result[8]_i_6_n_0\ : STD_LOGIC;
  signal \result[8]_i_7_n_0\ : STD_LOGIC;
  signal \result[8]_i_8_n_0\ : STD_LOGIC;
  signal \result[8]_i_9_n_0\ : STD_LOGIC;
  signal result_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \result_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \result_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \result_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_multOp__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_multOp__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_result_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  CO(0) <= \^co\(0);
  E(0) <= \^e\(0);
\fir_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(0),
      Q => \fir_out_reg[23]_0\(0),
      R => '0'
    );
\fir_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(10),
      Q => \fir_out_reg[23]_0\(10),
      R => '0'
    );
\fir_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(11),
      Q => \fir_out_reg[23]_0\(11),
      R => '0'
    );
\fir_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(12),
      Q => \fir_out_reg[23]_0\(12),
      R => '0'
    );
\fir_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(13),
      Q => \fir_out_reg[23]_0\(13),
      R => '0'
    );
\fir_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(14),
      Q => \fir_out_reg[23]_0\(14),
      R => '0'
    );
\fir_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(15),
      Q => \fir_out_reg[23]_0\(15),
      R => '0'
    );
\fir_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(16),
      Q => \fir_out_reg[23]_0\(16),
      R => '0'
    );
\fir_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(17),
      Q => \fir_out_reg[23]_0\(17),
      R => '0'
    );
\fir_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(18),
      Q => \fir_out_reg[23]_0\(18),
      R => '0'
    );
\fir_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(19),
      Q => \fir_out_reg[23]_0\(19),
      R => '0'
    );
\fir_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(1),
      Q => \fir_out_reg[23]_0\(1),
      R => '0'
    );
\fir_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(20),
      Q => \fir_out_reg[23]_0\(20),
      R => '0'
    );
\fir_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(21),
      Q => \fir_out_reg[23]_0\(21),
      R => '0'
    );
\fir_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(22),
      Q => \fir_out_reg[23]_0\(22),
      R => '0'
    );
\fir_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(23),
      Q => \fir_out_reg[23]_0\(23),
      R => '0'
    );
\fir_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(2),
      Q => \fir_out_reg[23]_0\(2),
      R => '0'
    );
\fir_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(3),
      Q => \fir_out_reg[23]_0\(3),
      R => '0'
    );
\fir_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(4),
      Q => \fir_out_reg[23]_0\(4),
      R => '0'
    );
\fir_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(5),
      Q => \fir_out_reg[23]_0\(5),
      R => '0'
    );
\fir_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(6),
      Q => \fir_out_reg[23]_0\(6),
      R => '0'
    );
\fir_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(7),
      Q => \fir_out_reg[23]_0\(7),
      R => '0'
    );
\fir_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(8),
      Q => \fir_out_reg[23]_0\(8),
      R => '0'
    );
\fir_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => result_reg(9),
      Q => \fir_out_reg[23]_0\(9),
      R => '0'
    );
\multOp__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp__0_carry_n_0\,
      CO(2) => \multOp__0_carry_n_1\,
      CO(1) => \multOp__0_carry_n_2\,
      CO(0) => \multOp__0_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => '0',
      O(3) => \multOp__0_carry_n_4\,
      O(2) => \multOp__0_carry_n_5\,
      O(1) => \multOp__0_carry_n_6\,
      O(0) => \multOp__0_carry_n_7\,
      S(3 downto 0) => S(3 downto 0)
    );
\multOp__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__0_carry_n_0\,
      CO(3) => \multOp__0_carry__0_n_0\,
      CO(2) => \multOp__0_carry__0_n_1\,
      CO(1) => \multOp__0_carry__0_n_2\,
      CO(0) => \multOp__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \result[4]_i_9_0\(3 downto 0),
      O(3) => \multOp__0_carry__0_n_4\,
      O(2) => \multOp__0_carry__0_n_5\,
      O(1) => \multOp__0_carry__0_n_6\,
      O(0) => \multOp__0_carry__0_n_7\,
      S(3 downto 0) => \result[4]_i_9_1\(3 downto 0)
    );
\multOp__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__0_carry__0_n_0\,
      CO(3) => \^co\(0),
      CO(2) => \NLW_multOp__0_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \multOp__0_carry__1_n_2\,
      CO(0) => \multOp__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \result[8]_i_9_0\(2 downto 0),
      O(3) => \NLW_multOp__0_carry__1_O_UNCONNECTED\(3),
      O(2) => \multOp__0_carry__1_n_5\,
      O(1) => \multOp__0_carry__1_n_6\,
      O(0) => \multOp__0_carry__1_n_7\,
      S(3) => '1',
      S(2 downto 0) => \result[8]_i_9_1\(2 downto 0)
    );
\result[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry_n_4\,
      I1 => mac_init,
      O => \result[0]_i_2_n_0\
    );
\result[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry_n_5\,
      I1 => mac_init,
      O => \result[0]_i_3_n_0\
    );
\result[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry_n_6\,
      I1 => mac_init,
      O => \result[0]_i_4_n_0\
    );
\result[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry_n_7\,
      I1 => mac_init,
      O => \result[0]_i_5_n_0\
    );
\result[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => result_reg(3),
      I1 => mac_init,
      I2 => \multOp__0_carry_n_4\,
      O => \result[0]_i_6_n_0\
    );
\result[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => result_reg(2),
      I1 => mac_init,
      I2 => \multOp__0_carry_n_5\,
      O => \result[0]_i_7_n_0\
    );
\result[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => result_reg(1),
      I1 => mac_init,
      I2 => \multOp__0_carry_n_6\,
      O => \result[0]_i_8_n_0\
    );
\result[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => result_reg(0),
      I1 => mac_init,
      I2 => \multOp__0_carry_n_7\,
      O => \result[0]_i_9_n_0\
    );
\result[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result_reg(15),
      I1 => mac_init,
      O => \result[12]_i_2_n_0\
    );
\result[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result_reg(14),
      I1 => mac_init,
      O => \result[12]_i_3_n_0\
    );
\result[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result_reg(13),
      I1 => mac_init,
      O => \result[12]_i_4_n_0\
    );
\result[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result_reg(12),
      I1 => mac_init,
      O => \result[12]_i_5_n_0\
    );
\result[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result_reg(19),
      I1 => mac_init,
      O => \result[16]_i_2_n_0\
    );
\result[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result_reg(18),
      I1 => mac_init,
      O => \result[16]_i_3_n_0\
    );
\result[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result_reg(17),
      I1 => mac_init,
      O => \result[16]_i_4_n_0\
    );
\result[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result_reg(16),
      I1 => mac_init,
      O => \result[16]_i_5_n_0\
    );
\result[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result_reg(23),
      I1 => mac_init,
      O => \result[20]_i_2_n_0\
    );
\result[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result_reg(22),
      I1 => mac_init,
      O => \result[20]_i_3_n_0\
    );
\result[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result_reg(21),
      I1 => mac_init,
      O => \result[20]_i_4_n_0\
    );
\result[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => result_reg(20),
      I1 => mac_init,
      O => \result[20]_i_5_n_0\
    );
\result[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__0_n_4\,
      I1 => mac_init,
      O => \result[4]_i_2_n_0\
    );
\result[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__0_n_5\,
      I1 => mac_init,
      O => \result[4]_i_3_n_0\
    );
\result[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__0_n_6\,
      I1 => mac_init,
      O => \result[4]_i_4_n_0\
    );
\result[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__0_n_7\,
      I1 => mac_init,
      O => \result[4]_i_5_n_0\
    );
\result[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => result_reg(7),
      I1 => mac_init,
      I2 => \multOp__0_carry__0_n_4\,
      O => \result[4]_i_6_n_0\
    );
\result[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => result_reg(6),
      I1 => mac_init,
      I2 => \multOp__0_carry__0_n_5\,
      O => \result[4]_i_7_n_0\
    );
\result[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => result_reg(5),
      I1 => mac_init,
      I2 => \multOp__0_carry__0_n_6\,
      O => \result[4]_i_8_n_0\
    );
\result[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => result_reg(4),
      I1 => mac_init,
      I2 => \multOp__0_carry__0_n_7\,
      O => \result[4]_i_9_n_0\
    );
\result[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__1_n_5\,
      I1 => mac_init,
      O => \result[8]_i_3_n_0\
    );
\result[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__1_n_6\,
      I1 => mac_init,
      O => \result[8]_i_4_n_0\
    );
\result[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__1_n_7\,
      I1 => mac_init,
      O => \result[8]_i_5_n_0\
    );
\result[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => result_reg(11),
      I1 => mac_init,
      I2 => \^co\(0),
      O => \result[8]_i_6_n_0\
    );
\result[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => result_reg(10),
      I1 => mac_init,
      I2 => \multOp__0_carry__1_n_5\,
      O => \result[8]_i_7_n_0\
    );
\result[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => result_reg(9),
      I1 => mac_init,
      I2 => \multOp__0_carry__1_n_6\,
      O => \result[8]_i_8_n_0\
    );
\result[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => result_reg(8),
      I1 => mac_init,
      I2 => \multOp__0_carry__1_n_7\,
      O => \result[8]_i_9_n_0\
    );
\result_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[0]_i_1_n_7\,
      Q => result_reg(0)
    );
\result_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_reg[0]_i_1_n_0\,
      CO(2) => \result_reg[0]_i_1_n_1\,
      CO(1) => \result_reg[0]_i_1_n_2\,
      CO(0) => \result_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \result[0]_i_2_n_0\,
      DI(2) => \result[0]_i_3_n_0\,
      DI(1) => \result[0]_i_4_n_0\,
      DI(0) => \result[0]_i_5_n_0\,
      O(3) => \result_reg[0]_i_1_n_4\,
      O(2) => \result_reg[0]_i_1_n_5\,
      O(1) => \result_reg[0]_i_1_n_6\,
      O(0) => \result_reg[0]_i_1_n_7\,
      S(3) => \result[0]_i_6_n_0\,
      S(2) => \result[0]_i_7_n_0\,
      S(1) => \result[0]_i_8_n_0\,
      S(0) => \result[0]_i_9_n_0\
    );
\result_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[8]_i_1_n_5\,
      Q => result_reg(10)
    );
\result_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[8]_i_1_n_4\,
      Q => result_reg(11)
    );
\result_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[12]_i_1_n_7\,
      Q => result_reg(12)
    );
\result_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[8]_i_1_n_0\,
      CO(3) => \result_reg[12]_i_1_n_0\,
      CO(2) => \result_reg[12]_i_1_n_1\,
      CO(1) => \result_reg[12]_i_1_n_2\,
      CO(0) => \result_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \result_reg[12]_i_1_n_4\,
      O(2) => \result_reg[12]_i_1_n_5\,
      O(1) => \result_reg[12]_i_1_n_6\,
      O(0) => \result_reg[12]_i_1_n_7\,
      S(3) => \result[12]_i_2_n_0\,
      S(2) => \result[12]_i_3_n_0\,
      S(1) => \result[12]_i_4_n_0\,
      S(0) => \result[12]_i_5_n_0\
    );
\result_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[12]_i_1_n_6\,
      Q => result_reg(13)
    );
\result_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[12]_i_1_n_5\,
      Q => result_reg(14)
    );
\result_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[12]_i_1_n_4\,
      Q => result_reg(15)
    );
\result_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[16]_i_1_n_7\,
      Q => result_reg(16)
    );
\result_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[12]_i_1_n_0\,
      CO(3) => \result_reg[16]_i_1_n_0\,
      CO(2) => \result_reg[16]_i_1_n_1\,
      CO(1) => \result_reg[16]_i_1_n_2\,
      CO(0) => \result_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \result_reg[16]_i_1_n_4\,
      O(2) => \result_reg[16]_i_1_n_5\,
      O(1) => \result_reg[16]_i_1_n_6\,
      O(0) => \result_reg[16]_i_1_n_7\,
      S(3) => \result[16]_i_2_n_0\,
      S(2) => \result[16]_i_3_n_0\,
      S(1) => \result[16]_i_4_n_0\,
      S(0) => \result[16]_i_5_n_0\
    );
\result_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[16]_i_1_n_6\,
      Q => result_reg(17)
    );
\result_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[16]_i_1_n_5\,
      Q => result_reg(18)
    );
\result_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[16]_i_1_n_4\,
      Q => result_reg(19)
    );
\result_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[0]_i_1_n_6\,
      Q => result_reg(1)
    );
\result_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[20]_i_1_n_7\,
      Q => result_reg(20)
    );
\result_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[16]_i_1_n_0\,
      CO(3) => \NLW_result_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \result_reg[20]_i_1_n_1\,
      CO(1) => \result_reg[20]_i_1_n_2\,
      CO(0) => \result_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \result_reg[20]_i_1_n_4\,
      O(2) => \result_reg[20]_i_1_n_5\,
      O(1) => \result_reg[20]_i_1_n_6\,
      O(0) => \result_reg[20]_i_1_n_7\,
      S(3) => \result[20]_i_2_n_0\,
      S(2) => \result[20]_i_3_n_0\,
      S(1) => \result[20]_i_4_n_0\,
      S(0) => \result[20]_i_5_n_0\
    );
\result_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[20]_i_1_n_6\,
      Q => result_reg(21)
    );
\result_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[20]_i_1_n_5\,
      Q => result_reg(22)
    );
\result_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[20]_i_1_n_4\,
      Q => result_reg(23)
    );
\result_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[0]_i_1_n_5\,
      Q => result_reg(2)
    );
\result_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[0]_i_1_n_4\,
      Q => result_reg(3)
    );
\result_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[4]_i_1_n_7\,
      Q => result_reg(4)
    );
\result_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[0]_i_1_n_0\,
      CO(3) => \result_reg[4]_i_1_n_0\,
      CO(2) => \result_reg[4]_i_1_n_1\,
      CO(1) => \result_reg[4]_i_1_n_2\,
      CO(0) => \result_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \result[4]_i_2_n_0\,
      DI(2) => \result[4]_i_3_n_0\,
      DI(1) => \result[4]_i_4_n_0\,
      DI(0) => \result[4]_i_5_n_0\,
      O(3) => \result_reg[4]_i_1_n_4\,
      O(2) => \result_reg[4]_i_1_n_5\,
      O(1) => \result_reg[4]_i_1_n_6\,
      O(0) => \result_reg[4]_i_1_n_7\,
      S(3) => \result[4]_i_6_n_0\,
      S(2) => \result[4]_i_7_n_0\,
      S(1) => \result[4]_i_8_n_0\,
      S(0) => \result[4]_i_9_n_0\
    );
\result_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[4]_i_1_n_6\,
      Q => result_reg(5)
    );
\result_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[4]_i_1_n_5\,
      Q => result_reg(6)
    );
\result_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[4]_i_1_n_4\,
      Q => result_reg(7)
    );
\result_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[8]_i_1_n_7\,
      Q => result_reg(8)
    );
\result_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[4]_i_1_n_0\,
      CO(3) => \result_reg[8]_i_1_n_0\,
      CO(2) => \result_reg[8]_i_1_n_1\,
      CO(1) => \result_reg[8]_i_1_n_2\,
      CO(0) => \result_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \result_reg[11]_0\(0),
      DI(2) => \result[8]_i_3_n_0\,
      DI(1) => \result[8]_i_4_n_0\,
      DI(0) => \result[8]_i_5_n_0\,
      O(3) => \result_reg[8]_i_1_n_4\,
      O(2) => \result_reg[8]_i_1_n_5\,
      O(1) => \result_reg[8]_i_1_n_6\,
      O(0) => \result_reg[8]_i_1_n_7\,
      S(3) => \result[8]_i_6_n_0\,
      S(2) => \result[8]_i_7_n_0\,
      S(1) => \result[8]_i_8_n_0\,
      S(0) => \result[8]_i_9_n_0\
    );
\result_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => \result_reg[8]_i_1_n_6\,
      Q => result_reg(9)
    );
valid_in_filt_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => \^e\(0)
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
    \ram_out_reg[6]_0\ : out STD_LOGIC;
    \ram_out_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_reg[3][7]_0\ : out STD_LOGIC;
    \ram_reg[7][7]_0\ : out STD_LOGIC;
    \ram_reg[3][6]_0\ : out STD_LOGIC;
    \ram_reg[7][6]_0\ : out STD_LOGIC;
    \ram_reg[7][5]_0\ : out STD_LOGIC;
    \ram_reg[3][5]_0\ : out STD_LOGIC;
    \ram_reg[7][4]_0\ : out STD_LOGIC;
    \ram_reg[3][4]_0\ : out STD_LOGIC;
    \ram_reg[3][3]_0\ : out STD_LOGIC;
    \ram_reg[7][3]_0\ : out STD_LOGIC;
    \ram_reg[3][2]_0\ : out STD_LOGIC;
    \ram_reg[7][2]_0\ : out STD_LOGIC;
    \ram_reg[3][1]_0\ : out STD_LOGIC;
    \ram_reg[7][1]_0\ : out STD_LOGIC;
    \ram_reg[3][0]_0\ : out STD_LOGIC;
    \ram_reg[7][0]_0\ : out STD_LOGIC;
    \rom_out_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \multOp__0_carry__1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \multOp__0_carry__0\ : in STD_LOGIC;
    \ram_out_reg[7]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_reg[7][0]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ram_out_reg[7]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \multOp__0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \^ram_out_reg[1]_0\ : STD_LOGIC;
  signal \^ram_out_reg[4]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ram_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \multOp__0_carry__1_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \multOp__0_carry_i_8\ : label is "soft_lutpair3";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \ram_out_reg[1]_0\ <= \^ram_out_reg[1]_0\;
  \ram_out_reg[4]_0\(1 downto 0) <= \^ram_out_reg[4]_0\(1 downto 0);
\multOp__0_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \multOp__0_carry__1\(0),
      I2 => \^q\(0),
      I3 => \multOp__0_carry__1\(1),
      I4 => \^q\(1),
      I5 => \multOp__0_carry__1\(2),
      O => \multOp__0_carry__0_i_14_n_0\
    );
\multOp__0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \^q\(4),
      I1 => \multOp__0_carry__1\(0),
      I2 => \multOp__0_carry__0\,
      I3 => \multOp__0_carry__0_i_14_n_0\,
      O => \^ram_out_reg[4]_0\(1)
    );
\multOp__0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => \multOp__0_carry__0_i_14_n_0\,
      I1 => \^q\(4),
      I2 => \multOp__0_carry__1\(0),
      I3 => \multOp__0_carry__0\,
      O => \^ram_out_reg[4]_0\(0)
    );
\multOp__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA556A6A6A"
    )
        port map (
      I0 => \^ram_out_reg[4]_0\(0),
      I1 => \multOp__0_carry__1\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \multOp__0_carry__1\(3),
      I5 => \^ram_out_reg[1]_0\,
      O => \rom_out_reg[1]\(0)
    );
\multOp__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(7),
      I1 => \multOp__0_carry__1\(3),
      O => \ram_out_reg[7]_0\(0)
    );
\multOp__0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(6),
      I1 => \multOp__0_carry__1\(2),
      O => \ram_out_reg[6]_0\
    );
\multOp__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1\(2),
      I2 => \^q\(1),
      I3 => \multOp__0_carry__1\(1),
      I4 => \^q\(2),
      I5 => \multOp__0_carry__1\(0),
      O => S(1)
    );
\multOp__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1\(0),
      I2 => \multOp__0_carry__1\(1),
      I3 => \^q\(0),
      O => S(0)
    );
\multOp__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1\(2),
      O => \^ram_out_reg[1]_0\
    );
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
\ram_out[7]_i_2\: unisim.vcomponents.LUT6
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
\ram_out[7]_i_3\: unisim.vcomponents.LUT6
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
      CE => \ram_out_reg[7]_2\(0),
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\ram_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[7]_2\(0),
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
\ram_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[7]_2\(0),
      D => D(2),
      Q => \^q\(2),
      R => '0'
    );
\ram_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[7]_2\(0),
      D => D(3),
      Q => \^q\(3),
      R => '0'
    );
\ram_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[7]_2\(0),
      D => D(4),
      Q => \^q\(4),
      R => '0'
    );
\ram_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[7]_2\(0),
      D => D(5),
      Q => \^q\(5),
      R => '0'
    );
\ram_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[7]_2\(0),
      D => D(6),
      Q => \^q\(6),
      R => '0'
    );
\ram_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_out_reg[7]_2\(0),
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
      CLR => \ram_reg[7][0]_1\(8),
      D => \ram_reg[7][0]_1\(0),
      Q => \ram_reg[0]\(0)
    );
\ram_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \ram_reg[7][0]_1\(8),
      D => \ram_reg[7][0]_1\(1),
      Q => \ram_reg[0]\(1)
    );
\ram_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \ram_reg[7][0]_1\(8),
      D => \ram_reg[7][0]_1\(2),
      Q => \ram_reg[0]\(2)
    );
\ram_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \ram_reg[7][0]_1\(8),
      D => \ram_reg[7][0]_1\(3),
      Q => \ram_reg[0]\(3)
    );
\ram_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \ram_reg[7][0]_1\(8),
      D => \ram_reg[7][0]_1\(4),
      Q => \ram_reg[0]\(4)
    );
\ram_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \ram_reg[7][0]_1\(8),
      D => \ram_reg[7][0]_1\(5),
      Q => \ram_reg[0]\(5)
    );
\ram_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \ram_reg[7][0]_1\(8),
      D => \ram_reg[7][0]_1\(6),
      Q => \ram_reg[0]\(6)
    );
\ram_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \ram_reg[7][0]_1\(8),
      D => \ram_reg[7][0]_1\(7),
      Q => \ram_reg[0]\(7)
    );
\ram_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
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
      CLR => \ram_reg[7][0]_1\(8),
      D => \ram_reg[6]\(7),
      Q => \ram_reg[7]\(7)
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
    \rom_out_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mac_init_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rom_out_reg[1]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ram_out_reg[7]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ram_out_reg[6]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \multOp__0_carry__1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \multOp__0_carry__1_0\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    mac_init : in STD_LOGIC;
    \multOp__0_carry\ : in STD_LOGIC;
    \multOp__0_carry__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ROM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ROM is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \multOp__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \multOp__0_carry_i_9_n_0\ : STD_LOGIC;
  signal \^ram_out_reg[6]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rom_out_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HLUTNM : string;
  attribute HLUTNM of \multOp__0_carry__0_i_1\ : label is "lutpair0";
  attribute HLUTNM of \multOp__0_carry__0_i_5\ : label is "lutpair1";
  attribute HLUTNM of \multOp__0_carry__0_i_6\ : label is "lutpair0";
  attribute HLUTNM of \multOp__0_carry__1_i_3\ : label is "lutpair1";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \ram_out_reg[6]\(1 downto 0) <= \^ram_out_reg[6]\(1 downto 0);
  \rom_out_reg[3]_0\(1 downto 0) <= \^rom_out_reg[3]_0\(1 downto 0);
\multOp__0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D444"
    )
        port map (
      I0 => \multOp__0_carry__0_i_9_n_0\,
      I1 => \multOp__0_carry__0_i_10_n_0\,
      I2 => \multOp__0_carry__1\(6),
      I3 => \^q\(0),
      O => \^ram_out_reg[6]\(1)
    );
\multOp__0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1\(5),
      I2 => \multOp__0_carry__1\(4),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1\(3),
      I5 => \^q\(3),
      O => \multOp__0_carry__0_i_10_n_0\
    );
\multOp__0_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07777FFF7FFF7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1\(2),
      I2 => \^q\(3),
      I3 => \multOp__0_carry__1\(1),
      I4 => \multOp__0_carry__1\(3),
      I5 => \^q\(1),
      O => \multOp__0_carry__0_i_11_n_0\
    );
\multOp__0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1\(4),
      I2 => \multOp__0_carry__1\(3),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1\(2),
      I5 => \^q\(3),
      O => \multOp__0_carry__0_i_12_n_0\
    );
\multOp__0_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1\(3),
      I2 => \multOp__0_carry__1\(2),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1\(1),
      I5 => \^q\(3),
      O => \rom_out_reg[1]_0\
    );
\multOp__0_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07777FFF7FFF7FFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \multOp__0_carry__1\(3),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1\(4),
      I4 => \multOp__0_carry__1\(5),
      I5 => \^q\(1),
      O => \multOp__0_carry__0_i_15_n_0\
    );
\multOp__0_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1\(6),
      I2 => \multOp__0_carry__1\(5),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1\(4),
      I5 => \^q\(3),
      O => \multOp__0_carry__0_i_16_n_0\
    );
\multOp__0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D444"
    )
        port map (
      I0 => \multOp__0_carry__0_i_11_n_0\,
      I1 => \multOp__0_carry__0_i_12_n_0\,
      I2 => \multOp__0_carry__1\(5),
      I3 => \^q\(0),
      O => \^ram_out_reg[6]\(0)
    );
\multOp__0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666999"
    )
        port map (
      I0 => \multOp__0_carry__0_i_15_n_0\,
      I1 => \multOp__0_carry__0_i_16_n_0\,
      I2 => \multOp__0_carry__1\(7),
      I3 => \^q\(0),
      I4 => \^ram_out_reg[6]\(1),
      O => \ram_out_reg[7]\(2)
    );
\multOp__0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666999"
    )
        port map (
      I0 => \multOp__0_carry__0_i_9_n_0\,
      I1 => \multOp__0_carry__0_i_10_n_0\,
      I2 => \multOp__0_carry__1\(6),
      I3 => \^q\(0),
      I4 => \^ram_out_reg[6]\(0),
      O => \ram_out_reg[7]\(1)
    );
\multOp__0_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666999"
    )
        port map (
      I0 => \multOp__0_carry__0_i_11_n_0\,
      I1 => \multOp__0_carry__0_i_12_n_0\,
      I2 => \multOp__0_carry__1\(5),
      I3 => \^q\(0),
      I4 => \multOp__0_carry__0\(0),
      O => \ram_out_reg[7]\(0)
    );
\multOp__0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07777FFF7FFF7FFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \multOp__0_carry__1\(2),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1\(3),
      I4 => \multOp__0_carry__1\(4),
      I5 => \^q\(1),
      O => \multOp__0_carry__0_i_9_n_0\
    );
\multOp__0_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1\(7),
      I2 => \multOp__0_carry__1\(6),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1\(5),
      I5 => \^q\(3),
      O => \multOp__0_carry__1_i_10_n_0\
    );
\multOp__0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"802A2A802A802A80"
    )
        port map (
      I0 => \multOp__0_carry__1_i_7_n_0\,
      I1 => \^q\(3),
      I2 => \multOp__0_carry__1\(5),
      I3 => \multOp__0_carry__1_0\,
      I4 => \multOp__0_carry__1\(7),
      I5 => \^q\(1),
      O => \^rom_out_reg[3]_0\(1)
    );
\multOp__0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D444"
    )
        port map (
      I0 => \multOp__0_carry__0_i_15_n_0\,
      I1 => \multOp__0_carry__0_i_16_n_0\,
      I2 => \multOp__0_carry__1\(7),
      I3 => \^q\(0),
      O => \^rom_out_reg[3]_0\(0)
    );
\multOp__0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"173F8080C0000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1\(6),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1\(5),
      I4 => \^q\(3),
      I5 => \multOp__0_carry__1\(7),
      O => \rom_out_reg[1]_1\(2)
    );
\multOp__0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666699969996999"
    )
        port map (
      I0 => \^rom_out_reg[3]_0\(1),
      I1 => \multOp__0_carry__1_i_9_n_0\,
      I2 => \^q\(3),
      I3 => \multOp__0_carry__1\(6),
      I4 => \^q\(2),
      I5 => \multOp__0_carry__1\(7),
      O => \rom_out_reg[1]_1\(1)
    );
\multOp__0_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^rom_out_reg[3]_0\(0),
      I1 => \multOp__0_carry__1_i_10_n_0\,
      I2 => \multOp__0_carry__1_i_7_n_0\,
      O => \rom_out_reg[1]_1\(0)
    );
\multOp__0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \multOp__0_carry__1\(4),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1\(5),
      I4 => \multOp__0_carry__1\(6),
      I5 => \^q\(1),
      O => \multOp__0_carry__1_i_7_n_0\
    );
\multOp__0_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07777FFF7FFF7FFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \multOp__0_carry__1\(5),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1\(6),
      I4 => \multOp__0_carry__1\(7),
      I5 => \^q\(1),
      O => \multOp__0_carry__1_i_9_n_0\
    );
\multOp__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1\(2),
      I2 => \multOp__0_carry__1\(1),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1\(0),
      I5 => \^q\(3),
      O => DI(2)
    );
\multOp__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1\(1),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1\(0),
      O => DI(1)
    );
\multOp__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1\(1),
      O => DI(0)
    );
\multOp__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"995A3CF066A5C30F"
    )
        port map (
      I0 => \^q\(3),
      I1 => \multOp__0_carry__1\(2),
      I2 => \multOp__0_carry\,
      I3 => \^q\(1),
      I4 => \multOp__0_carry__1\(0),
      I5 => \multOp__0_carry_i_9_n_0\,
      O => S(1)
    );
\multOp__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1\(0),
      O => S(0)
    );
\multOp__0_carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1\(3),
      O => \multOp__0_carry_i_9_n_0\
    );
\result[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CO(0),
      I1 => mac_init,
      O => mac_init_reg(0)
    );
\rom_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\rom_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
\rom_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => '0'
    );
\rom_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_depth_reg is
  port (
    Dout : out STD_LOGIC;
    Dout_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg1_reg[23]\ : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    \slv_reg1_reg[23]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_depth_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_depth_reg is
  signal \^dout\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 1 );
begin
  Dout <= \^dout\;
\DataInternal_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => D(0),
      Q => p_0_out(1)
    );
\DataInternal_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => p_0_out(1),
      Q => p_0_out(2)
    );
\DataInternal_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => p_0_out(2),
      Q => p_0_out(3)
    );
\DataInternal_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => p_0_out(3),
      Q => p_0_out(4)
    );
\DataInternal_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => p_0_out(4),
      Q => p_0_out(5)
    );
\DataInternal_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => p_0_out(5),
      Q => p_0_out(6)
    );
\DataInternal_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => p_0_out(6),
      Q => p_0_out(7)
    );
\DataInternal_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => p_0_out(7),
      Q => p_0_out(8)
    );
\DataInternal_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => p_0_out(8),
      Q => p_0_in
    );
Dout_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => p_0_in,
      Q => \^dout\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880888"
    )
        port map (
      I0 => \^dout\,
      I1 => s00_axi_aresetn,
      I2 => \slv_reg1_reg[23]\,
      I3 => s00_axi_arvalid,
      I4 => \slv_reg1_reg[23]_0\,
      O => Dout_reg_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit is
  port (
    valid_in_filt_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Dout : out STD_LOGIC;
    mac_init : out STD_LOGIC;
    Dout_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \Dout_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \Dout_reg[1]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg1_reg[23]\ : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    \slv_reg1_reg[23]_0\ : in STD_LOGIC;
    \ram_out_reg[7]\ : in STD_LOGIC;
    \ram_out_reg[7]_0\ : in STD_LOGIC;
    \ram_out_reg[6]\ : in STD_LOGIC;
    \ram_out_reg[6]_0\ : in STD_LOGIC;
    \ram_out_reg[5]\ : in STD_LOGIC;
    \ram_out_reg[5]_0\ : in STD_LOGIC;
    \ram_out_reg[4]\ : in STD_LOGIC;
    \ram_out_reg[4]_0\ : in STD_LOGIC;
    \ram_out_reg[3]\ : in STD_LOGIC;
    \ram_out_reg[3]_0\ : in STD_LOGIC;
    \ram_out_reg[2]\ : in STD_LOGIC;
    \ram_out_reg[2]_0\ : in STD_LOGIC;
    \ram_out_reg[1]\ : in STD_LOGIC;
    \ram_out_reg[1]_0\ : in STD_LOGIC;
    \ram_out_reg[0]\ : in STD_LOGIC;
    \ram_out_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit is
  signal counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal valid_in_filt0 : STD_LOGIC;
  signal \^valid_in_filt_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal valid_in_old : STD_LOGIC;
  signal valid_in_old_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair2";
begin
  valid_in_filt_reg_0(0) <= \^valid_in_filt_reg_0\(0);
\counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFF2"
    )
        port map (
      I0 => Q(8),
      I1 => valid_in_old,
      I2 => counter(2),
      I3 => counter(1),
      I4 => counter(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      I2 => counter(2),
      O => \counter[2]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(9),
      D => \counter[0]_i_1_n_0\,
      Q => counter(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(9),
      D => \counter[1]_i_1_n_0\,
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(9),
      D => \counter[2]_i_1_n_0\,
      Q => counter(2)
    );
depth: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_depth_reg
     port map (
      D(0) => \^valid_in_filt_reg_0\(0),
      Dout => Dout,
      Dout_reg_0(0) => Dout_reg(0),
      Q(0) => Q(9),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      \slv_reg1_reg[23]\ => \slv_reg1_reg[23]\,
      \slv_reg1_reg[23]_0\ => \slv_reg1_reg[23]_0\
    );
dff0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DFF
     port map (
      D(7 downto 0) => D(7 downto 0),
      \Dout_reg[1]_0\(1 downto 0) => \Dout_reg[1]\(1 downto 0),
      \Dout_reg[1]_1\(3 downto 0) => \Dout_reg[1]_0\(3 downto 0),
      Q(8) => Q(9),
      Q(7 downto 0) => Q(7 downto 0),
      counter(2 downto 0) => counter(2 downto 0),
      \ram_out_reg[0]\(0) => \^valid_in_filt_reg_0\(0),
      \ram_out_reg[0]_0\ => \ram_out_reg[0]\,
      \ram_out_reg[0]_1\ => \ram_out_reg[0]_0\,
      \ram_out_reg[1]\ => \ram_out_reg[1]\,
      \ram_out_reg[1]_0\ => \ram_out_reg[1]_0\,
      \ram_out_reg[2]\ => \ram_out_reg[2]\,
      \ram_out_reg[2]_0\ => \ram_out_reg[2]_0\,
      \ram_out_reg[3]\ => \ram_out_reg[3]\,
      \ram_out_reg[3]_0\ => \ram_out_reg[3]_0\,
      \ram_out_reg[4]\ => \ram_out_reg[4]\,
      \ram_out_reg[4]_0\ => \ram_out_reg[4]_0\,
      \ram_out_reg[5]\ => \ram_out_reg[5]\,
      \ram_out_reg[5]_0\ => \ram_out_reg[5]_0\,
      \ram_out_reg[6]\ => \ram_out_reg[6]\,
      \ram_out_reg[6]_0\ => \ram_out_reg[6]_0\,
      \ram_out_reg[7]\ => \ram_out_reg[7]\,
      \ram_out_reg[7]_0\ => \ram_out_reg[7]_0\,
      s00_axi_aclk => s00_axi_aclk
    );
mac_init_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^valid_in_filt_reg_0\(0),
      PRE => Q(9),
      Q => mac_init
    );
valid_in_filt_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => valid_in_old,
      I1 => Q(8),
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(2),
      O => valid_in_filt0
    );
valid_in_filt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => valid_in_filt0,
      Q => \^valid_in_filt_reg_0\(0),
      R => '0'
    );
valid_in_old_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF000100"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(0),
      I3 => Q(8),
      I4 => valid_in_old,
      I5 => Q(9),
      O => valid_in_old_i_1_n_0
    );
valid_in_old_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => valid_in_old_i_1_n_0,
      Q => valid_in_old,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_filter_unit is
  port (
    Dout : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \fir_out_reg[23]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg1_reg[23]\ : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    \slv_reg1_reg[23]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_filter_unit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_filter_unit is
  signal A : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAC_Unit_n_0 : STD_LOGIC;
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
  signal RAM_memory_n_31 : STD_LOGIC;
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
  signal ROM_memory_n_20 : STD_LOGIC;
  signal ROM_memory_n_7 : STD_LOGIC;
  signal ROM_memory_n_8 : STD_LOGIC;
  signal ROM_memory_n_9 : STD_LOGIC;
  signal mac_init : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rdata : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rom_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
CU: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit
     port map (
      D(7 downto 0) => p_1_in(7 downto 0),
      Dout => Dout,
      Dout_reg(0) => E(0),
      \Dout_reg[1]\(1 downto 0) => rom_addr(1 downto 0),
      \Dout_reg[1]_0\(3 downto 0) => rdata(3 downto 0),
      E(0) => p_0_in,
      Q(9 downto 0) => Q(9 downto 0),
      mac_init => mac_init,
      \ram_out_reg[0]\ => RAM_memory_n_30,
      \ram_out_reg[0]_0\ => RAM_memory_n_29,
      \ram_out_reg[1]\ => RAM_memory_n_28,
      \ram_out_reg[1]_0\ => RAM_memory_n_27,
      \ram_out_reg[2]\ => RAM_memory_n_26,
      \ram_out_reg[2]_0\ => RAM_memory_n_25,
      \ram_out_reg[3]\ => RAM_memory_n_24,
      \ram_out_reg[3]_0\ => RAM_memory_n_23,
      \ram_out_reg[4]\ => RAM_memory_n_21,
      \ram_out_reg[4]_0\ => RAM_memory_n_22,
      \ram_out_reg[5]\ => RAM_memory_n_19,
      \ram_out_reg[5]_0\ => RAM_memory_n_20,
      \ram_out_reg[6]\ => RAM_memory_n_18,
      \ram_out_reg[6]_0\ => RAM_memory_n_17,
      \ram_out_reg[7]\ => RAM_memory_n_16,
      \ram_out_reg[7]_0\ => RAM_memory_n_15,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      \slv_reg1_reg[23]\ => \slv_reg1_reg[23]\,
      \slv_reg1_reg[23]_0\ => \slv_reg1_reg[23]_0\,
      valid_in_filt_reg_0(0) => p_0_out(0)
    );
MAC_Unit: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC
     port map (
      CO(0) => MAC_Unit_n_0,
      DI(2) => ROM_memory_n_0,
      DI(1) => ROM_memory_n_1,
      DI(0) => ROM_memory_n_2,
      E(0) => p_0_in,
      Q(0) => Q(9),
      S(3) => ROM_memory_n_10,
      S(2) => RAM_memory_n_0,
      S(1) => RAM_memory_n_1,
      S(0) => ROM_memory_n_11,
      \fir_out_reg[23]_0\(23 downto 0) => \fir_out_reg[23]\(23 downto 0),
      mac_init => mac_init,
      \result[4]_i_9_0\(3) => ROM_memory_n_19,
      \result[4]_i_9_0\(2) => ROM_memory_n_20,
      \result[4]_i_9_0\(1) => RAM_memory_n_10,
      \result[4]_i_9_0\(0) => RAM_memory_n_11,
      \result[4]_i_9_1\(3) => ROM_memory_n_16,
      \result[4]_i_9_1\(2) => ROM_memory_n_17,
      \result[4]_i_9_1\(1) => ROM_memory_n_18,
      \result[4]_i_9_1\(0) => RAM_memory_n_31,
      \result[8]_i_9_0\(2) => RAM_memory_n_14,
      \result[8]_i_9_0\(1) => ROM_memory_n_8,
      \result[8]_i_9_0\(0) => ROM_memory_n_9,
      \result[8]_i_9_1\(2) => ROM_memory_n_13,
      \result[8]_i_9_1\(1) => ROM_memory_n_14,
      \result[8]_i_9_1\(0) => ROM_memory_n_15,
      \result_reg[11]_0\(0) => ROM_memory_n_12,
      s00_axi_aclk => s00_axi_aclk
    );
RAM_memory: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM
     port map (
      D(7 downto 0) => p_1_in(7 downto 0),
      E(0) => p_0_out(0),
      Q(7 downto 0) => ram_out(7 downto 0),
      S(1) => RAM_memory_n_0,
      S(0) => RAM_memory_n_1,
      \multOp__0_carry__0\ => ROM_memory_n_7,
      \multOp__0_carry__1\(3 downto 0) => A(3 downto 0),
      \ram_out_reg[1]_0\ => RAM_memory_n_12,
      \ram_out_reg[4]_0\(1) => RAM_memory_n_10,
      \ram_out_reg[4]_0\(0) => RAM_memory_n_11,
      \ram_out_reg[6]_0\ => RAM_memory_n_13,
      \ram_out_reg[7]_0\(0) => RAM_memory_n_14,
      \ram_out_reg[7]_1\(1 downto 0) => rom_addr(1 downto 0),
      \ram_out_reg[7]_2\(0) => p_0_in,
      \ram_reg[3][0]_0\ => RAM_memory_n_29,
      \ram_reg[3][1]_0\ => RAM_memory_n_27,
      \ram_reg[3][2]_0\ => RAM_memory_n_25,
      \ram_reg[3][3]_0\ => RAM_memory_n_23,
      \ram_reg[3][4]_0\ => RAM_memory_n_22,
      \ram_reg[3][5]_0\ => RAM_memory_n_20,
      \ram_reg[3][6]_0\ => RAM_memory_n_17,
      \ram_reg[3][7]_0\ => RAM_memory_n_15,
      \ram_reg[7][0]_0\ => RAM_memory_n_30,
      \ram_reg[7][0]_1\(8) => Q(9),
      \ram_reg[7][0]_1\(7 downto 0) => Q(7 downto 0),
      \ram_reg[7][1]_0\ => RAM_memory_n_28,
      \ram_reg[7][2]_0\ => RAM_memory_n_26,
      \ram_reg[7][3]_0\ => RAM_memory_n_24,
      \ram_reg[7][4]_0\ => RAM_memory_n_21,
      \ram_reg[7][5]_0\ => RAM_memory_n_19,
      \ram_reg[7][6]_0\ => RAM_memory_n_18,
      \ram_reg[7][7]_0\ => RAM_memory_n_16,
      \rom_out_reg[1]\(0) => RAM_memory_n_31,
      s00_axi_aclk => s00_axi_aclk
    );
ROM_memory: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ROM
     port map (
      CO(0) => MAC_Unit_n_0,
      D(3 downto 0) => rdata(3 downto 0),
      DI(2) => ROM_memory_n_0,
      DI(1) => ROM_memory_n_1,
      DI(0) => ROM_memory_n_2,
      Q(3 downto 0) => A(3 downto 0),
      S(1) => ROM_memory_n_10,
      S(0) => ROM_memory_n_11,
      mac_init => mac_init,
      mac_init_reg(0) => ROM_memory_n_12,
      \multOp__0_carry\ => RAM_memory_n_12,
      \multOp__0_carry__0\(0) => RAM_memory_n_10,
      \multOp__0_carry__1\(7 downto 0) => ram_out(7 downto 0),
      \multOp__0_carry__1_0\ => RAM_memory_n_13,
      \ram_out_reg[6]\(1) => ROM_memory_n_19,
      \ram_out_reg[6]\(0) => ROM_memory_n_20,
      \ram_out_reg[7]\(2) => ROM_memory_n_16,
      \ram_out_reg[7]\(1) => ROM_memory_n_17,
      \ram_out_reg[7]\(0) => ROM_memory_n_18,
      \rom_out_reg[1]_0\ => ROM_memory_n_7,
      \rom_out_reg[1]_1\(2) => ROM_memory_n_13,
      \rom_out_reg[1]_1\(1) => ROM_memory_n_14,
      \rom_out_reg[1]_1\(0) => ROM_memory_n_15,
      \rom_out_reg[3]_0\(1) => ROM_memory_n_8,
      \rom_out_reg[3]_0\(0) => ROM_memory_n_9,
      s00_axi_aclk => s00_axi_aclk
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
    axi_rvalid_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal Dout : STD_LOGIC;
  signal FIR_n_1 : STD_LOGIC;
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
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal fir_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rst : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
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
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal valid_in : STD_LOGIC;
  signal \valid_in_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal valid_in_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \valid_in_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \valid_in_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \valid_in_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \valid_in_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \valid_in_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \valid_in_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \valid_in_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \valid_in_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \valid_in_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \valid_in_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \valid_in_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \valid_in_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \valid_in_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \valid_in_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \valid_in_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \valid_in_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \valid_in_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \valid_in_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \valid_in_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \valid_in_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \valid_in_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \valid_in_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \valid_in_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \valid_in_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \valid_in_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \valid_in_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \valid_in_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \valid_in_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \valid_in_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \valid_in_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \valid_in_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \valid_in_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \valid_in_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \valid_in_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \valid_in_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \valid_in_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \valid_in_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \valid_in_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \valid_in_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \valid_in_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \valid_in_counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \valid_in_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \valid_in_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \valid_in_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \valid_in_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \valid_in_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \valid_in_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \valid_in_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \valid_in_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \valid_in_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \valid_in_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \valid_in_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \valid_in_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \valid_in_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \valid_in_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \valid_in_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \valid_in_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \valid_in_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \valid_in_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \valid_in_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \valid_in_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \valid_in_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \valid_in_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
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
  signal \NLW_valid_in_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_valid_out_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair4";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
FIR: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_filter_unit
     port map (
      Dout => Dout,
      E(0) => FIR_n_1,
      Q(9) => rst,
      Q(8) => valid_in,
      Q(7) => \slv_reg0_reg_n_0_[7]\,
      Q(6) => \slv_reg0_reg_n_0_[6]\,
      Q(5) => \slv_reg0_reg_n_0_[5]\,
      Q(4) => \slv_reg0_reg_n_0_[4]\,
      Q(3) => \slv_reg0_reg_n_0_[3]\,
      Q(2) => \slv_reg0_reg_n_0_[2]\,
      Q(1) => \slv_reg0_reg_n_0_[1]\,
      Q(0) => \slv_reg0_reg_n_0_[0]\,
      \fir_out_reg[23]\(23 downto 0) => fir_out(23 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      \slv_reg1_reg[23]\ => \^s_axi_arready\,
      \slv_reg1_reg[23]_0\ => \^axi_rvalid_reg_0\
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
      I2 => valid_out_counter_reg(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_in_counter_reg(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[10]\,
      I1 => valid_in_counter_reg(10),
      I2 => \slv_reg0_reg_n_0_[10]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_out_counter_reg(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[11]\,
      I1 => \slv_reg1_reg_n_0_[11]\,
      I2 => valid_in_counter_reg(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => valid_out_counter_reg(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[12]\,
      I1 => \slv_reg1_reg_n_0_[12]\,
      I2 => valid_out_counter_reg(12),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_in_counter_reg(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[13]\,
      I1 => \slv_reg1_reg_n_0_[13]\,
      I2 => valid_out_counter_reg(13),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_in_counter_reg(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[14]\,
      I1 => \slv_reg1_reg_n_0_[14]\,
      I2 => valid_in_counter_reg(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => valid_out_counter_reg(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[15]\,
      I1 => \slv_reg1_reg_n_0_[15]\,
      I2 => valid_in_counter_reg(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => valid_out_counter_reg(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[16]\,
      I1 => \slv_reg1_reg_n_0_[16]\,
      I2 => valid_out_counter_reg(16),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_in_counter_reg(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[17]\,
      I1 => valid_in_counter_reg(17),
      I2 => \slv_reg0_reg_n_0_[17]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_out_counter_reg(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[18]\,
      I1 => valid_in_counter_reg(18),
      I2 => \slv_reg0_reg_n_0_[18]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_out_counter_reg(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[19]\,
      I1 => \slv_reg1_reg_n_0_[19]\,
      I2 => valid_in_counter_reg(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => valid_out_counter_reg(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[1]\,
      I1 => \slv_reg1_reg_n_0_[1]\,
      I2 => valid_out_counter_reg(1),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_in_counter_reg(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[20]\,
      I1 => \slv_reg1_reg_n_0_[20]\,
      I2 => valid_out_counter_reg(20),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_in_counter_reg(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[21]\,
      I1 => \slv_reg1_reg_n_0_[21]\,
      I2 => valid_out_counter_reg(21),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_in_counter_reg(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[22]\,
      I1 => \slv_reg1_reg_n_0_[22]\,
      I2 => valid_in_counter_reg(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => valid_out_counter_reg(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[23]\,
      I1 => \slv_reg1_reg_n_0_[23]\,
      I2 => valid_in_counter_reg(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => valid_out_counter_reg(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[24]\,
      I1 => \slv_reg1_reg_n_0_[24]\,
      I2 => valid_in_counter_reg(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => valid_out_counter_reg(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF0CA00C"
    )
        port map (
      I0 => valid_out_counter_reg(25),
      I1 => \slv_reg0_reg_n_0_[25]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => valid_in_counter_reg(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF0CA00C"
    )
        port map (
      I0 => valid_out_counter_reg(26),
      I1 => \slv_reg0_reg_n_0_[26]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => valid_in_counter_reg(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CA00CA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[27]\,
      I1 => valid_in_counter_reg(27),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => valid_out_counter_reg(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF0CA00C"
    )
        port map (
      I0 => valid_out_counter_reg(28),
      I1 => \slv_reg0_reg_n_0_[28]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => valid_in_counter_reg(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF0CA00C"
    )
        port map (
      I0 => valid_out_counter_reg(29),
      I1 => \slv_reg0_reg_n_0_[29]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => valid_in_counter_reg(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[2]\,
      I1 => \slv_reg1_reg_n_0_[2]\,
      I2 => valid_in_counter_reg(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => valid_out_counter_reg(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => valid_out_counter_reg(30),
      I1 => valid_in_counter_reg(30),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF0CA00C"
    )
        port map (
      I0 => valid_out_counter_reg(31),
      I1 => \slv_reg0_reg_n_0_[31]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => valid_in_counter_reg(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[3]\,
      I1 => \slv_reg1_reg_n_0_[3]\,
      I2 => valid_in_counter_reg(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => valid_out_counter_reg(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[4]\,
      I1 => \slv_reg1_reg_n_0_[4]\,
      I2 => valid_out_counter_reg(4),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_in_counter_reg(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[5]\,
      I1 => valid_out_counter_reg(5),
      I2 => \slv_reg0_reg_n_0_[5]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_in_counter_reg(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[6]\,
      I1 => valid_in_counter_reg(6),
      I2 => \slv_reg0_reg_n_0_[6]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_out_counter_reg(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[7]\,
      I1 => \slv_reg1_reg_n_0_[7]\,
      I2 => valid_in_counter_reg(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => valid_out_counter_reg(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => valid_in,
      I1 => \slv_reg1_reg_n_0_[8]\,
      I2 => valid_out_counter_reg(8),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_in_counter_reg(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[9]\,
      I1 => valid_in_counter_reg(9),
      I2 => rst,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => valid_out_counter_reg(9),
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
      I3 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
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
      Q => valid_in,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => rst,
      R => axi_awready_i_1_n_0
    );
\slv_reg1[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFDFFF8AAA0000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^axi_rvalid_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => \^s_axi_arready\,
      I4 => Dout,
      I5 => \slv_reg1_reg_n_0_[24]\,
      O => \slv_reg1[24]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => '0'
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => '0'
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => '0'
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => '0'
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => '0'
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => '0'
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => '0'
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => '0'
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => '0'
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => '0'
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => '0'
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => '0'
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => '0'
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => '0'
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => '0'
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(23),
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
      CE => FIR_n_1,
      D => fir_out(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => '0'
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => '0'
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => '0'
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => '0'
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => '0'
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => '0'
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => '0'
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => FIR_n_1,
      D => fir_out(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => '0'
    );
\valid_in_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => valid_in_counter_reg(0),
      O => \valid_in_counter[0]_i_2_n_0\
    );
\valid_in_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[0]_i_1_n_7\,
      Q => valid_in_counter_reg(0),
      R => '0'
    );
\valid_in_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \valid_in_counter_reg[0]_i_1_n_0\,
      CO(2) => \valid_in_counter_reg[0]_i_1_n_1\,
      CO(1) => \valid_in_counter_reg[0]_i_1_n_2\,
      CO(0) => \valid_in_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \valid_in_counter_reg[0]_i_1_n_4\,
      O(2) => \valid_in_counter_reg[0]_i_1_n_5\,
      O(1) => \valid_in_counter_reg[0]_i_1_n_6\,
      O(0) => \valid_in_counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => valid_in_counter_reg(3 downto 1),
      S(0) => \valid_in_counter[0]_i_2_n_0\
    );
\valid_in_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[8]_i_1_n_5\,
      Q => valid_in_counter_reg(10),
      R => '0'
    );
\valid_in_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[8]_i_1_n_4\,
      Q => valid_in_counter_reg(11),
      R => '0'
    );
\valid_in_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[12]_i_1_n_7\,
      Q => valid_in_counter_reg(12),
      R => '0'
    );
\valid_in_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_in_counter_reg[8]_i_1_n_0\,
      CO(3) => \valid_in_counter_reg[12]_i_1_n_0\,
      CO(2) => \valid_in_counter_reg[12]_i_1_n_1\,
      CO(1) => \valid_in_counter_reg[12]_i_1_n_2\,
      CO(0) => \valid_in_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_in_counter_reg[12]_i_1_n_4\,
      O(2) => \valid_in_counter_reg[12]_i_1_n_5\,
      O(1) => \valid_in_counter_reg[12]_i_1_n_6\,
      O(0) => \valid_in_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => valid_in_counter_reg(15 downto 12)
    );
\valid_in_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[12]_i_1_n_6\,
      Q => valid_in_counter_reg(13),
      R => '0'
    );
\valid_in_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[12]_i_1_n_5\,
      Q => valid_in_counter_reg(14),
      R => '0'
    );
\valid_in_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[12]_i_1_n_4\,
      Q => valid_in_counter_reg(15),
      R => '0'
    );
\valid_in_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[16]_i_1_n_7\,
      Q => valid_in_counter_reg(16),
      R => '0'
    );
\valid_in_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_in_counter_reg[12]_i_1_n_0\,
      CO(3) => \valid_in_counter_reg[16]_i_1_n_0\,
      CO(2) => \valid_in_counter_reg[16]_i_1_n_1\,
      CO(1) => \valid_in_counter_reg[16]_i_1_n_2\,
      CO(0) => \valid_in_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_in_counter_reg[16]_i_1_n_4\,
      O(2) => \valid_in_counter_reg[16]_i_1_n_5\,
      O(1) => \valid_in_counter_reg[16]_i_1_n_6\,
      O(0) => \valid_in_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => valid_in_counter_reg(19 downto 16)
    );
\valid_in_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[16]_i_1_n_6\,
      Q => valid_in_counter_reg(17),
      R => '0'
    );
\valid_in_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[16]_i_1_n_5\,
      Q => valid_in_counter_reg(18),
      R => '0'
    );
\valid_in_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[16]_i_1_n_4\,
      Q => valid_in_counter_reg(19),
      R => '0'
    );
\valid_in_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[0]_i_1_n_6\,
      Q => valid_in_counter_reg(1),
      R => '0'
    );
\valid_in_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[20]_i_1_n_7\,
      Q => valid_in_counter_reg(20),
      R => '0'
    );
\valid_in_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_in_counter_reg[16]_i_1_n_0\,
      CO(3) => \valid_in_counter_reg[20]_i_1_n_0\,
      CO(2) => \valid_in_counter_reg[20]_i_1_n_1\,
      CO(1) => \valid_in_counter_reg[20]_i_1_n_2\,
      CO(0) => \valid_in_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_in_counter_reg[20]_i_1_n_4\,
      O(2) => \valid_in_counter_reg[20]_i_1_n_5\,
      O(1) => \valid_in_counter_reg[20]_i_1_n_6\,
      O(0) => \valid_in_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => valid_in_counter_reg(23 downto 20)
    );
\valid_in_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[20]_i_1_n_6\,
      Q => valid_in_counter_reg(21),
      R => '0'
    );
\valid_in_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[20]_i_1_n_5\,
      Q => valid_in_counter_reg(22),
      R => '0'
    );
\valid_in_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[20]_i_1_n_4\,
      Q => valid_in_counter_reg(23),
      R => '0'
    );
\valid_in_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[24]_i_1_n_7\,
      Q => valid_in_counter_reg(24),
      R => '0'
    );
\valid_in_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_in_counter_reg[20]_i_1_n_0\,
      CO(3) => \valid_in_counter_reg[24]_i_1_n_0\,
      CO(2) => \valid_in_counter_reg[24]_i_1_n_1\,
      CO(1) => \valid_in_counter_reg[24]_i_1_n_2\,
      CO(0) => \valid_in_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_in_counter_reg[24]_i_1_n_4\,
      O(2) => \valid_in_counter_reg[24]_i_1_n_5\,
      O(1) => \valid_in_counter_reg[24]_i_1_n_6\,
      O(0) => \valid_in_counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => valid_in_counter_reg(27 downto 24)
    );
\valid_in_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[24]_i_1_n_6\,
      Q => valid_in_counter_reg(25),
      R => '0'
    );
\valid_in_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[24]_i_1_n_5\,
      Q => valid_in_counter_reg(26),
      R => '0'
    );
\valid_in_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[24]_i_1_n_4\,
      Q => valid_in_counter_reg(27),
      R => '0'
    );
\valid_in_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[28]_i_1_n_7\,
      Q => valid_in_counter_reg(28),
      R => '0'
    );
\valid_in_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_in_counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_valid_in_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \valid_in_counter_reg[28]_i_1_n_1\,
      CO(1) => \valid_in_counter_reg[28]_i_1_n_2\,
      CO(0) => \valid_in_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_in_counter_reg[28]_i_1_n_4\,
      O(2) => \valid_in_counter_reg[28]_i_1_n_5\,
      O(1) => \valid_in_counter_reg[28]_i_1_n_6\,
      O(0) => \valid_in_counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => valid_in_counter_reg(31 downto 28)
    );
\valid_in_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[28]_i_1_n_6\,
      Q => valid_in_counter_reg(29),
      R => '0'
    );
\valid_in_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[0]_i_1_n_5\,
      Q => valid_in_counter_reg(2),
      R => '0'
    );
\valid_in_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[28]_i_1_n_5\,
      Q => valid_in_counter_reg(30),
      R => '0'
    );
\valid_in_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[28]_i_1_n_4\,
      Q => valid_in_counter_reg(31),
      R => '0'
    );
\valid_in_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[0]_i_1_n_4\,
      Q => valid_in_counter_reg(3),
      R => '0'
    );
\valid_in_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[4]_i_1_n_7\,
      Q => valid_in_counter_reg(4),
      R => '0'
    );
\valid_in_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_in_counter_reg[0]_i_1_n_0\,
      CO(3) => \valid_in_counter_reg[4]_i_1_n_0\,
      CO(2) => \valid_in_counter_reg[4]_i_1_n_1\,
      CO(1) => \valid_in_counter_reg[4]_i_1_n_2\,
      CO(0) => \valid_in_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_in_counter_reg[4]_i_1_n_4\,
      O(2) => \valid_in_counter_reg[4]_i_1_n_5\,
      O(1) => \valid_in_counter_reg[4]_i_1_n_6\,
      O(0) => \valid_in_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => valid_in_counter_reg(7 downto 4)
    );
\valid_in_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[4]_i_1_n_6\,
      Q => valid_in_counter_reg(5),
      R => '0'
    );
\valid_in_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[4]_i_1_n_5\,
      Q => valid_in_counter_reg(6),
      R => '0'
    );
\valid_in_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[4]_i_1_n_4\,
      Q => valid_in_counter_reg(7),
      R => '0'
    );
\valid_in_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[8]_i_1_n_7\,
      Q => valid_in_counter_reg(8),
      R => '0'
    );
\valid_in_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \valid_in_counter_reg[4]_i_1_n_0\,
      CO(3) => \valid_in_counter_reg[8]_i_1_n_0\,
      CO(2) => \valid_in_counter_reg[8]_i_1_n_1\,
      CO(1) => \valid_in_counter_reg[8]_i_1_n_2\,
      CO(0) => \valid_in_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \valid_in_counter_reg[8]_i_1_n_4\,
      O(2) => \valid_in_counter_reg[8]_i_1_n_5\,
      O(1) => \valid_in_counter_reg[8]_i_1_n_6\,
      O(0) => \valid_in_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => valid_in_counter_reg(11 downto 8)
    );
\valid_in_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => valid_in,
      CE => '1',
      D => \valid_in_counter_reg[8]_i_1_n_6\,
      Q => valid_in_counter_reg(9),
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
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[8]_i_1_n_5\,
      Q => valid_out_counter_reg(10),
      R => '0'
    );
\valid_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[8]_i_1_n_4\,
      Q => valid_out_counter_reg(11),
      R => '0'
    );
\valid_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[12]_i_1_n_6\,
      Q => valid_out_counter_reg(13),
      R => '0'
    );
\valid_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[12]_i_1_n_5\,
      Q => valid_out_counter_reg(14),
      R => '0'
    );
\valid_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[12]_i_1_n_4\,
      Q => valid_out_counter_reg(15),
      R => '0'
    );
\valid_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[16]_i_1_n_6\,
      Q => valid_out_counter_reg(17),
      R => '0'
    );
\valid_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[16]_i_1_n_5\,
      Q => valid_out_counter_reg(18),
      R => '0'
    );
\valid_out_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[16]_i_1_n_4\,
      Q => valid_out_counter_reg(19),
      R => '0'
    );
\valid_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[0]_i_1_n_6\,
      Q => valid_out_counter_reg(1),
      R => '0'
    );
\valid_out_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[20]_i_1_n_6\,
      Q => valid_out_counter_reg(21),
      R => '0'
    );
\valid_out_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[20]_i_1_n_5\,
      Q => valid_out_counter_reg(22),
      R => '0'
    );
\valid_out_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[20]_i_1_n_4\,
      Q => valid_out_counter_reg(23),
      R => '0'
    );
\valid_out_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[24]_i_1_n_6\,
      Q => valid_out_counter_reg(25),
      R => '0'
    );
\valid_out_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[24]_i_1_n_5\,
      Q => valid_out_counter_reg(26),
      R => '0'
    );
\valid_out_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[24]_i_1_n_4\,
      Q => valid_out_counter_reg(27),
      R => '0'
    );
\valid_out_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[28]_i_1_n_6\,
      Q => valid_out_counter_reg(29),
      R => '0'
    );
\valid_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[0]_i_1_n_5\,
      Q => valid_out_counter_reg(2),
      R => '0'
    );
\valid_out_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[28]_i_1_n_5\,
      Q => valid_out_counter_reg(30),
      R => '0'
    );
\valid_out_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[28]_i_1_n_4\,
      Q => valid_out_counter_reg(31),
      R => '0'
    );
\valid_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[0]_i_1_n_4\,
      Q => valid_out_counter_reg(3),
      R => '0'
    );
\valid_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[4]_i_1_n_6\,
      Q => valid_out_counter_reg(5),
      R => '0'
    );
\valid_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[4]_i_1_n_5\,
      Q => valid_out_counter_reg(6),
      R => '0'
    );
\valid_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[4]_i_1_n_4\,
      Q => valid_out_counter_reg(7),
      R => '0'
    );
\valid_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
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
    generic map(
      INIT => '0'
    )
        port map (
      C => Dout,
      CE => '1',
      D => \valid_out_counter_reg[8]_i_1_n_6\,
      Q => valid_out_counter_reg(9),
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
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
      axi_rvalid_reg_0 => axi_rvalid_reg,
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
      axi_rvalid_reg => s00_axi_rvalid,
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
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
