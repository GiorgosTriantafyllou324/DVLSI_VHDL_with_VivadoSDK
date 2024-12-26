----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2024 03:32:31 PM
-- Design Name: 
-- Module Name: Ser2Par_tb - Behavioral
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

entity Ser2Par_tb is
--  Port ( );
end Ser2Par_tb;

architecture Behavioral of Ser2Par_tb is

    component Serial2Parallel 
        generic(
               N: integer := 0                                  -- Input image: NxN pixels
        );
        
        Port ( clk : in STD_LOGIC;
               rst_n : in STD_LOGIC;
               pixel_in : in STD_LOGIC_VECTOR (7 downto 0);     -- Single serial pixel input, with validity on MSbit
                -- 3x3 pixel block - synchronous output
               pixel_off_0: out STD_LOGIC_VECTOR (23 downto 0) := (others => '0');
               pixel_off_1: out STD_LOGIC_VECTOR (23 downto 0) := (others => '0');
               pixel_off_2: out STD_LOGIC_VECTOR (23 downto 0) := (others => '0')); 
    end component;


    signal clk, rst_n: std_logic := '0';
    signal pixel_in: std_logic_vector (7 downto 0);
    signal pixel_off_0, pixel_off_1, pixel_off_2: std_logic_vector (23 downto 0) := (others => '0');


    type byte_array is array (15 downto 0) of std_logic_vector (7 downto 0);
    
    constant test_values: byte_array := (
        X"01", X"02", X"03", X"04", 
        X"05", X"06", X"07", X"08", 
        X"09", X"0A", X"0B", X"0C", 
        X"0D", X"0E", X"0F", X"10" );   -- 4x4 image
    
    
begin

    ser2par: Serial2Parallel generic map ( N => 3 ) 
                             port map ( clk => clk, 
                                        rst_n => rst_n, 
                                        pixel_in => pixel_in, 
                                        pixel_off_0 => pixel_off_0,
                                        pixel_off_1 => pixel_off_1,
                                        pixel_off_2 => pixel_off_2);
        
    clocking: process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    pixel: process 
    begin
        pixel_in <= X"00";
        wait for 40 ns;
        for i in 15 downto 0 loop
            pixel_in <= test_values(i);
            wait for 40 ns;
        end loop;
    
    end process;
    
    new_img: process
    begin
        rst_n <= '1';
        wait for 1605 ns;
        rst_n <= '0';
        wait for 20ns;
        rst_n <= '1';
        wait;
    end process;

end Behavioral;
