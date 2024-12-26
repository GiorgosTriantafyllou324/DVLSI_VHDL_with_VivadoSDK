library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.textio.all;
use IEEE.STD_LOGIC_ARITH.ALL;




entity debayerBlock_tb is
--  Port ( );
end debayerBlock_tb;

architecture Behavioral of debayerBlock_tb is

    component debayer_block
    generic(
        N: integer := 0                                 -- image NxN pixels
    );
    Port ( -- debayer filter inputs
           clk : in STD_LOGIC;
           rst_n : in STD_LOGIC;
           valid_in : in STD_LOGIC;
           new_image : in STD_LOGIC;                    -- new image is given
           pixel : in STD_LOGIC_VECTOR (7 downto 0);    -- pixel[] byte
           
           -- Debayer filter outputs
           image_finished : out STD_LOGIC;
           valid_out_block : out STD_LOGIC;
           
           R : out STD_LOGIC_VECTOR (7 downto 0);
           G : out STD_LOGIC_VECTOR (7 downto 0);
           B : out STD_LOGIC_VECTOR (7 downto 0);
           
           pix_off0: out STD_LOGIC_VECTOR(23 downto 0);
           pix_off1: out STD_LOGIC_VECTOR(23 downto 0);
           pix_off2: out STD_LOGIC_VECTOR(23 downto 0);
           pix_state: out STD_LOGIC_VECTOR(1 downto 0);
           
           ram_fifo_we_block: out STD_LOGIC;
           row_counter_block: out integer := 0;
           col_counter_block: out integer := 0;
           valid_in_old_block: out STD_LOGIC;
           test_block: inout STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
           
            -- Debugging signals
            p0, p1, p2, p3, p4, p5, p6, p7, p8: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
            pix_st_debug: out STD_LOGIC_VECTOR(1 downto 0);
            r_counter, c_counter: out integer
           
            );
              
    end component;
    
    signal clk, rst_n, valid_in, new_image, valid_out_blok: STD_LOGIC;
    signal pix_state: STD_LOGIC_VECTOR(1 downto 0);
    signal pixel_in: STD_LOGIC_VECTOR(7 downto 0);
    signal pix_off0, pix_off1, pix_off2: STD_LOGIC_VECTOR(23 downto 0); 
    signal dummy: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal ram_fifo_we_block, valid_in_old_block: STD_LOGIC;
    signal row_counter_block, col_counter_block: integer;
    signal R_block, G_block, B_block: STD_LOGIC_VECTOR(7 downto 0);
    signal p0_blok, p1_blok, p2_blok, p3_blok, p4_blok, p5_blok, p6_blok, p7_blok, p8_blok: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal pix_st_debug_blok: STD_LOGIC_VECTOR(1 downto 0);
    signal r_counter_blok, c_counter_blok: integer;
    signal image_finished_blok: STD_LOGIC;
    
    constant IMAGE_SIZE: integer := 16;

    -- File Handling
--    file input_file: text open read_mode is "file_name.txt";
--    signal file_row_counter: integer := 0;
--    variable row: line;
    
    type byte_array is array (15 downto 0) of std_logic_vector (7 downto 0);
    
    constant test_values: byte_array := (
        X"FF", X"0D", X"0C", X"FA",
        X"00", X"6B", X"13", X"FA",
        X"54", X"A9", X"1B", X"FA",
        X"FA", X"FA", X"FA", X"FA"    
        ); 

begin

    DB: debayer_block generic map (N => IMAGE_SIZE)
                       port map (
                               clk => clk,
                               rst_n => rst_n,
                               valid_in => valid_in,
                               new_image => new_image, -- new image is given
                               pixel => pixel_in,         -- pixel[] byte
                               
                               valid_out_block => valid_out_blok,
                               pix_off0 => pix_off0,
                               pix_off1 => pix_off1,
                               pix_off2 => pix_off2,
                               pix_state => pix_state,
                               
                               R => R_block,
                               G => G_block,
                               B => B_block,
                               
                               image_finished => image_finished_blok,
                               ram_fifo_we_block => ram_fifo_we_block,
                               valid_in_old_block => valid_in_old_block,
                               row_counter_block => row_counter_block,
                               col_counter_block => col_counter_block,
                               
                               test_block => dummy,
                               
                               p0 => p0_blok,
                               p1 => p1_blok,
                               p2 => p2_blok,
                               p3 => p3_blok,
                               p4 => p4_blok,
                               p5 => p5_blok,
                               p6 => p6_blok,
                               p7 => p7_blok,
                               p8 => p8_blok,
                               pix_st_debug => pix_st_debug_blok,
                               r_counter => r_counter_blok,
                               c_counter => c_counter_blok
                               );
        
    pixel: process
        file file_handle: TEXT;
        variable line_buffer: LINE;
        variable file_input: integer;
    begin
    
        -- Open the file for reading
        file_open(file_handle, "bayer16x16.txt", READ_MODE);
        
        -- Read values from the file and update pixel_in every 20 ns
        for i in 0 to 255 loop
            readline(file_handle, line_buffer);
            read(line_buffer, file_input);
            pixel_in <= std_logic_vector(to_unsigned(file_input, 8));
            wait for 20 ns;
        end loop;
        
        -- Close the file
        file_close(file_handle);
    
        -- First Image
--        for i in 15 downto 0 loop
--            pixel_in <= test_values(i);
--            wait for 20 ns;
--        end loop;
        
--        -- Second Image
--        for i in 15 downto 0 loop
--            pixel_in <= test_values(i);
--            wait for 20 ns;
--        end loop;
        
        wait;
    end process;
        
                               
    new_img: process
    begin
        new_image <= '0';
        wait for 10 ns;
        new_image <= '1';
        wait for 10 ns;
--        new_image <= '0';
--        wait for 310 ns;
--        new_image <= '1';
--        wait for 10 ns;
        new_image <= '0';
        
        wait;
    end process;
    
    reset: process
    begin
        rst_n <= '1';
--        wait for 285 ns;
--        rst_n <= '0';
--        wait for 1 ns;
--        rst_n <= '1';
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
        for i in 0 to IMAGE_SIZE * IMAGE_SIZE + 2 * IMAGE_SIZE + 2 loop
            valid_in <= '0';
            wait for 10 ns;
            valid_in <= '1';
            wait for 10 ns;
        end loop;
        
--        wait;
    end process;

end Behavioral;
