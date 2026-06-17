
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library unisim;
use unisim.VComponents.all;

entity main is
    Port(
        clk200_p: in std_logic;
        clk200_n: in std_logic;
        led: out std_logic_vector(7 downto 0)
    );
end main;

architecture Behavioral of main is 
    signal clk_200MHz: std_logic;
    signal contador: unsigned(31 downto 0) := (others => '0');

begin
    IBUFDS_inst : IBUFDS
        generic map(
            DIFF_TERM => FALSE,
            IBUF_LOW_PWR => TRUE,
            IOSTANDARD => "DEFAULT"
        )
        port map(
            O => clk_200MHz,
            I => clk200_p,
            IB => clk200_n
        );
    process(clk_200MHz)
    begin
        if rising_edge(clk_200MHz) then
            contador <= contador +1;
        end if;
    end process;

    LED(7 downto 0) <= std_logic_vector(contador(31 downto 24));

end Behavioral;