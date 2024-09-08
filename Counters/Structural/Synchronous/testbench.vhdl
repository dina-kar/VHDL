library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture Behavior of testbench is

    component sync_counter
        Port ( clk   : in  STD_LOGIC;
               reset : in  STD_LOGIC;
               Q : inout STD_LOGIC_VECTOR(2 downto 0));
    end component;


    -- Input signals
    signal clk, reset : STD_LOGIC;

    -- Output signals
    signal count : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');

    -- Clock period
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut : sync_counter
        port map (
            clk   => clk,
            reset => reset,
            Q => count
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
        reset <= '1';
        wait for clk_period * 8;

        -- Release reset and count
        reset <= '0';
        wait for clk_period * 8;

        -- Finish the simulation
        wait;
    end process;

end Behavior;
