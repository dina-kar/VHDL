library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter is
    Port ( clk    : in  STD_LOGIC;
           reset  : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           q : out STD_LOGIC_VECTOR(2 downto 0));
end counter;

architecture Dataflow of counter is
signal count : STD_LOGIC_VECTOR(2 downto 0) := "000";
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count <= "000";
        elsif rising_edge(clk) then
            if enable = '1' then
                count(0) <= not count(0);
                count(1) <= count(1) xor count(0);
                count(2) <= count(2) xor (count(1) and count(0));
            end if;
        end if;
    end process;
    q <= count;
end Dataflow;
