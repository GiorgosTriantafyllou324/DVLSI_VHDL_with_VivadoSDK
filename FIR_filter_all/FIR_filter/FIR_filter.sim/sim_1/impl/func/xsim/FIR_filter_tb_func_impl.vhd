-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Apr 24 00:58:51 2024
-- Host        : DESKTOP-7A5ODGC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/gamin/VivadoWorkspace/FIR_filter/FIR_filter.sim/sim_1/impl/func/xsim/FIR_filter_tb_func_impl.vhd
-- Design      : FIR_filter_unit
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DFF is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    counter : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
end DFF;

architecture STRUCTURE of DFF is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rom_out[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rom_out[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rom_out[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rom_out[3]_i_1\ : label is "soft_lutpair0";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\Dout_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => counter(0),
      Q => \^q\(0)
    );
\Dout_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => counter(1),
      Q => \^q\(1)
    );
\Dout_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => counter(2),
      Q => \^q\(2)
    );
\rom_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => D(0)
    );
\rom_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => D(1)
    );
\rom_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      O => D(2)
    );
\rom_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MAC is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result[4]_i_9_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result[4]_i_9_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result[8]_i_9_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \result[8]_i_9_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mac_init : in STD_LOGIC;
    \result_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end MAC;

architecture STRUCTURE of MAC is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \multOp__0_carry__0_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_4\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_5\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_6\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_7\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_5\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_6\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_7\ : STD_LOGIC;
  signal \multOp__0_carry_n_0\ : STD_LOGIC;
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
  signal \result_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \result_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_multOp__0_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_multOp__0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_multOp__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_multOp__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_result_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_result_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_result_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_result_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_result_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \multOp__0_carry\ : label is "PROPCONST SWEEP ";
  attribute OPT_MODIFIED of \multOp__0_carry__0\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \multOp__0_carry__1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \result_reg[0]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \result_reg[12]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \result_reg[16]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \result_reg[20]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \result_reg[4]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \result_reg[8]_i_1\ : label is "SWEEP ";
begin
  CO(0) <= \^co\(0);
  E(0) <= \^e\(0);
\fir_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(0),
      Q => Q(0),
      R => '0'
    );
\fir_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(10),
      Q => Q(10),
      R => '0'
    );
\fir_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(11),
      Q => Q(11),
      R => '0'
    );
\fir_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(12),
      Q => Q(12),
      R => '0'
    );
\fir_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(13),
      Q => Q(13),
      R => '0'
    );
\fir_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(14),
      Q => Q(14),
      R => '0'
    );
\fir_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(15),
      Q => Q(15),
      R => '0'
    );
\fir_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(16),
      Q => Q(16),
      R => '0'
    );
\fir_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(17),
      Q => Q(17),
      R => '0'
    );
\fir_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(18),
      Q => Q(18),
      R => '0'
    );
\fir_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(19),
      Q => Q(19),
      R => '0'
    );
\fir_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(1),
      Q => Q(1),
      R => '0'
    );
\fir_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(20),
      Q => Q(20),
      R => '0'
    );
\fir_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(21),
      Q => Q(21),
      R => '0'
    );
\fir_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(22),
      Q => Q(22),
      R => '0'
    );
\fir_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(23),
      Q => Q(23),
      R => '0'
    );
\fir_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(2),
      Q => Q(2),
      R => '0'
    );
\fir_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(3),
      Q => Q(3),
      R => '0'
    );
\fir_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(4),
      Q => Q(4),
      R => '0'
    );
\fir_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(5),
      Q => Q(5),
      R => '0'
    );
\fir_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(6),
      Q => Q(6),
      R => '0'
    );
\fir_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(7),
      Q => Q(7),
      R => '0'
    );
\fir_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(8),
      Q => Q(8),
      R => '0'
    );
\fir_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      D => result_reg(9),
      Q => Q(9),
      R => '0'
    );
\multOp__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp__0_carry_n_0\,
      CO(2 downto 0) => \NLW_multOp__0_carry_CO_UNCONNECTED\(2 downto 0),
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
      CO(2 downto 0) => \NLW_multOp__0_carry__0_CO_UNCONNECTED\(2 downto 0),
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
      CO(2 downto 0) => \NLW_multOp__0_carry__1_CO_UNCONNECTED\(2 downto 0),
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
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[0]_i_1_n_7\,
      Q => result_reg(0)
    );
\result_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_result_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
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
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[8]_i_1_n_5\,
      Q => result_reg(10)
    );
\result_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[8]_i_1_n_4\,
      Q => result_reg(11)
    );
\result_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[12]_i_1_n_7\,
      Q => result_reg(12)
    );
\result_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[8]_i_1_n_0\,
      CO(3) => \result_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_result_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
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
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[12]_i_1_n_6\,
      Q => result_reg(13)
    );
\result_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[12]_i_1_n_5\,
      Q => result_reg(14)
    );
\result_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[12]_i_1_n_4\,
      Q => result_reg(15)
    );
\result_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[16]_i_1_n_7\,
      Q => result_reg(16)
    );
\result_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[12]_i_1_n_0\,
      CO(3) => \result_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_result_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
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
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[16]_i_1_n_6\,
      Q => result_reg(17)
    );
