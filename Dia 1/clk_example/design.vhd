-- Simple OR gate design
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity clk_divider is
port(
  clk_in: in std_logic;
  clk_out: out std_logic);
end clk_divider;

architecture rtl of clk_divider is
	signal counter: unsigned (31 downto 0):= (others => '0');
    signal div_clk: std_logic:= '0';
begin
  
  process(clk_in) is
  begin
  	if(rising_edge(clk_in))then
        if (counter >=2)then
        	div_clk <= not div_clk;
            counter <= (others => '0');
      	else
          counter <= counter + 1;
        end if;
    end if;
  end process;
  
  clk_out <= div_clk;
end rtl;
