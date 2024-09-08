library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture Working of testbench is
component half_adder is port(
a : in STD_LOGIC;
b : in STD_LOGIC;
sum : out STD_LOGIC;
carry : out STD_LOGIC
);
end component;

signal a, b,sum, carry: std_logic;
begin

uut: half_adder port map(
a=>a,
b=>b,
sum=>sum,
carry=>carry
);

stim_proc: process
begin
    a<='0' ; b<='0'; wait for 100 ns;
    a<='0' ; b<='1'; wait for 100 ns;
    a<='1' ; b<='0'; wait for 100 ns;
    a<='1' ; b<='1'; wait for 100 ns;
wait;
end process;
end Working;