\result_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[16]_i_1_n_5\,
      Q => result_reg(18)
    );
\result_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[16]_i_1_n_4\,
      Q => result_reg(19)
    );
\result_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[0]_i_1_n_6\,
      Q => result_reg(1)
    );
\result_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[20]_i_1_n_7\,
      Q => result_reg(20)
    );
\result_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_result_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
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
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[20]_i_1_n_6\,
      Q => result_reg(21)
    );
\result_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[20]_i_1_n_5\,
      Q => result_reg(22)
    );
\result_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[20]_i_1_n_4\,
      Q => result_reg(23)
    );
\result_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[0]_i_1_n_5\,
      Q => result_reg(2)
    );
\result_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[0]_i_1_n_4\,
      Q => result_reg(3)
    );
\result_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[4]_i_1_n_7\,
      Q => result_reg(4)
    );
\result_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[0]_i_1_n_0\,
      CO(3) => \result_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_result_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
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
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[4]_i_1_n_6\,
      Q => result_reg(5)
    );
\result_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[4]_i_1_n_5\,
      Q => result_reg(6)
    );
\result_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[4]_i_1_n_4\,
      Q => result_reg(7)
    );
\result_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[8]_i_1_n_7\,
      Q => result_reg(8)
    );
\result_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[4]_i_1_n_0\,
      CO(3) => \result_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_result_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
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
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \result_reg[8]_i_1_n_6\,
      Q => result_reg(9)
    );
valid_in_filt_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => AR(0),
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAM is
  port (
    \ram_out_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \ram_out_reg[2]_0\ : out STD_LOGIC;
    \ram_out_reg[2]_1\ : out STD_LOGIC;
    \ram_out_reg[3]_0\ : out STD_LOGIC;
    \ram_out_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_out_reg[4]_0\ : out STD_LOGIC;
    \ram_out_reg[5]_1\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \multOp__0_carry__1_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \multOp__0_carry__0\ : in STD_LOGIC;
    \multOp__0_carry__1\ : in STD_LOGIC;
    \ram_reg[0][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_out_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end RAM;

architecture STRUCTURE of RAM is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \ram_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \ram_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \ram_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \ram_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \ram_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \ram_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \ram_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \ram_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \ram_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \ram_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \ram_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \ram_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \ram_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \ram_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \ram_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \^ram_out_reg[2]_0\ : STD_LOGIC;
  signal \^ram_out_reg[4]_0\ : STD_LOGIC;
  signal \ram_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \ram_out_reg[2]_0\ <= \^ram_out_reg[2]_0\;
  \ram_out_reg[4]_0\ <= \^ram_out_reg[4]_0\;
\multOp__0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6\(2),
      I2 => \^q\(3),
      I3 => \multOp__0_carry__1_i_6\(3),
      I4 => \^q\(1),
      I5 => \multOp__0_carry__1_i_6\(1),
      O => \^ram_out_reg[2]_0\
    );
\multOp__0_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \multOp__0_carry__1_i_6\(2),
      I2 => \^q\(3),
      I3 => \multOp__0_carry__1_i_6\(3),
      I4 => \^q\(5),
      I5 => \multOp__0_carry__1_i_6\(1),
      O => \^ram_out_reg[4]_0\
    );
\multOp__0_carry__0_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6\(1),
      O => \ram_out_reg[2]_1\
    );
\multOp__0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \^q\(5),
      I1 => \multOp__0_carry__1_i_6\(0),
      I2 => \multOp__0_carry__0\,
      I3 => \^ram_out_reg[2]_0\,
      O => \ram_out_reg[5]_0\(0)
    );
\multOp__0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \^q\(7),
      I1 => \multOp__0_carry__1_i_6\(0),
      I2 => \multOp__0_carry__1\,
      I3 => \^ram_out_reg[4]_0\,
      O => \ram_out_reg[7]_0\(0)
    );
\multOp__0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(5),
      I1 => \multOp__0_carry__1_i_6\(2),
      O => \ram_out_reg[5]_1\
    );
\multOp__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6\(0),
      O => DI(0)
    );
\multOp__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6\(2),
      I2 => \^q\(1),
      I3 => \multOp__0_carry__1_i_6\(1),
      I4 => \multOp__0_carry__1_i_6\(0),
      I5 => \^q\(2),
      O => S(1)
    );
\multOp__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6\(0),
      O => S(0)
    );
\multOp__0_carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \multOp__0_carry__1_i_6\(0),
      O => \ram_out_reg[3]_0\
    );
\ram_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => D(0),
      I1 => \ram_out[0]_i_2_n_0\,
      I2 => \ram_out_reg[0]_0\(2),
      I3 => \ram_out[0]_i_3_n_0\,
      I4 => \ram_reg[0][7]_0\(0),
      O => p_1_in(0)
    );
\ram_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(0),
      I1 => \ram_reg[6]\(0),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[5]\(0),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[4]\(0),
      O => \ram_out[0]_i_2_n_0\
    );
\ram_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(0),
      I1 => \ram_reg[2]\(0),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[1]\(0),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[0]\(0),
      O => \ram_out[0]_i_3_n_0\
    );
