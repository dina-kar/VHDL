library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end half_adder;

architecture Structure of half_adder is

    component xor_gate is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               y : out STD_LOGIC);
    end component;

    component and_gate is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               y : out STD_LOGIC);
    end component;

begin

    xor_inst : xor_gate port map (
        a => a,
        b => b,
        y => sum
    );

    and_inst : and_gate port map (
        a => a,
        b => b,
        y => carry
    );

end Structure;