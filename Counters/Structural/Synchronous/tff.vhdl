library ieee;
use ieee.std_logic_1164.all;

entity tff is 
Port (T,clk,reset: in std_logic;
      Q  : out std_logic);
 end tff;
 
 architecture Behavioural of tff is
      signal temp: std_logic := '0'; 
 begin
      
      process(clk)
            begin
                  if (falling_edge(clk)) then 
                        if (T='0') then 
                        temp <= temp;   
                        elsif(T='1') then 
                        temp <=  not temp;
                        end if;           
                  Q<=temp;
                  end if;
      end process;
 end Behavioural;
 