\ram_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => D(1),
      I1 => \ram_out[1]_i_2_n_0\,
      I2 => \ram_out_reg[0]_0\(2),
      I3 => \ram_out[1]_i_3_n_0\,
      I4 => \ram_reg[0][7]_0\(0),
      O => p_1_in(1)
    );
\ram_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(1),
      I1 => \ram_reg[6]\(1),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[5]\(1),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[4]\(1),
      O => \ram_out[1]_i_2_n_0\
    );
\ram_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(1),
      I1 => \ram_reg[2]\(1),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[1]\(1),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[0]\(1),
      O => \ram_out[1]_i_3_n_0\
    );
\ram_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => D(2),
      I1 => \ram_out[2]_i_2_n_0\,
      I2 => \ram_out_reg[0]_0\(2),
      I3 => \ram_out[2]_i_3_n_0\,
      I4 => \ram_reg[0][7]_0\(0),
      O => p_1_in(2)
    );
\ram_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(2),
      I1 => \ram_reg[6]\(2),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[5]\(2),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[4]\(2),
      O => \ram_out[2]_i_2_n_0\
    );
\ram_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(2),
      I1 => \ram_reg[2]\(2),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[1]\(2),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[0]\(2),
      O => \ram_out[2]_i_3_n_0\
    );
\ram_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => D(3),
      I1 => \ram_out[3]_i_2_n_0\,
      I2 => \ram_out_reg[0]_0\(2),
      I3 => \ram_out[3]_i_3_n_0\,
      I4 => \ram_reg[0][7]_0\(0),
      O => p_1_in(3)
    );
\ram_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(3),
      I1 => \ram_reg[6]\(3),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[5]\(3),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[4]\(3),
      O => \ram_out[3]_i_2_n_0\
    );
\ram_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(3),
      I1 => \ram_reg[2]\(3),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[1]\(3),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[0]\(3),
      O => \ram_out[3]_i_3_n_0\
    );
\ram_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => D(4),
      I1 => \ram_out[4]_i_2_n_0\,
      I2 => \ram_out_reg[0]_0\(2),
      I3 => \ram_out[4]_i_3_n_0\,
      I4 => \ram_reg[0][7]_0\(0),
      O => p_1_in(4)
    );
\ram_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(4),
      I1 => \ram_reg[6]\(4),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[5]\(4),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[4]\(4),
      O => \ram_out[4]_i_2_n_0\
    );
\ram_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(4),
      I1 => \ram_reg[2]\(4),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[1]\(4),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[0]\(4),
      O => \ram_out[4]_i_3_n_0\
    );
\ram_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => D(5),
      I1 => \ram_out[5]_i_2_n_0\,
      I2 => \ram_out_reg[0]_0\(2),
      I3 => \ram_out[5]_i_3_n_0\,
      I4 => \ram_reg[0][7]_0\(0),
      O => p_1_in(5)
    );
\ram_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(5),
      I1 => \ram_reg[6]\(5),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[5]\(5),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[4]\(5),
      O => \ram_out[5]_i_2_n_0\
    );
\ram_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(5),
      I1 => \ram_reg[2]\(5),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[1]\(5),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[0]\(5),
      O => \ram_out[5]_i_3_n_0\
    );
\ram_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => D(6),
      I1 => \ram_out[6]_i_2_n_0\,
      I2 => \ram_out_reg[0]_0\(2),
      I3 => \ram_out[6]_i_3_n_0\,
      I4 => \ram_reg[0][7]_0\(0),
      O => p_1_in(6)
    );
\ram_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(6),
      I1 => \ram_reg[6]\(6),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[5]\(6),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[4]\(6),
      O => \ram_out[6]_i_2_n_0\
    );
\ram_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(6),
      I1 => \ram_reg[2]\(6),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[1]\(6),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[0]\(6),
      O => \ram_out[6]_i_3_n_0\
    );
\ram_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => D(7),
      I1 => \ram_out[7]_i_2_n_0\,
      I2 => \ram_out_reg[0]_0\(2),
      I3 => \ram_out[7]_i_3_n_0\,
      I4 => \ram_reg[0][7]_0\(0),
      O => p_1_in(7)
    );
\ram_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[7]\(7),
      I1 => \ram_reg[6]\(7),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[5]\(7),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[4]\(7),
      O => \ram_out[7]_i_2_n_0\
    );
\ram_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ram_reg[3]\(7),
      I1 => \ram_reg[2]\(7),
      I2 => \ram_out_reg[0]_0\(1),
      I3 => \ram_reg[1]\(7),
      I4 => \ram_out_reg[0]_0\(0),
      I5 => \ram_reg[0]\(7),
      O => \ram_out[7]_i_3_n_0\
    );
\ram_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(0),
      Q => \^q\(0),
      R => '0'
    );
\ram_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(1),
      Q => \^q\(1),
      R => '0'
    );
\ram_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(2),
      Q => \^q\(2),
      R => '0'
    );
\ram_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(3),
      Q => \^q\(3),
      R => '0'
    );
\ram_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(4),
      Q => \^q\(4),
      R => '0'
    );
\ram_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(5),
      Q => \^q\(5),
      R => '0'
    );
\ram_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(6),
      Q => \^q\(6),
      R => '0'
    );
\ram_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(7),
      Q => \^q\(7),
      R => '0'
    );
