library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pipelined_Multiplier is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           X : in STD_LOGIC_VECTOR (3 downto 0);
           Y : in STD_LOGIC_VECTOR (3 downto 0);
           Mul_Out : out STD_LOGIC_VECTOR (7 downto 0));
end Pipelined_Multiplier;

architecture Behavioral of Pipelined_Multiplier is

    component synch_FA 
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               A : in STD_LOGIC;
               B : in STD_LOGIC;
               Cin : in STD_LOGIC;
               Cout : out STD_LOGIC;
               Sum : out STD_LOGIC);
    end component;
        
    component custom_FA
        generic (
            N: integer);
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               X : in STD_LOGIC;
               Y : in STD_LOGIC;
               Sin : in STD_LOGIC;
               Cin : in STD_LOGIC;
               Sum : out STD_LOGIC;
               Cout : out STD_LOGIC);
    end component;
    
    component depth_reg 
        generic ( 
            N: integer     -- N: shows depth of DFFs (#Clock cycles till Dout=Din)
            ); 
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               Din : in STD_LOGIC;
               Dout : out STD_LOGIC);
    end component;
    
    signal Sin1, Sin2, Sin3: STD_LOGIC_VECTOR (3 downto 0);
    signal Sin1_new: STD_LOGIC_VECTOR (1 downto 0);
        
    signal C0,C1,C2: STD_LOGIC_VECTOR (3 downto 0);
    signal Z0, Z1, Z2, Z3, Z4, Z5: STD_LOGIC;

begin

    Z0 <= X(0) and Y(0);
    Sin1(0) <= (X(0) and Y(1));
    Sin1(1) <= (X(1) and Y(0));
    
    FA0: synch_FA port map (clk => clk, rst => rst,
                             A => Sin1(0), B => Sin1(1),
                             Cin => '0', Sum => Z1, Cout => C0(0));
    
    -- Delay Z1 & Z0
    regZ0: depth_reg generic map (N => 7)
                port map (clk => clk, rst => rst,
                          Din => Z0, Dout => Mul_Out(0));
                          
    regZ1: depth_reg generic map (N => 6)
                port map (clk => clk, rst => rst,
                          Din => Z1, Dout => Mul_Out(1));                                                       
--------------------------------------------------------------------------------
    -- delay 1 cycle (X2Y0)
    Sin1(2) <= (X(2) and Y(0));
    
    reg0: depth_reg generic map (N => 0)
                    port map (clk => clk, rst => rst,
                              Din => Sin1(2), Dout => Sin1_new(0));
                              
    FA1: custom_FA generic map (N => 0)
                   port map (clk => clk, rst => rst,
                             X => X(1), Y => Y(1), Sin => Sin1_new(0),
                             Cin => C0(0), Sum => Sin2(0), Cout => C0(1));
                             
--------------------------------------------------------------------------------
    -- delay 2 cycles X3Y0 
    Sin1(3) <= (X(3) and Y(0));
    
    reg1: depth_reg generic map (N => 1)
                    port map (clk => clk, rst => rst,
                              Din => Sin1(3), Dout => Sin1_new(1));
               
    FA2: custom_FA generic map (N => 1)
                   port map (clk => clk, rst => rst,
                             X => X(2), Y => Y(1), Sin => Sin1_new(1),
                             Cin => C0(1), Sum => Sin2(1), Cout => C0(2));
                             
    FA3: custom_FA generic map (N => 1)
                   port map (clk => clk, rst => rst,
                             X => X(0), Y => Y(2), Sin => Sin2(0),
                             Cin => '0', Sum => Z2, Cout => C1(0));
    -- delay Z2
    regZ2: depth_reg generic map (N => 4)
                port map (clk => clk, rst => rst,
                          Din => Z2, Dout => Mul_Out(2));
                          
--------------------------------------------------------------------------------
    FA4: custom_FA generic map (N => 2)
                   port map (clk => clk, rst => rst,
                             X => X(3), Y => Y(1), Sin => '0',
                             Cin => C0(2), Sum => Sin2(2), Cout => C0(3));
                             
    FA5: custom_FA generic map (N => 2)
                   port map (clk => clk, rst => rst,
                             X => X(1), Y => Y(2), Sin => Sin2(1),
                             Cin => C1(0), Sum => Sin3(0), Cout => C1(1));

    -- Delay carryOut of FA4, only 1 cycle
    reg2: depth_reg generic map (N => 0)
                    port map (clk => clk, rst => rst,
                              Din => C0(3), Dout => Sin2(3));

---------------------------------------------------------------------------------------
    FA6: custom_FA generic map (N => 3)
                   port map (clk => clk, rst => rst,
                             X => X(2), Y => Y(2), Sin => Sin2(2),
                             Cin => C1(1), Sum => Sin3(1), Cout => C1(2));
                             
    FA7: custom_FA generic map (N => 3)
                   port map (clk => clk, rst => rst,
                             X => X(0), Y => Y(3), Sin => Sin3(0),
                             Cin => '0', Sum => Z3, Cout => C2(0));

    -- Delay Z3
    regZ3: depth_reg generic map (N => 2)
                    port map (clk => clk, rst => rst,
                              Din => Z3, Dout => Mul_Out(3));
---------------------------------------------------------------------------------------
    FA8: custom_FA generic map (N => 4)
                   port map (clk => clk, rst => rst,
                             X => X(3), Y => Y(2), Sin => Sin2(3),
                             Cin => C1(2), Sum => Sin3(2), Cout => C1(3));
    
    FA9: custom_FA generic map (N => 4)
                   port map (clk => clk, rst => rst,
                             X => X(1), Y => Y(3), Sin => Sin3(1),
                             Cin => C2(0), Sum => Z4, Cout => C2(1));
        
    -- Delay CarryOut of FA8 by 1 cycle 
    reg3: depth_reg generic map (N => 0)
                    port map (clk => clk, rst => rst,
                              Din => C1(3), Dout => Sin3(3));

    -- Delay Z4 by 2 cycle
    regZ4: depth_reg generic map (N => 1)
                    port map (clk => clk, rst => rst,
                              Din => Z4, Dout => Mul_Out(4));
                              
---------------------------------------------------------------------------------------
    FA10: custom_FA generic map (N => 5)
                   port map (clk => clk, rst => rst,
                             X => X(2), Y => Y(3), Sin => Sin3(2),
                             Cin => C2(1), Sum => Z5, Cout => C2(2));

    -- Delay Z5 by 1 cycle
    regZ5: depth_reg generic map (N => 0)
                    port map (clk => clk, rst => rst,
                              Din => Z5, Dout => Mul_Out(5));
---------------------------------------------------------------------------------------
    FA11: custom_FA generic map (N => 6)
                   port map (clk => clk, rst => rst,
                             X => X(3), Y => Y(3), Sin => Sin3(3),
                             Cin => C2(2), Sum => Mul_Out(6), Cout => Mul_Out(7));
                             
end Behavioral;
