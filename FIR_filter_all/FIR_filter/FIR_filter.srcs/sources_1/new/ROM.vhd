----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2024 02:10:33 PM
-- Design Name: 
-- Module Name: ROM - Behavioral
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

entity ROM is
    generic(
        coeff_width: integer :=8                                        -- width of h[] coefficients
    );
    Port ( clk : in STD_LOGIC;
           rom_en: in STD_LOGIC;                                        -- ROM enable signal
           rom_addr : in STD_LOGIC_VECTOR (2 downto 0);                 -- ROM address: from 0 to 7 in range (8-tap FIR)
           rom_out : out STD_LOGIC_VECTOR (coeff_width-1 downto 0));    -- ROM output data: Given from 'rom_type' array
end ROM;

architecture Behavioral of ROM is

    -- Initialization of ROM with user data        
    type rom_type is array (7 downto 0) of STD_LOGIC_VECTOR (coeff_width-1 downto 0);          
    signal rom : rom_type := ("00001000", "00000111", "00000110", "00000101", "00000100", "00000011", "00000010", "00000001");      				                 
    
    signal rdata : std_logic_vector(coeff_width-1 downto 0) := (others => '0');
    
begin
    
    rdata <= rom(conv_integer(rom_addr));
    
    rom_work: process (clk)
    begin
        if rising_edge(clk) then
            if (rom_en = '1') then
                rom_out <= rdata;
            end if;
        end if;
    end process;

end Behavioral;