\ram_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => D(0),
      Q => \ram_reg[0]\(0)
    );
\ram_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => D(1),
      Q => \ram_reg[0]\(1)
    );
\ram_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => D(2),
      Q => \ram_reg[0]\(2)
    );
\ram_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => D(3),
      Q => \ram_reg[0]\(3)
    );
\ram_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => D(4),
      Q => \ram_reg[0]\(4)
    );
\ram_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => D(5),
      Q => \ram_reg[0]\(5)
    );
\ram_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => D(6),
      Q => \ram_reg[0]\(6)
    );
\ram_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => D(7),
      Q => \ram_reg[0]\(7)
    );
\ram_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[0]\(0),
      Q => \ram_reg[1]\(0)
    );
\ram_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[0]\(1),
      Q => \ram_reg[1]\(1)
    );
\ram_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[0]\(2),
      Q => \ram_reg[1]\(2)
    );
\ram_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[0]\(3),
      Q => \ram_reg[1]\(3)
    );
\ram_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[0]\(4),
      Q => \ram_reg[1]\(4)
    );
\ram_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[0]\(5),
      Q => \ram_reg[1]\(5)
    );
\ram_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[0]\(6),
      Q => \ram_reg[1]\(6)
    );
\ram_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[0]\(7),
      Q => \ram_reg[1]\(7)
    );
\ram_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[1]\(0),
      Q => \ram_reg[2]\(0)
    );
\ram_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[1]\(1),
      Q => \ram_reg[2]\(1)
    );
\ram_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[1]\(2),
      Q => \ram_reg[2]\(2)
    );
\ram_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[1]\(3),
      Q => \ram_reg[2]\(3)
    );
\ram_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[1]\(4),
      Q => \ram_reg[2]\(4)
    );
\ram_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[1]\(5),
      Q => \ram_reg[2]\(5)
    );
\ram_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[1]\(6),
      Q => \ram_reg[2]\(6)
    );
\ram_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[1]\(7),
      Q => \ram_reg[2]\(7)
    );
\ram_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[2]\(0),
      Q => \ram_reg[3]\(0)
    );
\ram_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[2]\(1),
      Q => \ram_reg[3]\(1)
    );
\ram_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[2]\(2),
      Q => \ram_reg[3]\(2)
    );
\ram_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[2]\(3),
      Q => \ram_reg[3]\(3)
    );
\ram_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[2]\(4),
      Q => \ram_reg[3]\(4)
    );
\ram_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[2]\(5),
      Q => \ram_reg[3]\(5)
    );
\ram_reg[3][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[2]\(6),
      Q => \ram_reg[3]\(6)
    );
\ram_reg[3][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[2]\(7),
      Q => \ram_reg[3]\(7)
    );
\ram_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[3]\(0),
      Q => \ram_reg[4]\(0)
    );
\ram_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[3]\(1),
      Q => \ram_reg[4]\(1)
    );
\ram_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[3]\(2),
      Q => \ram_reg[4]\(2)
    );
\ram_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[3]\(3),
      Q => \ram_reg[4]\(3)
    );
\ram_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[3]\(4),
      Q => \ram_reg[4]\(4)
    );
\ram_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[3]\(5),
      Q => \ram_reg[4]\(5)
    );
\ram_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[3]\(6),
      Q => \ram_reg[4]\(6)
    );
\ram_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[3]\(7),
      Q => \ram_reg[4]\(7)
    );
\ram_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[4]\(0),
      Q => \ram_reg[5]\(0)
    );
\ram_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[4]\(1),
      Q => \ram_reg[5]\(1)
    );
\ram_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[4]\(2),
      Q => \ram_reg[5]\(2)
    );
\ram_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[4]\(3),
      Q => \ram_reg[5]\(3)
    );
\ram_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[4]\(4),
      Q => \ram_reg[5]\(4)
    );
\ram_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[4]\(5),
      Q => \ram_reg[5]\(5)
    );
\ram_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[4]\(6),
      Q => \ram_reg[5]\(6)
    );
\ram_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[4]\(7),
      Q => \ram_reg[5]\(7)
    );
\ram_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[5]\(0),
      Q => \ram_reg[6]\(0)
    );
\ram_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[5]\(1),
      Q => \ram_reg[6]\(1)
    );
\ram_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[5]\(2),
      Q => \ram_reg[6]\(2)
    );
\ram_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[5]\(3),
      Q => \ram_reg[6]\(3)
    );
\ram_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[5]\(4),
      Q => \ram_reg[6]\(4)
    );
\ram_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[5]\(5),
      Q => \ram_reg[6]\(5)
    );
\ram_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[5]\(6),
      Q => \ram_reg[6]\(6)
    );
\ram_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[5]\(7),
      Q => \ram_reg[6]\(7)
    );
\ram_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[6]\(0),
      Q => \ram_reg[7]\(0)
    );
\ram_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[6]\(1),
      Q => \ram_reg[7]\(1)
    );
\ram_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[6]\(2),
      Q => \ram_reg[7]\(2)
    );
\ram_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[6]\(3),
      Q => \ram_reg[7]\(3)
    );
\ram_reg[7][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[6]\(4),
      Q => \ram_reg[7]\(4)
    );
