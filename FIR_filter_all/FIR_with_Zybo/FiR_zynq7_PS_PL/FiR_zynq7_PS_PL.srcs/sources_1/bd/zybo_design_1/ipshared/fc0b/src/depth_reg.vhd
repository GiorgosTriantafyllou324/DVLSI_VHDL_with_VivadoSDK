library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity depth_reg is
    generic ( 
        N: integer     -- N: shows depth of DFFs (#Clock cycles till Dout=Din)
        ); 
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           Din : in STD_LOGIC;
           Dout : out STD_LOGIC);
end depth_reg;

architecture Behavioral of depth_reg is

    signal DataInternal: STD_LOGIC_VECTOR (N-1 downto 0);
    
begin

    -- Implements N-bit register
    depth_reg: process (clk, rst)
    begin
    
        if(rst = '1') then
            Dout <= '0';
            for i in 0 to N-1 loop
                DataInternal(i) <= '0';
            end loop;
        elsif rising_edge(clk) then
            if (N = 0) then
                Dout <= Din;
            else
                DataInternal(0) <= Din;
                for j in 1 to N-1 loop
                    DataInternal(j) <= DataInternal(j-1);
                end loop;
                Dout <= DataInternal(N-1);
            end if;
        end if;
    
    end process;

end Behavioral;
