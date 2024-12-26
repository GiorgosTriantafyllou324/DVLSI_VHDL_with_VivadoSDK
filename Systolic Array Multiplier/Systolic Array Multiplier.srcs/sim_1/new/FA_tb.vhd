library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA_tb is
--  Port ( );
end FA_tb;

architecture Behavioral of FA_tb is

    component synch_FA
      Port ( clk : in STD_LOGIC;
             rst : in STD_LOGIC;
             A : in STD_LOGIC;
             B : in STD_LOGIC;
             Cin : in STD_LOGIC;
             Cout : out STD_LOGIC;
             Sum : out STD_LOGIC);
    end component;

    signal clk, rst, A, B, Cin, Cout, Sum: STD_LOGIC;
  
begin

    uut: synch_FA port map ( clk  => clk,
                           rst  => rst,
                           A    => A,
                           B    => B,
                           Cin  => Cin,
                           Cout => Cout,
                           Sum  => Sum );
                           
    clocking: process
    begin
        clk <= '1';
        wait for 10 ns;
        clk <= '0';
        wait for 10 ns;
    end process;
    
    stimulus: process
    begin 
        -- Put initialisation code here
        
        -- Put test bench stimulus code here
        for i in 0 to 1 loop
            rst <= std_logic(to_unsigned(i,1)(0));
            for j in 0 to 1 loop
                Cin <= std_logic(to_unsigned(j,1)(0));
                for k in 0 to 1 loop
                    for m in 0 to 1 loop
                        A <= std_logic(to_unsigned(k,1)(0));
                        B <= std_logic(to_unsigned(m,1)(0));
                        wait for 40 ns;
                    end loop;
                end loop;
            end loop;
        end loop;
        
        wait;
    end process;
        

end Behavioral;