\ram_reg[7][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[6]\(5),
      Q => \ram_reg[7]\(5)
    );
\ram_reg[7][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[6]\(6),
      Q => \ram_reg[7]\(6)
    );
\ram_reg[7][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ram_reg[0][7]_0\(0),
      CLR => AR(0),
      D => \ram_reg[6]\(7),
      Q => \ram_reg[7]\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ROM is
  port (
    \ram_out_reg[6]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \rom_out_reg[1]_0\ : out STD_LOGIC;
    \rom_out_reg[1]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \rom_out_reg[1]_2\ : out STD_LOGIC;
    mac_init_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ram_out_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rom_out_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \multOp__0_carry__1_i_6_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \multOp__0_carry__1\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    mac_init : in STD_LOGIC;
    \multOp__0_carry\ : in STD_LOGIC;
    \multOp__0_carry__0\ : in STD_LOGIC;
    \multOp__0_carry__0_0\ : in STD_LOGIC;
    \multOp__0_carry__0_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \multOp__0_carry__1_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
end ROM;

architecture STRUCTURE of ROM is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \multOp__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \multOp__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \^ram_out_reg[6]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^rom_out_reg[1]_0\ : STD_LOGIC;
  signal \^rom_out_reg[1]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rom_out_reg[1]_2\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \ram_out_reg[6]\(2 downto 0) <= \^ram_out_reg[6]\(2 downto 0);
  \rom_out_reg[1]_0\ <= \^rom_out_reg[1]_0\;
  \rom_out_reg[1]_1\(1 downto 0) <= \^rom_out_reg[1]_1\(1 downto 0);
  \rom_out_reg[1]_2\ <= \^rom_out_reg[1]_2\;
\multOp__0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \multOp__0_carry__1_i_6_0\(6),
      I1 => \^q\(0),
      I2 => \multOp__0_carry__0_i_9_n_0\,
      I3 => \multOp__0_carry__0_i_10_n_0\,
      O => \^ram_out_reg[6]\(2)
    );
\multOp__0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(3),
      I2 => \multOp__0_carry__1_i_6_0\(2),
      I3 => \^q\(1),
      I4 => \multOp__0_carry__1_i_6_0\(4),
      I5 => \^q\(3),
      O => \multOp__0_carry__0_i_10_n_0\
    );
\multOp__0_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(4),
      I2 => \multOp__0_carry__1_i_6_0\(3),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1_i_6_0\(2),
      I5 => \^q\(3),
      O => \^rom_out_reg[1]_0\
    );
\multOp__0_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6_0\(3),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1_i_6_0\(1),
      I4 => \multOp__0_carry__1_i_6_0\(0),
      I5 => \^q\(1),
      O => \multOp__0_carry__0_i_13_n_0\
    );
\multOp__0_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(3),
      I2 => \^q\(3),
      I3 => \multOp__0_carry__1_i_6_0\(1),
      I4 => \multOp__0_carry__1_i_6_0\(2),
      I5 => \^q\(2),
      O => \multOp__0_carry__0_i_14_n_0\
    );
\multOp__0_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(6),
      I2 => \multOp__0_carry__1_i_6_0\(5),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1_i_6_0\(4),
      I5 => \^q\(3),
      O => \^rom_out_reg[1]_2\
    );
\multOp__0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F0C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6_0\(4),
      I2 => \multOp__0_carry__0_i_13_n_0\,
      I3 => \multOp__0_carry__0_i_14_n_0\,
      O => \^ram_out_reg[6]\(1)
    );
\multOp__0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \multOp__0_carry__0_i_13_n_0\,
      I1 => \multOp__0_carry__0_i_14_n_0\,
      I2 => \multOp__0_carry__1_i_6_0\(4),
      I3 => \^q\(0),
      O => \^ram_out_reg[6]\(0)
    );
\multOp__0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A95956A"
    )
        port map (
      I0 => \^ram_out_reg[6]\(2),
      I1 => \multOp__0_carry__1_i_6_0\(7),
      I2 => \^q\(0),
      I3 => \multOp__0_carry__1_0\,
      I4 => \^rom_out_reg[1]_2\,
      O => \ram_out_reg[7]\(3)
    );
\multOp__0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A95956A"
    )
        port map (
      I0 => \multOp__0_carry__0_1\(0),
      I1 => \multOp__0_carry__1_i_6_0\(6),
      I2 => \^q\(0),
      I3 => \multOp__0_carry__0_i_10_n_0\,
      I4 => \multOp__0_carry__0_i_9_n_0\,
      O => \ram_out_reg[7]\(2)
    );
\multOp__0_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A95956A"
    )
        port map (
      I0 => \^ram_out_reg[6]\(1),
      I1 => \multOp__0_carry__1_i_6_0\(5),
      I2 => \^q\(0),
      I3 => \multOp__0_carry__0_0\,
      I4 => \^rom_out_reg[1]_0\,
      O => \ram_out_reg[7]\(1)
    );
\multOp__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A55AA6AAA6AAA6A"
    )
        port map (
      I0 => \^ram_out_reg[6]\(0),
      I1 => \multOp__0_carry__1_i_6_0\(0),
      I2 => \^q\(3),
      I3 => \multOp__0_carry__0\,
      I4 => \^q\(2),
      I5 => \multOp__0_carry__1_i_6_0\(1),
      O => \ram_out_reg[7]\(0)
    );
