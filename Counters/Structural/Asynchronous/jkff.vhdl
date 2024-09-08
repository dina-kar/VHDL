library ieee;
use ieee.std_logic_1164.all;

entity jkff is 
Port (J,K,clk,reset: in std_logic;
      Q  : out std_logic);
 end jkff;
 
 architecture Behavioural of jkff is
      signal temp: std_logic := '0'; 
 begin
      
      process(clk)
            begin
                  if (falling_edge(clk)) then 
                        if (J='0' and K='0') then 
                        temp <= temp;
                        elsif(J='0' and K='1') then
                        temp <= '0';
                        elsif(J='1' and K='0') then
                        temp <= '1';
                        elsif(J='1' and K='1') then 
                        temp <=  not temp;
                        end if;           
                  Q<=temp;
                  end if;
      end process;
 end Behavioural;
 