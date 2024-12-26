----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/28/2024 10:38:18 PM
-- Design Name: 
-- Module Name: RAM_FIFO - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM_FIFO is
    generic(
        N: integer := 0     -- image NxN pixels
    );
    Port ( clk : in STD_LOGIC;
           ram_clr : in STD_LOGIC;
           pixel_in : in STD_LOGIC_VECTOR (7 downto 0);
           pixel_out: out STD_LOGIC_VECTOR (7 downto 0) := (others => '0'));
end RAM_FIFO;

architecture Behavioral of RAM_FIFO is

    -- N-depth RAM FIFO internal buffers
    type ram_type is array (N-1 downto 0) of std_logic_vector (7 downto 0);          
    signal ram : ram_type := (others => (others => '0'));   
    
begin
        
    fifo: process(clk, ram_clr)
    begin
    
        if ram_clr = '0' then
            pixel_out <= (others => '0');
            for i in N-1 downto 0 loop
                ram(i) <= (others => '0');
            end loop;
        
        elsif rising_edge(clk) then
            pixel_out <= ram(N-1);
            ram(N-1 downto 1) <= ram(N-2 downto 0);
            ram(0) <= pixel_in; 
        end if;
        
    end process;

end Behavioral;
