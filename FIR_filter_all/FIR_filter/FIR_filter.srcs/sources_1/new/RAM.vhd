----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2024 02:23:24 PM
-- Design Name: 
-- Module Name: RAM - Behavioral
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

entity RAM is
    generic(
        data_width: integer := 8                                        -- width of data x[] in bits
    );
    Port ( clk : in STD_LOGIC;
           ram_clr: in STD_LOGIC;                                       -- RAM reset input signal values - clear FIFO
           ram_we : in STD_LOGIC;                                       -- RAM write enable signal, to allow writing data
           ram_addr : in STD_LOGIC_VECTOR (2 downto 0);                 -- RAM address, ranges from 0x0 to 0x7 (8 position)
           ram_in : in STD_LOGIC_VECTOR (data_width-1 downto 0);        -- RAM data located at the input
           ram_out : out STD_LOGIC_VECTOR (data_width-1 downto 0));     -- RAM data shifted to the output
end RAM;

architecture Behavioral of RAM is

    -- Initialization of RAM array to store input values   
    type ram_type is array (7 downto 0) of std_logic_vector (data_width-1 downto 0);          
    signal ram : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00");      				                 

begin
    
    ram_work: process (clk, ram_clr)
    begin
    
        if ram_clr = '1' then
            for i in 0 to 7 loop
                ram(i) <= (others => '0');
            end loop;
        elsif rising_edge(clk) then
            
            if ram_we = '1' then				-- write operation
                ram(7 downto 1) <= ram(6 downto 0);
                ram(0) <= ram_in;
                ram_out <= ram_in;
            else						        -- read operation
                ram_out <= ram(conv_integer(ram_addr));
            end if;
        
        end if;
    end process;

end Behavioral;
