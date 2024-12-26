----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2024 10:18:48 PM
-- Design Name: 
-- Module Name: db_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity db_tb is
--  Port ( );
end db_tb;

architecture Behavioral of db_tb is
component Serial2Parallel 
        generic(
               N: integer := 0                                  -- Input image: NxN pixels
        );
        
        Port ( clk : in STD_LOGIC;
               rst_n : in STD_LOGIC;
               pixel_ok : in STD_LOGIC;
               pixel_in : in STD_LOGIC_VECTOR (7 downto 0);     -- Single serial pixel input, with validity on MSbit
                -- 3x3 pixel block - synchronous output
               pixel_off_0: out STD_LOGIC_VECTOR (23 downto 0) := (others => '0');
               pixel_off_1: out STD_LOGIC_VECTOR (23 downto 0) := (others => '0');
               pixel_off_2: out STD_LOGIC_VECTOR (23 downto 0) := (others => '0');
               
               just_read: out STD_LOGIC_VECTOR(7 downto 0));
 
    end component;
    
    
    component debayerCU
        generic(
        N: integer := 0                         -- image: NxN pixels
               );
        Port ( clk : in STD_LOGIC;
               rst_n : in STD_LOGIC;
               valid_in : in STD_LOGIC;             -- Remains '1' in case pixel is valid/correct.
               new_image : in STD_LOGIC;            -- Notifies that a new NxN image is given
               ram_fifo_we : inout STD_LOGIC := '0';  -- To notify RAM FIFOs to write/shift in data
                                                    -- ram_fifo_we is the valid_in_filt
               ram_clr : out STD_LOGIC := '1';      -- To discard contents of RAM FIFO
               valid_out : out STD_LOGIC := '0';
               image_finished: out STD_LOGIC := '0';
               
               pixel_state: out STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
               row_cnt: out integer := 0;
               column_cnt: out integer := 0;
               
               validInOld: out STD_LOGIC := '0';
               test: inout STD_LOGIC_VECTOR(7 downto 0) := (others => '0'));   -- Signal to ALU, for calculating based on row/col counters
    end component;
    
    -- Serial to Parallel signals
    signal ram_fifo_we_signal, ram_clear: std_logic := '0';
    signal pixel_off_0, pixel_off_1, pixel_off_2: std_logic_vector (23 downto 0) := (others => '0');

    -- Control Unit signals
    signal pixel_state_signal: STD_LOGIC_VECTOR(1 downto 0);
    signal dummy: STD_LOGIC_VECTOR(7 downto 0); -- Debugging
    signal just_read: STD_LOGIC_VECTOR(7 downto 0);
    signal valid_in_old_blok: STD_LOGIC;
    signal row_counter_blok, col_counter_blok: integer;

begin

    ser2par: Serial2Parallel generic map ( N => N-1 ) -- (N-1): NxN pixel of image (padded)
                             port map ( clk => clk, 
                                        rst_n => ram_clear, 
                                        pixel_ok => ram_fifo_we_signal, 
                                        pixel_in => pixel, 
                                        pixel_off_0 => pixel_off_0,
                                        pixel_off_1 => pixel_off_1,
                                        pixel_off_2 => pixel_off_2,
                                        just_read => just_read);

    debCU: debayerCU generic map ( N => N ) 
                     port map ( clk => clk,
                                rst_n => rst_n,
                                valid_in => valid_in,
                                new_image => new_image,
                                ram_fifo_we => ram_fifo_we_signal,
                                ram_clr => ram_clear,
                                valid_out => valid_out_block,
                                pixel_state => pixel_state_signal,
                                row_cnt => row_counter_blok,
                                column_cnt => col_counter_blok,
                                validInOld => valid_in_old_blok,
                                test => dummy );
                                            
    pix_off0 <= pixel_off_0;
    pix_off1 <= pixel_off_1;
    pix_off2 <= pixel_off_2;
    pix_state <= pixel_state_signal;
    test_block <= "0000000" & ram_fifo_we_signal;
    
    ram_fifo_we_block <= ram_fifo_we_signal;
    row_counter_block <= row_counter_blok;
    col_counter_block <= col_counter_blok;
    valid_in_old_block <= valid_in_old_blok;
end Behavioral;
