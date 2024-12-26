
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity custom_FA is
    generic (
            N: integer
        );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Sin : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end custom_FA;

architecture Behavioral of custom_FA is

    component synch_FA 
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               A : in STD_LOGIC;
               B : in STD_LOGIC;
               Cin : in STD_LOGIC;
               Cout : out STD_LOGIC;
               Sum : out STD_LOGIC);
    end component;
    
    component depth_reg is
        generic ( 
            N: integer     -- N: shows depth of DFFs (#Clock cycles till Dout=Din)
            ); 
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               Din : in STD_LOGIC;
               Dout : out STD_LOGIC);
    end component;

    signal Xnew: STD_LOGIC_VECTOR (1 downto 0);

begin
    
    Xnew(0) <= X and Y;
    
    reg0: depth_reg generic map(N => N)
                    port map (clk => clk, rst => rst, 
                              Din => Xnew(0), Dout => Xnew(1));

    FA: synch_FA port map(
        clk => clk, rst => rst,
        A => Sin, B => Xnew(1),
        Cin => Cin, Cout => Cout,
        Sum => Sum);

end Behavioral;
