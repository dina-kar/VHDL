library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture Behavioral of testbench is

component async_counter 
        Port ( clk : in bit;
        reset : in bit;
        Q : out bit_vector(2 downto 0));
end component;
signal reset,clk: bit;
signal Q :  bit_vector(2 downto 0);

begin
dut: async_counter port map (clk => clk, reset=>reset, Q => Q);
   -- Clock process definitions
clock_process :process
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;


-- Stimulus process
stim_proc: process
begin        
   -- hold reset state for 100 ns.
     reset <= '1';
   wait for 20 ns;    
    reset <= '0';
   wait;
end process;
end Behavioral;