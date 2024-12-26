----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2024 03:10:51 PM
-- Design Name: 
-- Module Name: MAC - Behavioral
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

entity MAC is
    generic(
        data_width: integer := 8 -- width of data ram_out[], rom_out[] in bits
    );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           rom_out : in STD_LOGIC_VECTOR (data_width-1 downto 0);
           ram_out : in STD_LOGIC_VECTOR (data_width-1 downto 0);
           mac_init : in STD_LOGIC;
           fir_out : out STD_LOGIC_VECTOR (23 downto 0) := (others => '0'));
end entity MAC;

architecture Behavioral of MAC is

--    signal sync_count: STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
    signal result : STD_LOGIC_VECTOR (23 downto 0) := (others => '0');

begin

    process (clk, rst)
    begin
    
    if(rst = '1') then
        result <= (others => '0');
        
    elsif rising_edge(clk) then
    
        if mac_init = '1' then
--            sync_count <= "000";
            result <= (others => '0'); --Assign all '0's to my vector
            result(15 downto 0) <= rom_out * ram_out;
        else
        
--            if sync_count /= "111" then
--                sync_count <= sync_count + 1;
--            end if;
            
            result <= result + rom_out * ram_out; -- Perform multiplication and addition;
        end if;
        
--        if sync_count = "111" then
            fir_out <= result;
--        end if;
        
    end if;
    
    end process;
    
end architecture;