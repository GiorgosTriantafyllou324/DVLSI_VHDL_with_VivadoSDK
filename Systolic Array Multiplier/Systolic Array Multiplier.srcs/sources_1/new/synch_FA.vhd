library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity synch_FA is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           Sum : out STD_LOGIC);
end synch_FA;

architecture Behavioral of synch_FA is
        
begin
    process (clk, rst)
    begin
    
        if (rst = '1') then
            Sum <= '0';
            Cout <= '0';
        elsif rising_edge(clk) then
            if (Cin = '0') then -- Simple Half adder functionality
                Sum <= A xor B;
                Cout <= A and B;
            else
                Sum <= (A and B) or (not(A) and not(B));
                Cout <= A or (not(A) and B);
            end if;
        end if;
        
    end process;
    
end Behavioral;
