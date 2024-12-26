library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Pipelined_PA is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           Sout : out STD_LOGIC_VECTOR (3 downto 0));
end Pipelined_PA;

architecture Structural of Pipelined_PA is

    component synch_FA 
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               A : in STD_LOGIC;
               B : in STD_LOGIC;
               Cin : in STD_LOGIC;
               Cout : out STD_LOGIC;
               Sum : out STD_LOGIC);
    end component;
    
    component clocked_registers
        generic ( 
            N : integer := 7    -- Default value as 7-bit register
        ); 
        Port ( DataIn : in STD_LOGIC_VECTOR (N-1 downto 0);
               clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               DataOut : out STD_LOGIC_VECTOR (N-1 downto 0));
    end component;
   
   -- Internal registered signals to be saved on N-state register - DFFs
   signal A_B_stage2: STD_LOGIC_VECTOR (5 downto 0);
   signal A_B_stage3: STD_LOGIC_VECTOR (3 downto 0);
   signal A_B_stage4: STD_LOGIC_VECTOR (1 downto 0);

   -- Previous Sout results and signals for each FA's carry output 
   signal S0_int, Co: STD_LOGIC_VECTOR (2 downto 0);
   signal S1_int: STD_LOGIC_VECTOR (1 downto 0);
   signal S2_int: STD_LOGIC;

begin
    
    FA0: synch_FA port map 
                 ( clk  => clk,
                   rst  => rst,
                   A    => A(0),
                   B    => B(0),
                   Cin  => Cin,
                   Cout => Co(0),
                   Sum => S0_int(0));
        
    reg0: clocked_registers generic map (N => 6) 
        port map (
            DataIn(0) => A(1), DataIn(1) => B(1),  
            DataIn(2) => A(2), DataIn(3) => B(2),  
            DataIn(4) => A(3), DataIn(5) => B(3),
            clk => clk,
            rst => rst,
            DataOut(0) => A_B_stage2(0), DataOut(1) => A_B_stage2(1),  
            DataOut(2) => A_B_stage2(2), DataOut(3) => A_B_stage2(3),  
            DataOut(4) => A_B_stage2(4), DataOut(5) => A_B_stage2(5));
 
---------------------------------------------------------------------------------------
    FA1: synch_FA port map 
             ( clk  => clk,
               rst  => rst,
               A    => A_B_stage2(0),   -- A(1)
               B    => A_B_stage2(1),   -- B(1)
               Cin  => Co(0),
               Cout => Co(1),
               Sum => S1_int(0));
           
    reg1: clocked_registers generic map (N => 5) 
        port map (
            DataIn(0) => A_B_stage2(2), DataIn(1) => A_B_stage2(3),  
            DataIn(2) => A_B_stage2(4), DataIn(3) => A_B_stage2(5),
            DataIn(4) => S0_int(0),
            clk => clk,
            rst => rst,
            DataOut(0) => A_B_stage3(0), DataOut(1) => A_B_stage3(1),  
            DataOut(2) => A_B_stage3(2), DataOut(3) => A_B_stage3(3),
            DataOut(4) => S0_int(1));

---------------------------------------------------------------------------------------
    FA2: synch_FA port map 
             ( clk  => clk,
               rst  => rst,
               A    => A_B_stage3(0),   -- A(2)
               B    => A_B_stage3(1),   -- B(2)
               Cin  => Co(1),
               Cout => Co(2),
               Sum => S2_int);

    reg2: clocked_registers generic map (N => 4) 
        port map (
            DataIn(0) => A_B_stage3(2), DataIn(1) => A_B_stage3(3),
            DataIn(2) => S0_int(1), DataIn(3) => S1_int(0),  
            clk => clk,
            rst => rst,
            DataOut(0) => A_B_stage4(0), DataOut(1) => A_B_stage4(1),
            DataOut(2) => S0_int(2), DataOut(3) => S1_int(1));

---------------------------------------------------------------------------------------
    FA3: synch_FA port map 
             ( clk  => clk,
               rst  => rst,
               A    => A_B_stage4(0),
               B    => A_B_stage4(1),
               Cin  => Co(2),
               Cout => Cout,
               Sum => Sout(3));

    reg3: clocked_registers generic map (N => 3) 
        port map (
            DataIn(0) => S0_int(2), DataIn(1) => S1_int(1),
            DataIn(2) => S2_int,
            clk => clk,
            rst => rst,
            DataOut(0) => Sout(0), DataOut(1) => Sout(1),
            DataOut(2) => Sout(2));
            
end Structural;
