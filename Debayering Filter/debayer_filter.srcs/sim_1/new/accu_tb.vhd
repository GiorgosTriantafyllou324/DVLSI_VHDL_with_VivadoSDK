library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity accu_tb is
--  Port ( );
end accu_tb;

architecture Behavioral of accu_tb is

    component accu
    generic ( 
                N: integer  -- Image has NxN dimensions
            ); 
    port(
        clk: in STD_LOGIC;
        rst_n: in STD_LOGIC;
    
        -- Control signals from CU
        pixel_state: in STD_LOGIC_VECTOR(1 downto 0);
        row_counter: in integer;
        col_counter: in integer;
        
        -- Data signals from S2P 
        pixel_off_0: in STD_LOGIC_VECTOR(23 downto 0);
        pixel_off_1: in STD_LOGIC_VECTOR(23 downto 0);
        pixel_off_2: in STD_LOGIC_VECTOR(23 downto 0);
        
        --Output signals
        R: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
        G: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
        B: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0')
    );
    end component;
        
    signal clk, rst_n: STD_LOGIC := '0';
    signal pixel_state: STD_LOGIC_VECTOR(1 downto 0);
    signal row_counter, col_counter: integer;
    signal pixel_off_0, pixel_off_1, pixel_off_2: STD_LOGIC_VECTOR(23 downto 0);
    signal R, G, B: STD_LOGIC_VECTOR(7 downto 0);
        
begin
    ACC: accu generic map ( N => 4 ) 
                             port map ( clk => clk, rst_n => rst_n, 
                                        pixel_state => pixel_state, 
                                        row_counter => row_counter,
                                        col_counter => col_counter, 
                                        pixel_off_0 => pixel_off_0,
                                        pixel_off_1 => pixel_off_1,
                                        pixel_off_2 => pixel_off_2,
                                        R => R,
                                        G => G,
                                        B => B);
    
    row_counter <= 3;
    col_counter <= 0;
    
    reset: process
    begin
        rst_n <= '0';
        wait for 200 ns;
        rst_n <= '1';
        wait;
    end process;

    pixel: process
    begin
        pixel_off_0 <= X"010203"; -- X"FF0D0C";
        pixel_off_1 <= X"040506"; -- X"006B13";
        pixel_off_2 <= X"070809"; -- X"54A91B";
        wait for 400ns;
        pixel_off_0 <= X"9F0C33";
        pixel_off_1 <= X"4D8B6C";
        pixel_off_2 <= X"DFFF1F";
        wait for 400ns;
    end process;

    clocking: process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    pixelState: process 
    begin
        for i in 0 to 3 loop
            -- Assuming you want to assign a binary value based on the loop index
            case i is
                when 0 =>
                    pixel_state <= "00";
                when 1 =>
                    pixel_state <= "01";
                when 2 =>
                    pixel_state <= "10";
                when 3 =>
                    pixel_state <= "11";
                when others =>
                    pixel_state <= "00";  -- Default value if i is out of range
            end case;
            wait for 100 ns;
        end loop;
    end process;


end Behavioral;

