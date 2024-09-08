library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_bar : out STD_LOGIC);
end dff;

architecture behavior of dff is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            Q <= D;
            Q_bar <= (NOT D);
        end if;
    end process;
end behavior;