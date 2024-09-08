library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end half_adder;

architecture behavior of half_adder is
begin
    process(a, b)
    begin
        if(a/=b) then
            sum <= '1';
        else
            sum <= '0';
        end if;
    end process;
    process(a, b)
    begin
        if (a='1') and (b='1') then
            carry <= '1';
        else
            carry <= '0';
        end if;
    end process;
end behavior;