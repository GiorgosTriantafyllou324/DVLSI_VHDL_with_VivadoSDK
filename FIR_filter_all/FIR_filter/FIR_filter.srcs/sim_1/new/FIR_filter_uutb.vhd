----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2024 06:20:06 PM
-- Design Name: 
-- Module Name: FIR_filter_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FIR_filter_tb is
--  Port ( );
end FIR_filter_tb;

architecture Behavioral of FIR_filter_tb is

    component FIR_filter_unit 
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               valid_in : in STD_LOGIC;
               x : in STD_LOGIC_VECTOR (7 downto 0);
               valid_out : out STD_LOGIC;
               y : out STD_LOGIC_VECTOR (23 downto 0));
    end component;

    signal clk, rst, valid_in: STD_LOGIC := '0';
    signal x: STD_LOGIC_VECTOR (7 downto 0);
    signal y: STD_LOGIC_VECTOR (23 downto 0);
    signal valid_out: STD_LOGIC;
        
begin

    FIR: FIR_filter_unit port map ( clk => clk, rst => rst,
                                    valid_in => valid_in, 
                                    x => x, 
                                    valid_out => valid_out, y => y);

    clocking: process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    stimulus: process
    begin
        rst <= '1';
        wait for 40 ns;
        rst <= '0';
        wait;
    end process;


--    input: process
--    begin
--        x <= X"02";
--        wait for 300ns;
--        x <= X"03";
--        wait for 300ns;
--    end process;

    valid: process
    begin
        valid_in <= '0';
        wait for 80ns;
        valid_in <= '1';
        wait for 20ns;
    end process;

end Behavioral;