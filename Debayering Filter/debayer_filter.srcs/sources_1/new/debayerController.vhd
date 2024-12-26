library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity debayerCU is
    generic(
        N: integer := 0  -- image: NxN pixels
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
           
           row_cnt_delayed, col_cnt_delayed: out integer := 0 -- The row / column values as sent to the ACCU unit (delayed 2N + 2 cycles)
         );

end debayerCU;

architecture Behavioral of debayerCU is

    component depth_reg
    generic ( 
                N: integer  -- Image has NxN dimensions
            ); 
    Port ( clk : in STD_LOGIC;
           rst_n : in STD_LOGIC;
           Din : in STD_LOGIC_VECTOR(7 downto 0);
           Dout : out STD_LOGIC_VECTOR(7 downto 0));
    end component;

    signal row_counter, col_counter, pixel_counter: integer := 0;
    
    signal valid_in_old, new_image_old: std_logic := '0';
    signal valid_reg_in, valid_reg_out: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    
    signal process_image: STD_LOGIC := '0';
    signal pixels_left: integer := 0;

    signal row_counter_in_stdlogic, row_counter_out_stdlogic: STD_LOGIC_VECTOR(7 downto 0);
    signal col_counter_in_stdlogic, col_counter_out_stdlogic: STD_LOGIC_VECTOR(7 downto 0);
    
    signal img_finished_in, img_finished_delayed: STD_LOGIC_VECTOR(7 downto 0);
    signal img_finished: STD_LOGIC;
    

begin

    validInOld <= valid_in_old;
    
    test <= std_logic_vector(to_unsigned(pixels_left, test'length)); -- process_image & std_logic_vector(to_unsigned(pixel_counter, test'length - 1));
    
    -- Shows when an image is being processed
    -- It is updated only when pixel_counter == 0
--    process_image <= '1' when new_image = '1' and pixel_counter = 0 else 
--                     '0' when new_image = '0' and pixel_counter = 0;

    row_counter_in_stdlogic <= std_logic_vector(to_unsigned(row_counter, row_counter_in_stdlogic'length));
    col_counter_in_stdlogic <= std_logic_vector(to_unsigned(col_counter, col_counter_in_stdlogic'length));

    row_cnt_delay: depth_reg generic map ( N => 2 * N + 1 )  -- Delay cycles are 2N+1 instead of 2N+2 because the value loaded is the one from the previous clock cycle
                                port map ( clk => ram_fifo_we,
                                           rst_n => rst_n, 
                                           Din => row_counter_in_stdlogic, 
                                           Dout => row_counter_out_stdlogic);
                                           
    col_cnt_delay: depth_reg generic map ( N => 2 * N + 1 )  -- Delay cycles are 2N+1 instead of 2N+2 because the value loaded is the one from the previous clock cycle
                                port map ( clk => ram_fifo_we,
                                           rst_n => rst_n, 
                                           Din => col_counter_in_stdlogic, 
                                           Dout => col_counter_out_stdlogic);
                      
                            
    valid_delay: depth_reg generic map ( N => 2 * N + 2 )
                              port map ( clk => ram_fifo_we,
                                         rst_n => rst_n, 
                                         Din => valid_reg_in, 
                                         Dout => valid_reg_out);
                                         
    img_finished_delay: depth_reg generic map ( N => 2 * N + 2 )
                                     port map ( clk => ram_fifo_we,
                                                rst_n => rst_n, 
                                                Din  => img_finished_in, 
                                                Dout => img_finished_delayed);
                            
    valid_reg_in <= "00000001" when valid_in_old = '0' and valid_in = '1' and clk = '1' else "00000000";
    valid_out <= valid_reg_out(0) and ram_fifo_we;
    
    row_cnt_delayed <= to_integer(unsigned(row_counter_out_stdlogic));
    col_cnt_delayed <= to_integer(unsigned(col_counter_out_stdlogic));
    
    img_finished <= '1' when pixel_counter = N * N - 1 else '0';
    img_finished_in <= "0000000" & img_finished;
    image_finished  <= img_finished_delayed(0) and ram_fifo_we;
    
    row_counter <= pixel_counter  /  N;
    col_counter <= pixel_counter mod N;
    
--    valid_out      <= pixel_state_out(7);
                      -- '1' when pixel_counter >= 2 * N + 2 and rst_n = '1' and new_image = '0' and rising_edge(clk) else '0';
    -- After 2N+2 valid-ins, the filter starts producing valid outputs
--                if (pixel_counter >= 2 * N + 1) then
--                    valid_out <= '1';
--                end if;

    CU: process (clk, rst_n) -- Add sensitivity for new image
    begin
    
        if (rst_n = '0') then   --  or new_image = '1'
            pixel_counter <= 0;
            
            ram_clr <= '0'; -- ram_clr clears on '0'
            ram_fifo_we <= '0';
            
        elsif rising_edge(clk) then

            ram_clr <= '1'; -- ram_clr clears on '0'
            
            if (valid_in_old = '0' and valid_in = '1') then
                
                if (pixel_counter = N * N - 1) then
                        pixel_counter <= 0;
                else
                    pixel_counter <= pixel_counter + 1;
                end if;

                if (pixels_left > 0) then
                    ram_fifo_we <= '1';
                end if;

                valid_in_old <= '1';
                
                -- The pixels_left counter is updated every time a pixel is processed (-1) or a new image has arrived.
                -- The new_image will be '1' either the first time (when pixels_left is 0) or after the previous image
                -- has been imported, so the pixels_left will have been reduced N*N times, so it will be 2*N + 2. 
                if (new_image = '1' and (pixels_left = 0 or pixels_left = 2*N + 2)) then
                    pixels_left <= N*N + 2*N + 1;
                    ram_fifo_we <= '1';
                elsif (pixels_left /= 0) then
                    pixels_left <= pixels_left - 1;
                end if;
                
            else
                ram_fifo_we <= '0';
--                valid_reg_in <= "00000000";
            end if;
            
            if (valid_in_old = '1' and valid_in = '0') then
                valid_in_old <= '0';
            end if;
        
        -- Useful when you send 1 pixel per clock cycle
        elsif falling_edge(clk) then
            if (valid_in_old = '1' and valid_in = '0') then
                valid_in_old <= '0';
            end if;
            ram_fifo_we <= '0';
--            valid_reg_in <= "00000000";

        end if;
      
    end process;

end Behavioral;


