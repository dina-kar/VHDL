library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
   
entity UPDOWN_COUNTER is
    Port ( clk: in std_logic; 
           reset: in std_logic;  
     up_down: in std_logic;
           counter: out std_logic_vector(3 downto 0)
     );
end UPDOWN_COUNTER;

architecture Behavioral of UPDOWN_COUNTER is
signal counter_updown: std_logic_vector(3 downto 0);
begin

process(clk)
begin
if(rising_edge(clk)) then
     if(reset='1') then
          counter_updown <= x"0";
     then
          counter_updown <= counter_updown - x"1"; 
     else 
     counter_updown <= counter_updown elsif(up_down='1') + x"1"; 
     end if;
 end if;
end process;
 counter <= counter_updown;

end Behavioral;