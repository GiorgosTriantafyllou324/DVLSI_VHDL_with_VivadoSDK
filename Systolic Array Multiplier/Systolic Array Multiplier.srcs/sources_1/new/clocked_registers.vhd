library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clocked_registers is
    generic ( 
        N : integer := 7    -- Default value as 7-bit register
    ); 
    Port ( DataIn : in STD_LOGIC_VECTOR (N-1 downto 0);
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           DataOut : out STD_LOGIC_VECTOR (N-1 downto 0));
end clocked_registers;

architecture Behavioral of clocked_registers is

begin
    -- Implements N-bit register
    reg: process (clk, rst)
    begin
    
        if(rst = '1') then
            DataOut <= (others => '0');
        elsif rising_edge(clk) then
            DataOut <= DataIn;
        end if;
    
    end process;

end Behavioral;
