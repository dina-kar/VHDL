library ieee;
use ieee.std_logic_1164.all;

entity sync_counter is
  Port (clk,reset : in std_logic;
        Q : inout std_logic_vector(2 downto 0));
end sync_counter;

architecture Structural of sync_counter is 

Component tff is 
  Port (T,clk,reset: in std_logic;
        Q  : out std_logic);
end Component;
signal q1,q2,q3,o : std_logic;
begin
FF1: tff Port map('1',clk,Reset,q1);
FF2: tff Port map(q1,clk,Reset,q2);
o <= q1 and q2;
FF3: tff Port map(o,clk,Reset,q3);

Q <= q3 & q2 & q1;
end Structural;