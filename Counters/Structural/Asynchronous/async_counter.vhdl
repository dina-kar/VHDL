library ieee;
use ieee.std_logic_1164.all;

entity async_counter is
  Port (clk,reset : in std_logic;
        Q : inout std_logic_vector(2 downto 0));
end async_counter;

architecture Structural of async_counter is 

Component jkff is 
  Port (J,K,clk,reset: in std_logic;
        Q  : out std_logic);
end Component;

begin
FF1: jkff Port map('1','1',Clk,Reset,Q(0));
FF2: jkff Port map('1','1',Q(0),Reset,Q(1));
FF3: jkff Port map('1','1',Q(1),Reset,Q(2));

end Structural;