\multOp__0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(5),
      I2 => \multOp__0_carry__1_i_6_0\(3),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(4),
      I5 => \^q\(2),
      O => \multOp__0_carry__0_i_9_n_0\
    );
\multOp__0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8A0C00080000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(5),
      I2 => \multOp__0_carry__1_i_6_0\(6),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(7),
      I5 => \^q\(2),
      O => \^rom_out_reg[1]_1\(1)
    );
\multOp__0_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(5),
      I2 => \multOp__0_carry__1_i_6_0\(6),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(4),
      I5 => \^q\(1),
      O => \multOp__0_carry__1_i_10_n_0\
    );
\multOp__0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000A888A000"
    )
        port map (
      I0 => \multOp__0_carry__1_i_7_n_0\,
      I1 => \^q\(1),
      I2 => \multOp__0_carry__1_i_6_0\(4),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(6),
      I5 => \multOp__0_carry__1\,
      O => \^rom_out_reg[1]_1\(0)
    );
\multOp__0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1777880080800000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(6),
      I2 => \multOp__0_carry__1_i_6_0\(5),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \multOp__0_carry__1_i_6_0\(7),
      O => \rom_out_reg[2]_0\(2)
    );
\multOp__0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^rom_out_reg[1]_1\(0),
      I1 => \^q\(2),
      I2 => \multOp__0_carry__1_i_6_0\(7),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(6),
      I5 => \multOp__0_carry__1_i_9_n_0\,
      O => \rom_out_reg[2]_0\(1)
    );
\multOp__0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88817771777E888"
    )
        port map (
      I0 => \multOp__0_carry__1_0\,
      I1 => \^rom_out_reg[1]_2\,
      I2 => \^q\(0),
      I3 => \multOp__0_carry__1_i_6_0\(7),
      I4 => \multOp__0_carry__1_i_7_n_0\,
      I5 => \multOp__0_carry__1_i_10_n_0\,
      O => \rom_out_reg[2]_0\(0)
    );
\multOp__0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(7),
      I2 => \multOp__0_carry__1_i_6_0\(6),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1_i_6_0\(5),
      I5 => \^q\(3),
      O => \multOp__0_carry__1_i_7_n_0\
    );
\multOp__0_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(6),
      I2 => \multOp__0_carry__1_i_6_0\(5),
      I3 => \^q\(1),
      I4 => \multOp__0_carry__1_i_6_0\(7),
      I5 => \^q\(3),
      O => \multOp__0_carry__1_i_9_n_0\
    );
\multOp__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(2),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1_i_6_0\(1),
      I4 => \^q\(3),
      I5 => \multOp__0_carry__1_i_6_0\(0),
      O => DI(1)
    );
\multOp__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(1),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1_i_6_0\(0),
      O => DI(0)
    );
\multOp__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AC0653F953F9AC0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \multOp__0_carry__1_i_6_0\(2),
      I2 => \^q\(1),
      I3 => \multOp__0_carry__1_i_6_0\(0),
      I4 => \multOp__0_carry_i_8_n_0\,
      I5 => \multOp__0_carry\,
      O => S(1)
    );
\multOp__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6_0\(1),
      I2 => \^q\(1),
      I3 => \multOp__0_carry__1_i_6_0\(0),
      O => S(0)
    );
\multOp__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(1),
      O => \multOp__0_carry_i_8_n_0\
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
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\rom_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
\rom_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => '0'
    );
\rom_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
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
entity depth_reg is
  port (
    valid_out_OBUF : out STD_LOGIC;
    CLK : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    \DataInternal_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end depth_reg;

architecture STRUCTURE of depth_reg is
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 1 );
begin
\DataInternal_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => \DataInternal_reg[0]_0\(0),
      Q => p_0_out(1)
    );
\DataInternal_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => p_0_out(1),
      Q => p_0_out(2)
    );
\DataInternal_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => p_0_out(2),
      Q => p_0_out(3)
    );
\DataInternal_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => p_0_out(3),
      Q => p_0_out(4)
    );
\DataInternal_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => p_0_out(4),
      Q => p_0_out(5)
    );
\DataInternal_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => p_0_out(5),
      Q => p_0_out(6)
    );
\DataInternal_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => p_0_out(6),
      Q => p_0_out(7)
    );
\DataInternal_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => p_0_out(7),
      Q => p_0_out(8)
    );
\DataInternal_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => p_0_out(8),
      Q => p_0_in
    );
Dout_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => p_0_in,
      Q => valid_out_OBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Control_Unit is
  port (
    valid_in_filt_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    valid_out_OBUF : out STD_LOGIC;
    mac_init : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    valid_in_IBUF : in STD_LOGIC
  );
end Control_Unit;

