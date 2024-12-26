library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pipelined_PA_tb is
--  Port ( );
end Pipelined_PA_tb;

architecture Behavioral of Pipelined_PA_tb is

    component Pipelined_PA is
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               Cin : in STD_LOGIC;
               Cout : out STD_LOGIC;
               Sout : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    signal clk, rst, Cin, Cout: STD_LOGIC;
    signal A, B, Sout: STD_LOGIC_VECTOR (3 downto 0);
    
begin

    uut: Pipelined_PA port map 
                         ( clk  => clk,
                           rst  => rst,
                           A    => A,
                           B    => B,
                           Cin  => Cin,
                           Cout => Cout,
                           Sout => Sout);

    clocking: process
    begin
        clk <= '1';
        wait for 10 ns;
        clk <= '0';
        wait for 10 ns;
    end process;
    
    stimulus: process
    begin
        rst <= '1';
        Cin <= '0';
        A <= "0001";
        B <= "0000";
        wait for 20 ns;
        
        rst <= '0';
        wait for 20 ns;
        
        for k in 0 to 1 loop
            Cin <= std_logic(to_unsigned(k,1)(0));
            for i in 0 to 4 loop
                for j in 0 to 15 loop
                    A <= std_logic_vector(to_unsigned(i, A'length));
                    B <= std_logic_vector(to_unsigned(j, B'length));
                    wait for 20 ns;
                end loop;
            end loop; 
        end loop;
                
        wait;
    end process;
    
end Behavioral;
