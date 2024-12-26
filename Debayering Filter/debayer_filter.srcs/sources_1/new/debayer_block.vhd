
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debayer_block is
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
           
end debayer_block;

architecture Behavioral of debayer_block is

    component Serial2Parallel 
        generic(
               N: integer := 0                                  -- Input image: NxN pixels
        );
        
        Port ( clk : in STD_LOGIC;
               rst_n : in STD_LOGIC;
               pixel_in : in STD_LOGIC_VECTOR (7 downto 0);     -- Single serial pixel input, with validity on MSbit
                -- 3x3 pixel block - synchronous output
               pixel_off_0: out STD_LOGIC_VECTOR (23 downto 0) := (others => '0');
               pixel_off_1: out STD_LOGIC_VECTOR (23 downto 0) := (others => '0');
               pixel_off_2: out STD_LOGIC_VECTOR (23 downto 0) := (others => '0'));
               
    end component;
    
    
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
           
           validInOld: out STD_LOGIC := '0';
           test: inout STD_LOGIC_VECTOR(7 downto 0) := (others => '0');   -- Signal to ALU, for calculating based on row/col counters       
           
           row_cnt_delayed, col_cnt_delayed: out integer
         );
    end component;
    
    component accu 
        generic ( 
                    N: integer  -- Image has NxN dimensions
                ); 
        port(
            clk: in STD_LOGIC;
            rst_n: in STD_LOGIC;
        
            -- Control signals from CU
            pixel_state: inout STD_LOGIC_VECTOR(1 downto 0);
            row_cnt, col_cnt: in integer;
            
            -- Data signals from S2P 
            pixel_off_0: in STD_LOGIC_VECTOR(23 downto 0);
            pixel_off_1: in STD_LOGIC_VECTOR(23 downto 0);
            pixel_off_2: in STD_LOGIC_VECTOR(23 downto 0);
            
            --Output signals
            R: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
            G: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
            B: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
            
            -- Debugging signals
            p0, p1, p2, p3, p4, p5, p6, p7, p8: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
            pix_st_debug: out STD_LOGIC_VECTOR(1 downto 0)
        );
    end component;
    
    -- Serial to Parallel signals
    signal ram_fifo_we_signal, ram_clear: std_logic := '0';
    signal pixel_off_0, pixel_off_1, pixel_off_2: std_logic_vector (23 downto 0) := (others => '0');

    -- Control Unit signals
    signal pixel_state_signal: STD_LOGIC_VECTOR(1 downto 0);
    signal dummy: STD_LOGIC_VECTOR(7 downto 0); -- Debugging
    signal valid_in_old_blok: STD_LOGIC;
    
    signal p0_sig, p1_sig, p2_sig, p3_sig, p4_sig, p5_sig, p6_sig, p7_sig, p8_sig: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal pix_st_debug_sig: STD_LOGIC_VECTOR(1 downto 0);
    signal col_cnt_delayed_sig, row_cnt_delayed_sig: integer;
    signal image_finished_sig, valid_out_blok: STD_LOGIC;
    
--    signal R_blok, G_blok, B_blok: STD_LOGIC_VECTOR(7 downto 0);

begin

    ser2par: Serial2Parallel generic map ( N => N-1 ) -- (N-1): NxN pixel of image (padded)
                             port map ( clk => ram_fifo_we_signal, 
                                        rst_n => ram_clear, 
                                        pixel_in => pixel, 
                                        pixel_off_0 => pixel_off_0,
                                        pixel_off_1 => pixel_off_1,
                                        pixel_off_2 => pixel_off_2
                                      );

    debCU: debayerCU generic map ( N => N ) 
                     port map ( clk => clk,
                                rst_n => rst_n,
                                valid_in => valid_in,
                                new_image => new_image,
                                ram_fifo_we => ram_fifo_we_signal,
                                ram_clr => ram_clear,
                                image_finished => image_finished_sig,
                                valid_out => valid_out_block,
                                row_cnt_delayed => row_cnt_delayed_sig,
                                col_cnt_delayed => col_cnt_delayed_sig,
                                validInOld => valid_in_old_blok,
                                test => dummy
--                                row_cnt_out => row_cnt_delayed,
--                                col_cnt_out => col_cnt_delayed
                              );
                                
    Accumulator: accu generic map ( N => N )
                      port map (
                        clk => ram_fifo_we_signal,
                        rst_n => rst_n,
                    
                        pixel_state => pixel_state_signal,
                        row_cnt => row_cnt_delayed_sig,
                        col_cnt => col_cnt_delayed_sig,
                        pixel_off_0 => pixel_off_0,
                        pixel_off_1 => pixel_off_1,
                        pixel_off_2 => pixel_off_2,
                        
                        R => R,
                        G => G,
                        B => B,  
                        
                        p0 => p0_sig,
                        p1 => p1_sig,
                        p2 => p2_sig,
                        p3 => p3_sig,
                        p4 => p4_sig,
                        p5 => p5_sig,
                        p6 => p6_sig,
                        p7 => p7_sig,
                        p8 => p8_sig,
                        pix_st_debug => pix_st_debug_sig
--                        row_cnt => row_cnt_delayed,
--                        col_cnt => col_cnt_delayed
                        );
                                
    
                                            
    pix_off0 <= pixel_off_0;
    pix_off1 <= pixel_off_1;
    pix_off2 <= pixel_off_2;
    pix_state <= pixel_state_signal;
    test_block <= dummy; -- "0000000" & ram_fifo_we_signal;
    image_finished <= image_finished_sig;
    
    r_counter <= row_cnt_delayed_sig;
    c_counter <= col_cnt_delayed_sig;
    
    ram_fifo_we_block <= ram_fifo_we_signal;
--    row_counter_block <= row_counter_blok;
--    col_counter_block <= col_counter_blok;
    valid_in_old_block <= valid_in_old_blok;
    
    p0 <= p0_sig;
    p1 <= p1_sig;
    p2 <= p2_sig;
    p3 <= p3_sig;
    p4 <= p4_sig;
    p5 <= p5_sig;
    p6 <= p6_sig;
    p7 <= p7_sig;
    p8 <= p8_sig;
    pix_st_debug <= pix_st_debug_sig;
--    r_counter <= row_cnt_sig;
--    c_counter <= col_cnt_sig;

end Behavioral;
