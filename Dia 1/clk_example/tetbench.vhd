-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component clk_divider is
port(
  clk_in: in std_logic;
  clk_out: out std_logic
  );
end component;

signal clk, clk_out: std_logic;
  -- Definición de la constante de periodo (ej. 100 MHz -> 10 ns)
constant clk_period : time := 2 ns;

begin


	DUT: clk_divider port map(clk, clk_out);
  -- Proceso de generación de reloj
  clk_process : process
  begin
      clk <= '0';
      wait for clk_period/2;
      clk <= '1';
      wait for clk_period/2;
  end process;

  process
  begin
   
    wait for 50 ns;

    wait;
  end process;
end tb;
