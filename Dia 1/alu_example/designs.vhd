-- Simple OR gate design
library IEEE;
use IEEE.std_logic_1164.all;

entity alu_gate is
port(
  a: in std_logic;
  b: in std_logic;
  s0: in std_logic;
  s1: in std_logic;
  q: out std_logic);
end alu_gate;

architecture rtl of alu_gate is
begin
  q <= (a and b) when (s0&s1 = "00") else
           (not (a and b)) when (s0&s1 = "01") else
           (a xor b) when (s0&s1 = "10") else
           (a or b);       
           
end rtl;
