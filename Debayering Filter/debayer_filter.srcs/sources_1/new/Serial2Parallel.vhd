library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity Serial2Parallel is
    generic(
           N: integer := 0   -- Input image: NxN pixels
    );
    
    Port ( clk : in STD_LOGIC;
           rst_n : in STD_LOGIC := '1';
--           pixel_ok : in STD_LOGIC;
           pixel_in : in STD_LOGIC_VECTOR (7 downto 0) := (others => '0');     -- Single serial pixel input, with validity on MSbit
           
           -- 3x3 pixel block - synchronous output
           pixel_off_0: out STD_LOGIC_VECTOR (23 downto 0) := (others => '0');  -- Top row of 3x3 pixel block
           pixel_off_1: out STD_LOGIC_VECTOR (23 downto 0) := (others => '0');  -- Middle row of 3x3 pixel block
           pixel_off_2: out STD_LOGIC_VECTOR (23 downto 0) := (others => '0')); -- Bottom row of 3x3 pixel block
           
end Serial2Parallel;

architecture Behavioral of Serial2Parallel is
        
    component RAM_FIFO 
        generic(
               N: integer                                       -- Input image: NxN pixels
        );
        Port ( clk : in STD_LOGIC;
               ram_clr : in STD_LOGIC;                      -- Shows whether there is a valid input to be inserted 
               pixel_in : in STD_LOGIC_VECTOR (7 downto 0);   -- Pixel inserted to FIFO: MSbit shows validity
               pixel_out: out STD_LOGIC_VECTOR (7 downto 0)); -- Pixel escapes FIFO
    end component;
    
    component depth_reg 
        generic ( 
               N: integer                                       -- N: shows depth of DFFs (#Clock cycles until Dout=Din)
                ); 
        Port ( clk : in STD_LOGIC;
               rst_n : in STD_LOGIC;
               Din : in STD_LOGIC_VECTOR(7 downto 0);
               Dout : out STD_LOGIC_VECTOR(7 downto 0));
    end component;

    type pixel_out_type is array (2 downto 0) of std_logic_vector (7 downto 0);          
    signal pixel_out : pixel_out_type := (others => (others => '0'));   
    
    type dff_type is array (5 downto 0) of std_logic_vector (7 downto 0);          
    signal dff_out : dff_type := (others => (others => '0'));   
    
begin
    
    -- RAM FIFO's to parallelize input pixels
    fifo0: RAM_FIFO generic map ( N => N )
                    port map ( clk => clk, ram_clr => rst_n,
                               pixel_in => pixel_in, pixel_out => pixel_out(0));
                               
    fifo1: RAM_FIFO generic map ( N => N )
                    port map ( clk => clk, ram_clr => rst_n, 
                               pixel_in => pixel_out(0), pixel_out => pixel_out(1));
                               
    fifo2: RAM_FIFO generic map ( N => N )
                    port map ( clk => clk, ram_clr => rst_n,
                               pixel_in => pixel_out(1), pixel_out => pixel_out(2));
    ------------------------------------------------------------------------------------------
    -- DFF's pixel output signaling
    --  ----------------------------
    -- | DFF_00    DFF_01    DFF_02 | -> pixel_off_0
    -- | DFF_10    DFF_11    DFF_12 | -> pixel_off_1
    -- | DFF_20    DFF_21    DFF_22 | -> pixel_off_2
    --  ----------------------------
    -- DFFs to resolve output pixel's to 3x3 block       
    -- ROW: i = 0 of 3x3 pixel block...      
    -- DFFs get the pixel_ok as clock so as to load data only when they are valid                           
    DFF_02: depth_reg generic map ( N => 0 )
                    port map ( clk => clk, rst_n => rst_n, 
                               Din => pixel_out(2), Dout => dff_out(0));
    pixel_off_0(7 downto 0) <= dff_out(0);
    
    DFF_01: depth_reg generic map ( N => 0 )
                    port map ( clk => clk, rst_n => rst_n, 
                               Din => dff_out(0), Dout => dff_out(1));    
    pixel_off_0(15 downto 8) <= dff_out(1);
    
    DFF_00: depth_reg generic map ( N => 0 )
                    port map ( clk => clk, rst_n => rst_n, 
                               Din => dff_out(1), Dout => pixel_off_0(23 downto 16));    
    ------------------------------------------------------------------------------------------
    
    -- ROW: i = 1 of 3x3 pixel block...                                 
    DFF_12: depth_reg generic map ( N => 0 )
                    port map ( clk => clk, rst_n => rst_n, 
                               Din => pixel_out(1), Dout => dff_out(2));
    pixel_off_1(7 downto 0) <= dff_out(2);
    
    DFF_11: depth_reg generic map ( N => 0 )
                    port map ( clk => clk, rst_n => rst_n, 
                               Din => dff_out(2), Dout => dff_out(3));    
    pixel_off_1(15 downto 8) <= dff_out(3);
    
    DFF_10: depth_reg generic map ( N => 0 )
                    port map ( clk => clk, rst_n => rst_n, 
                               Din => dff_out(3), Dout => pixel_off_1(23 downto 16)); 
    ------------------------------------------------------------------------------------------

    -- ROW: i = 2 of 3x3 pixel block...                                 
    DFF_22: depth_reg generic map ( N => 0 )
                    port map ( clk => clk, rst_n => rst_n, 
                               Din => pixel_out(0), Dout => dff_out(4));
    pixel_off_2(7 downto 0) <= dff_out(4);
    
    DFF_21: depth_reg generic map ( N => 0 )
                    port map ( clk => clk, rst_n => rst_n, 
                               Din => dff_out(4), Dout => dff_out(5));    
    pixel_off_2(15 downto 8) <= dff_out(5);
    
    DFF_20: depth_reg generic map ( N => 0 )
                    port map ( clk => clk, rst_n => rst_n, 
                               Din => dff_out(5), Dout => pixel_off_2(23 downto 16)); 
       
end Behavioral;
