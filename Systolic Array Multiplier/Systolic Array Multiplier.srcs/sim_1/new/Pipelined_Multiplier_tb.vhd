library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pipelined_Multiplier_tb is
--  Port ( );
end Pipelined_Multiplier_tb;

architecture Behavioral of Pipelined_Multiplier_tb is

    component depth_reg is
        generic ( 
            N : integer := 7    -- Default value as 7-bit register
        ); 
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               Din : in STD_LOGIC;
               Dout : out STD_LOGIC);
    end component;

    component Pipelined_Multiplier 
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               X : in STD_LOGIC_VECTOR (3 downto 0);
               Y : in STD_LOGIC_VECTOR (3 downto 0);
               Mul_Out : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    signal clk, rst : STD_LOGIC;
    signal X, Y : STD_LOGIC_VECTOR (3 downto 0);
    signal Mul_Out : STD_LOGIC_VECTOR (7 downto 0);

    signal A,B : STD_LOGIC;

begin

    dut: depth_reg generic map (N => 6)
        port map(clk => clk, rst => rst, Din => A, Dout => B);

    uut: Pipelined_Multiplier port map
        ( clk => clk,
          rst => rst,
          X => X,
          Y => Y,
          Mul_Out => Mul_Out);

    clocking: process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    stimulus: process
    begin
        A <= '1';
        X <= "0001";
        Y <= "0001";
        rst <= '1';
        wait for 20 ns;

        rst <= '0';
        wait for 20 ns;
        
        for i in 1 to 15 loop
            for j in 0 to 15 loop
                X <= std_logic_vector(to_unsigned(i, X'length));
                Y <= std_logic_vector(to_unsigned(j, Y'length));
                wait for 20 ns;
            end loop;
        end loop; 
       
        wait;
    end process;

end Behavioral;
