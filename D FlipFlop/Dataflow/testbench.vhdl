library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture Working of testbench is
component dff is port(
    D : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : out STD_LOGIC;
    Q_bar : out STD_LOGIC);
end component;

signal D, clk, Q, Q_bar: std_logic;
begin

uut: dff port map(
    D=>D,
    clk=>clk,
    Q=>Q,
    Q_bar=>Q_bar);

stim_proc: process
begin
    clk<='0' ; D<='0'; wait for 1 ns;
    clk<='1' ; D<='0'; wait for 1 ns;
    clk<='0' ; D<='0'; wait for 1 ns;
    clk<='1' ; D<='0'; wait for 1 ns;
    clk<='0' ; D<='0'; wait for 1 ns;
    clk<='1' ; D<='0'; wait for 1 ns;
    clk<='0' ; D<='1'; wait for 1 ns;
    clk<='1' ; D<='1'; wait for 1 ns;
    clk<='0' ; D<='1'; wait for 1 ns;
    clk<='1' ; D<='1'; wait for 1 ns;
    clk<='0' ; D<='1'; wait for 1 ns;
    clk<='1' ; D<='1'; wait for 1 ns;
    clk<='0' ; D<='1'; wait for 1 ns;
    clk<='1' ; D<='1'; wait for 1 ns;
    clk<='0' ; D<='1'; wait for 1 ns;
    clk<='1' ; D<='0'; wait for 1 ns;
    clk<='0' ; D<='0'; wait for 1 ns;
    clk<='1' ; D<='0'; wait for 1 ns;
    clk<='0' ; D<='1'; wait for 1 ns;
    clk<='1' ; D<='1'; wait for 1 ns;
    clk<='0' ; D<='1'; wait for 1 ns;
wait;
end process;
end Working;