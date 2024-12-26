library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debayerCU_tb is
--  Port ( );
end debayerCU_tb;

architecture Behavioral of debayerCU_tb is

    component debayerCU
    generic(
        N: integer := 0                         -- image: NxN pixels
    );
    Port ( clk : in STD_LOGIC;
           rst_n : in STD_LOGIC;
           valid_in : in STD_LOGIC;              -- Remains '1' in case pixel is valid/correct.
           new_image : in STD_LOGIC;             -- Notifies that a new NxN image is given
           ram_fifo_we : inout STD_LOGIC := '0'; -- To notify RAM FIFOs to write/shift in data
                                                 -- ram_fifo_we is the valid_in_filt
           ram_clr : out STD_LOGIC := '1';       -- To discard contents of RAM FIFO
           valid_out : out STD_LOGIC := '0';
           image_finished: out STD_LOGIC := '0';
           
--           pixel_state: out STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
--           row_cnt: out integer := 0;
--           column_cnt: out integer := 0;
           
           validInOld: out STD_LOGIC := '0';
           test: inout STD_LOGIC_VECTOR(7 downto 0) := (others => '0');   -- Signal to ALU, for calculating based on row/col counters       
           
           row_cnt_delayed, col_cnt_delayed: out integer
         );
    end component;
    
    signal clk,  valid_in, validInOld, new_image, image_finished: STD_LOGIC := '0';
    signal rst_n: STD_LOGIC := '1';
    signal ram_fifo_we, ram_clr, valid_out : STD_LOGIC;
    signal dummy: STD_LOGIC_VECTOR(7 downto 0);
    signal pixel_state: STD_LOGIC_VECTOR(1 downto 0);
    signal row_cnt, col_cnt: integer := 0;
    signal row_cnt_delayed, col_cnt_delayed: integer;

begin
    
    CU: debayerCU generic map (N => 4)
                       port map (
                                clk => clk,
                                rst_n => rst_n,
                                valid_in => valid_in,
                                new_image => new_image,
                                ram_fifo_we => ram_fifo_we,
                                ram_clr => ram_clr,
                                valid_out => valid_out,
                                image_finished => image_finished,
                                validInOld => validInOld,
                                test => dummy,
                                row_cnt_delayed => row_cnt_delayed,
                                col_cnt_delayed => col_cnt_delayed
                                );
                                
    new_img: process
    begin
        new_image <= '0';
        wait for 2005 ns;
        new_image <= '1';
        wait for 15ns;
        new_image <= '0';
        wait;
    end process;
    
    reset: process
    begin
        rst_n <= '0';
        wait for 0 ns;
        rst_n <= '1';
        wait;
    end process;
        
    clocking: process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;
    
    pixel_new: process
    begin
        valid_in <= '0';
        wait for 50 ns;
        valid_in <= '1';
        wait for 40 ns;
    end process;

end Behavioral;
