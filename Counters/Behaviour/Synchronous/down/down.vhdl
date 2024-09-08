library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DOWN_COUNTER is
    Port ( clk: in std_logic; 
           reset: in std_logic; 
           counter: out std_logic_vector(3 downto 0) 
     );
end DOWN_COUNTER;

architecture Behavioral of DOWN_COUNTER is
signal counter_down: std_logic_vector(3 downto 0);
begin

process(clk)
begin
if(rising_edge(clk)) then
    if(reset='1') then
         counter_down <= x"F";
    else
        counter_down <= counter_down - x"1";
    end if;
 end if;
end process;
 counter <= counter_down;

end Behavioral;