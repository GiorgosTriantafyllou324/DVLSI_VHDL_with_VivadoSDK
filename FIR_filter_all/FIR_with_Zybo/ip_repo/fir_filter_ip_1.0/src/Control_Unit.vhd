library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Control_Unit is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           valid_in: in STD_LOGIC;
           mac_init : out STD_LOGIC;
           ram_we: out STD_LOGIC;
           ram_addr : out STD_LOGIC_VECTOR (2 downto 0);
           rom_addr : out STD_LOGIC_VECTOR (2 downto 0);
           valid_out : out STD_LOGIC);
end Control_Unit;

architecture Behavioral of Control_Unit is
    component DFF
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               Din : in STD_LOGIC_VECTOR(2 downto 0);
               Dout : out STD_LOGIC_VECTOR(2 downto 0));
    end component;
   
    signal counter: STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
    signal valid_in_old, valid_in_filt: std_logic := '0';

    component depth_reg
        generic (
            N: integer     -- N: shows depth of DFFs (#Clock cycles till Dout=Din)
            );
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               Din : in STD_LOGIC;
               Dout : out STD_LOGIC);
    end component;
    
begin
    CU: process (clk, rst)
    begin
        if (rst = '1') then
            counter <= (others => '0');       -- Reset counter to "000"
            mac_init <= '1';
            
        elsif rising_edge(clk) then
            
            -- Scans rising_edge of valid_in signal and if counter is 0, then initializes MAC and start counter...
            if (valid_in_old = '0' and valid_in = '1' and counter = "000") then
                valid_in_filt <= '1';
                valid_in_old <= '1';
                counter <= "001";
            else
                valid_in_filt <= '0';
                if (counter /= "000") then
                    counter <= counter + 1;
                end if;
            end if;
            
            -- 1 cycle delay, in MAC initialization
            mac_init <= valid_in_filt;
            
            -- Follow falling edge of valid_in, without any changes.
            if (valid_in_old = '1' and valid_in = '0') then
                valid_in_old <= '0';
            end if;
            
        end if;
    end process;
    
    -- Delay 1 clock cycle the ram/rom addresses in FIR bus...
    dff0: DFF port map(clk => clk, rst => rst, Din => counter, Dout => rom_addr);
    dff1: DFF port map(clk => clk, rst => rst, Din => counter, Dout => ram_addr);
   
    depth: depth_reg generic map (N => 9)
           port map (clk => clk, rst => rst, Din => valid_in_filt, Dout => valid_out);
           
    -- Write data x[n] to RAM synchronous, as valid_in filtered signal
    ram_we <= valid_in_filt;
    
end Behavioral;