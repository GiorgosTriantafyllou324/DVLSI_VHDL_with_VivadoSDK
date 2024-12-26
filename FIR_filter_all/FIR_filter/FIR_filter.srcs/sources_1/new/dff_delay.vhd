library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DFF is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           Din : in STD_LOGIC_VECTOR(2 downto 0);
           Dout : out STD_LOGIC_VECTOR(2 downto 0));
end DFF;

architecture Behavioral of DFF is
begin
    process (clk, rst)
    begin
        if rst = '1' then
            Dout <= "000";  -- Reset the output to 0
        elsif rising_edge(clk) then
            Dout <= Din;    -- Update the output with the input value on rising clock edge
        end if;
    end process;
end Behavioral;