----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2024 05:23:21 PM
-- Design Name: 
-- Module Name: FIR_filter_unit - Behavioral
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

entity FIR_filter_unit is
    generic(
        data_width: integer := 8                                      
    );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           valid_in : in STD_LOGIC;
           x : in STD_LOGIC_VECTOR (data_width-1 downto 0);
           valid_out : out STD_LOGIC;
           y : out STD_LOGIC_VECTOR (23 downto 0));
end FIR_filter_unit;

architecture Behavioral of FIR_filter_unit is

    component Control_Unit
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               valid_in: in STD_LOGIC;
               mac_init : out STD_LOGIC;
               ram_we: out STD_LOGIC;
               ram_addr : out STD_LOGIC_VECTOR (2 downto 0);
               rom_addr : out STD_LOGIC_VECTOR (2 downto 0);
               valid_out : out STD_LOGIC);
    end component;

    
    component ROM 
        generic(
            coeff_width: integer :=8                                        -- width of h[] coefficients
        );
        Port ( clk : in STD_LOGIC;
               rom_en: in STD_LOGIC;                                        -- ROM enable signal
               rom_addr : in STD_LOGIC_VECTOR (2 downto 0);                 -- ROM address: from 0 to 7 in range (8-tap FIR)
               rom_out : out STD_LOGIC_VECTOR (coeff_width-1 downto 0));    -- ROM output data: Given from 'rom_type' array
    end component;
    
    component RAM 
        generic(
            data_width: integer := 8                                        -- width of data x[] in bits
        );
        Port ( clk : in STD_LOGIC;
               ram_clr: in STD_LOGIC;                                       -- RAM reset input signal values - clear FIFO
               ram_we : in STD_LOGIC;                                       -- RAM write enable signal, to allow writing data
               ram_addr : in STD_LOGIC_VECTOR (2 downto 0);                 -- RAM address, ranges from 0x0 to 0x7 (8 position)
               ram_in : in STD_LOGIC_VECTOR (data_width-1 downto 0);        -- RAM data located at the input
               ram_out : out STD_LOGIC_VECTOR (data_width-1 downto 0));     -- RAM data shifted to the output
    end component;
    
    component MAC 
        generic(
            data_width: integer := 8                                        -- width of data ram_out[], rom_out[] in bits
        );
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               mac_init : in STD_LOGIC;                                     -- MAC initialization signal
               rom_out : in STD_LOGIC_VECTOR (data_width-1 downto 0);       -- MAC coefficient's data from ROM
               ram_out : in STD_LOGIC_VECTOR (data_width-1 downto 0);       -- MAC input data from RAM
               fir_out : out STD_LOGIC_VECTOR (23 downto 0) := X"000000");  -- FIR output data
    end component;
    
    signal mac_init, ram_we: STD_LOGIC;
    signal ram_addr, rom_addr : STD_LOGIC_VECTOR (2 downto 0);
    signal ram_out, rom_out : STD_LOGIC_VECTOR (data_width-1 downto 0);
        
begin

    CU: Control_Unit port map
        ( clk => clk, rst => rst, valid_in => valid_in,
          mac_init => mac_init, ram_we => ram_we, 
          ram_addr => ram_addr, rom_addr => rom_addr, 
          valid_out => valid_out );
          
    ROM_memory: ROM generic map ( coeff_width => 8 )
                    port map( clk => clk, rom_en => '1',
                              rom_addr => rom_addr, rom_out => rom_out );    
    
    RAM_memory: RAM generic map ( data_width => 8 )
                port map( clk => clk, ram_clr => rst, ram_we => ram_we,
                          ram_addr => ram_addr, ram_in => x, ram_out => ram_out );

    MAC_Unit: MAC generic map ( data_width => 8 )
                    port map( clk => clk, rst => rst, mac_init => mac_init,
                              ram_out => ram_out, rom_out => rom_out, fir_out => y );

end Behavioral;