architecture STRUCTURE of Control_Unit is
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
      INIT => X"0000EEFE"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => valid_in_IBUF,
      I3 => valid_in_old,
      I4 => counter(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => counter(1),
      I1 => counter(2),
      I2 => counter(0),
      O => \counter[2]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => \counter[0]_i_1_n_0\,
      Q => counter(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => \counter[1]_i_1_n_0\,
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_IBUF,
      D => \counter[2]_i_1_n_0\,
      Q => counter(2)
    );
depth: entity work.depth_reg
     port map (
      CLK => CLK,
      \DataInternal_reg[0]_0\(0) => \^valid_in_filt_reg_0\(0),
      rst_IBUF => rst_IBUF,
      valid_out_OBUF => valid_out_OBUF
    );
dff0: entity work.DFF
     port map (
      CLK => CLK,
      D(3 downto 0) => D(3 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      counter(2 downto 0) => counter(2 downto 0),
      rst_IBUF => rst_IBUF
    );
mac_init_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \^valid_in_filt_reg_0\(0),
      PRE => rst_IBUF,
      Q => mac_init
    );
valid_in_filt_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => valid_in_old,
      I1 => valid_in_IBUF,
      I2 => counter(1),
      I3 => counter(2),
      I4 => counter(0),
      O => valid_in_filt0
    );
valid_in_filt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => valid_in_filt0,
      Q => \^valid_in_filt_reg_0\(0),
      R => '0'
    );
valid_in_old_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAA00010000"
    )
        port map (
      I0 => rst_IBUF,
      I1 => counter(0),
      I2 => counter(2),
      I3 => counter(1),
      I4 => valid_in_IBUF,
      I5 => valid_in_old,
      O => valid_in_old_i_1_n_0
    );
valid_in_old_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
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
entity FIR_filter_unit is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FIR_filter_unit : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of FIR_filter_unit : entity is "42d6778f";
  attribute data_width : integer;
  attribute data_width of FIR_filter_unit : entity is 8;
end FIR_filter_unit;

architecture STRUCTURE of FIR_filter_unit is
  signal MAC_Unit_n_0 : STD_LOGIC;
  signal RAM_memory_n_0 : STD_LOGIC;
  signal RAM_memory_n_10 : STD_LOGIC;
  signal RAM_memory_n_11 : STD_LOGIC;
  signal RAM_memory_n_12 : STD_LOGIC;
  signal RAM_memory_n_13 : STD_LOGIC;
  signal RAM_memory_n_14 : STD_LOGIC;
  signal RAM_memory_n_15 : STD_LOGIC;
  signal RAM_memory_n_16 : STD_LOGIC;
  signal RAM_memory_n_17 : STD_LOGIC;
  signal RAM_memory_n_9 : STD_LOGIC;
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
  signal ROM_memory_n_21 : STD_LOGIC;
  signal ROM_memory_n_22 : STD_LOGIC;
  signal ROM_memory_n_7 : STD_LOGIC;
  signal ROM_memory_n_8 : STD_LOGIC;
  signal ROM_memory_n_9 : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal mac_init : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ram_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rdata : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rom_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rom_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_IBUF : STD_LOGIC;
  signal valid_in_IBUF : STD_LOGIC;
  signal valid_out_OBUF : STD_LOGIC;
  signal x_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal y_OBUF : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
CU: entity work.Control_Unit
     port map (
      CLK => clk_IBUF_BUFG,
      D(3 downto 0) => rdata(3 downto 0),
      E(0) => p_0_in,
      Q(2 downto 0) => rom_addr(2 downto 0),
      mac_init => mac_init,
      rst_IBUF => rst_IBUF,
      valid_in_IBUF => valid_in_IBUF,
      valid_in_filt_reg_0(0) => p_0_out(0),
      valid_out_OBUF => valid_out_OBUF
    );
MAC_Unit: entity work.MAC
     port map (
      AR(0) => rst_IBUF,
      CLK => clk_IBUF_BUFG,
      CO(0) => MAC_Unit_n_0,
      DI(2) => ROM_memory_n_7,
      DI(1) => ROM_memory_n_8,
      DI(0) => RAM_memory_n_17,
      E(0) => p_0_in,
      Q(23 downto 0) => y_OBUF(23 downto 0),
      S(3) => ROM_memory_n_14,
      S(2) => RAM_memory_n_15,
      S(1) => ROM_memory_n_15,
      S(0) => RAM_memory_n_16,
      mac_init => mac_init,
      \result[4]_i_9_0\(3) => ROM_memory_n_0,
      \result[4]_i_9_0\(2) => RAM_memory_n_0,
      \result[4]_i_9_0\(1) => ROM_memory_n_1,
      \result[4]_i_9_0\(0) => ROM_memory_n_2,
      \result[4]_i_9_1\(3) => ROM_memory_n_16,
      \result[4]_i_9_1\(2) => ROM_memory_n_17,
      \result[4]_i_9_1\(1) => ROM_memory_n_18,
      \result[4]_i_9_1\(0) => ROM_memory_n_19,
      \result[8]_i_9_0\(2) => ROM_memory_n_10,
      \result[8]_i_9_0\(1) => ROM_memory_n_11,
      \result[8]_i_9_0\(0) => RAM_memory_n_12,
      \result[8]_i_9_1\(2) => ROM_memory_n_20,
      \result[8]_i_9_1\(1) => ROM_memory_n_21,
      \result[8]_i_9_1\(0) => ROM_memory_n_22,
      \result_reg[11]_0\(0) => ROM_memory_n_13
    );
