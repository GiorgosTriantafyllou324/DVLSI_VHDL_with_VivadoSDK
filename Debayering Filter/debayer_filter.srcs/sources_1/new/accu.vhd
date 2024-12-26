library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity accu is
    generic ( 
                N: integer  -- Image has NxN dimensions
            ); 
    port(
        clk: in STD_LOGIC;
        rst_n: in STD_LOGIC;
    
        -- Control signals from CU
        pixel_state: inout STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
        row_cnt, col_cnt: in integer := 0;
        
        -- Data signals from S2P 
        pixel_off_0: in STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
        pixel_off_1: in STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
        pixel_off_2: in STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
        
        --Output signals
        R: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
        G: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
        B: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
        
        -- Debugging signals
        p0, p1, p2, p3, p4, p5, p6, p7, p8: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
        pix_st_debug: out STD_LOGIC_VECTOR(1 downto 0) := (others => '0')
    );
    

end accu;

architecture Behavioral of accu is

    type pos_array is array (0 to 8) of std_logic_vector(7 downto 0);
    signal pos : pos_array;
    
    signal vertical2, horizontal2: STD_LOGIC_VECTOR(8 downto 0);
    signal cross4, diagonal4:      STD_LOGIC_VECTOR(9 downto 0);

begin
    
    -- pos(0)  pos(1)  pos(2)
    -- pos(3)  pos(4)  pos(5)
    -- pos(6)  pos(7)  pos(8)
    
    -- Check if you are on the edges
    pos(0) <= pixel_off_0(23 downto 16) when row_cnt /= 0 and   col_cnt /= 0   else (others => '0');
    pos(1) <= pixel_off_0(15 downto 8)  when row_cnt /= 0                      else (others => '0');
    pos(2) <= pixel_off_0(7  downto 0)  when row_cnt /= 0 and   col_cnt /= N-1 else (others => '0');
    
    pos(3) <= pixel_off_1(23 downto 16) when                    col_cnt /= 0   else (others => '0');
    pos(4) <= pixel_off_1(15 downto 8);  
    pos(5) <= pixel_off_1(7  downto 0)  when                    col_cnt /= N-1 else (others => '0');
    
    pos(6) <= pixel_off_2(23 downto 16) when row_cnt /= N-1 and col_cnt /= 0   else (others => '0');
    pos(7) <= pixel_off_2(15 downto 8)  when row_cnt /= N-1                    else (others => '0');
    pos(8) <= pixel_off_2(7  downto 0)  when row_cnt /= N-1 and col_cnt /= N-1 else (others => '0');

    vertical2   <= ("0"  & pos(1)) + ("0"  & pos(7));
    horizontal2 <= ("0"  & pos(3)) + ("0"  & pos(5));
    diagonal4   <= ("00" & pos(0)) + ("00" & pos(2)) + ("00" & pos(6)) + ("00" & pos(8));
    cross4      <= ("00" & pos(1)) + ("00" & pos(3)) + ("00" & pos(5)) + ("00" & pos(7));
    
    -- Decision of the state of the pixel
    -- state i)   0
    -- state ii)  1
    -- state iii) 2
    -- state iv)  3
    pixel_state <= "01" when (std_logic_vector(to_unsigned(row_cnt, 1)) = "0" and std_logic_vector(to_unsigned(col_cnt, 1)) = "0") else
                   "11" when (std_logic_vector(to_unsigned(row_cnt, 1)) = "0" and std_logic_vector(to_unsigned(col_cnt, 1)) = "1") else
                   "10" when (std_logic_vector(to_unsigned(row_cnt, 1)) = "1" and std_logic_vector(to_unsigned(col_cnt, 1)) = "0") else
                   "00"; 
    


    ACCU: process (clk, rst_n)
    begin
        if (rst_n = '0') then
            R <= (others => '0');
            G <= (others => '0');
            B <= (others => '0');
       
        elsif (rising_edge(clk)) then   
        
            -- Debugging
            p0 <= pos(0);
            p1 <= pos(1);
            p2 <= pos(2);
            p3 <= pos(3);
            p4 <= pos(4);
            p5 <= pos(5);
            p6 <= pos(6);
            p7 <= pos(7);
            p8 <= pos(8);
            pix_st_debug <= pixel_state;   
            
            -- Get the pixel state and compute the outputs
            if (pixel_state = "00") then    -- green pixel, state i
                G <= pos(4);
                R <= horizontal2(8 downto 1);
                B <= vertical2(8 downto 1);
    
            elsif (pixel_state = "01") then -- green pixel, state ii
                G <= pos(4);                                      
                B <= horizontal2(8 downto 1);
                R <= vertical2(8 downto 1);
            
            elsif (pixel_state = "10") then -- red pixel,   state iii
                R <= pos(4);                                                  
                G <= cross4(9 downto 2);
                B <= diagonal4(9 downto 2);
            
            else                            -- blue pixel,  state iv
                B <= pos(4);
                G <= cross4(9 downto 2);
                R <= diagonal4(9 downto 2);
            end if;
        end if;
    end process;

end Behavioral;
