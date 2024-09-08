library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture Working of testbench is
component counter is port(
    clk    : in  STD_LOGIC;
    reset  : in  STD_LOGIC;
    enable : in  STD_LOGIC;
    q  : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal clk, reset, enable : std_logic;
signal q  : STD_LOGIC_VECTOR (2 downto 0);
constant clk_period : time := 10 ns;

begin

uut: counter port map(
clk=>clk,
reset=>reset,
enable=>enable,
q=>q
);


-- Clock process
clk_process : process
begin
    clk <= '0';
    wait for clk_period / 2;
    clk <= '1';
    wait for clk_period / 2;
end process;

-- Stimulus process
stim_proc : process
begin
    -- Reset the counter
    reset  <= '1';
    enable <= '0';
    wait for clk_period;

    -- Release reset and enable counting
    reset  <= '0';
    enable <= '1';
    wait for clk_period * 8;

    -- Disable counting
    enable <= '0';
    wait for clk_period * 4;

    -- Finish the simulation
    wait;
end process;

end Working;