RAM_memory: entity work.RAM
     port map (
      AR(0) => rst_IBUF,
      CLK => clk_IBUF_BUFG,
      D(7 downto 0) => x_IBUF(7 downto 0),
      DI(0) => RAM_memory_n_17,
      E(0) => p_0_in,
      Q(7 downto 0) => ram_out(7 downto 0),
      S(1) => RAM_memory_n_15,
      S(0) => RAM_memory_n_16,
      \multOp__0_carry__0\ => ROM_memory_n_9,
      \multOp__0_carry__1\ => ROM_memory_n_12,
      \multOp__0_carry__1_i_6\(3 downto 0) => rom_out(3 downto 0),
      \ram_out_reg[0]_0\(2 downto 0) => rom_addr(2 downto 0),
      \ram_out_reg[2]_0\ => RAM_memory_n_9,
      \ram_out_reg[2]_1\ => RAM_memory_n_10,
      \ram_out_reg[3]_0\ => RAM_memory_n_11,
      \ram_out_reg[4]_0\ => RAM_memory_n_13,
      \ram_out_reg[5]_0\(0) => RAM_memory_n_0,
      \ram_out_reg[5]_1\ => RAM_memory_n_14,
      \ram_out_reg[7]_0\(0) => RAM_memory_n_12,
      \ram_reg[0][7]_0\(0) => p_0_out(0)
    );
ROM_memory: entity work.ROM
     port map (
      CLK => clk_IBUF_BUFG,
      CO(0) => MAC_Unit_n_0,
      D(3 downto 0) => rdata(3 downto 0),
      DI(1) => ROM_memory_n_7,
      DI(0) => ROM_memory_n_8,
      Q(3 downto 0) => rom_out(3 downto 0),
      S(1) => ROM_memory_n_14,
      S(0) => ROM_memory_n_15,
      mac_init => mac_init,
      mac_init_reg(0) => ROM_memory_n_13,
      \multOp__0_carry\ => RAM_memory_n_11,
      \multOp__0_carry__0\ => RAM_memory_n_10,
      \multOp__0_carry__0_0\ => RAM_memory_n_9,
      \multOp__0_carry__0_1\(0) => RAM_memory_n_0,
      \multOp__0_carry__1\ => RAM_memory_n_14,
      \multOp__0_carry__1_0\ => RAM_memory_n_13,
      \multOp__0_carry__1_i_6_0\(7 downto 0) => ram_out(7 downto 0),
      \ram_out_reg[6]\(2) => ROM_memory_n_0,
      \ram_out_reg[6]\(1) => ROM_memory_n_1,
      \ram_out_reg[6]\(0) => ROM_memory_n_2,
      \ram_out_reg[7]\(3) => ROM_memory_n_16,
      \ram_out_reg[7]\(2) => ROM_memory_n_17,
      \ram_out_reg[7]\(1) => ROM_memory_n_18,
      \ram_out_reg[7]\(0) => ROM_memory_n_19,
      \rom_out_reg[1]_0\ => ROM_memory_n_9,
      \rom_out_reg[1]_1\(1) => ROM_memory_n_10,
      \rom_out_reg[1]_1\(0) => ROM_memory_n_11,
      \rom_out_reg[1]_2\ => ROM_memory_n_12,
      \rom_out_reg[2]_0\(2) => ROM_memory_n_20,
      \rom_out_reg[2]_0\(1) => ROM_memory_n_21,
      \rom_out_reg[2]_0\(0) => ROM_memory_n_22
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
valid_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => valid_in,
      O => valid_in_IBUF
    );
valid_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => valid_out_OBUF,
      O => valid_out
    );
\x_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(0),
      O => x_IBUF(0)
    );
\x_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(1),
      O => x_IBUF(1)
    );
\x_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(2),
      O => x_IBUF(2)
    );
\x_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(3),
      O => x_IBUF(3)
    );
\x_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(4),
      O => x_IBUF(4)
    );
\x_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(5),
      O => x_IBUF(5)
    );
\x_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(6),
      O => x_IBUF(6)
    );
\x_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(7),
      O => x_IBUF(7)
    );
\y_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(0),
      O => y(0)
    );
\y_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(10),
      O => y(10)
    );
\y_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(11),
      O => y(11)
    );
\y_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(12),
      O => y(12)
    );
\y_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(13),
      O => y(13)
    );
\y_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(14),
      O => y(14)
    );
\y_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(15),
      O => y(15)
    );
\y_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(16),
      O => y(16)
    );
\y_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(17),
      O => y(17)
    );
\y_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(18),
      O => y(18)
    );
\y_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(19),
      O => y(19)
    );
\y_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(1),
      O => y(1)
    );
\y_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(20),
      O => y(20)
    );
\y_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(21),
      O => y(21)
    );
\y_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(22),
      O => y(22)
    );
\y_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(23),
      O => y(23)
    );
\y_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(2),
      O => y(2)
    );
\y_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(3),
      O => y(3)
    );
\y_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(4),
      O => y(4)
    );
\y_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(5),
      O => y(5)
    );
\y_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(6),
      O => y(6)
    );
\y_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(7),
      O => y(7)
    );
\y_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(8),
      O => y(8)
    );
\y_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => y_OBUF(9),
      O => y(9)
    );
end STRUCTURE;
