library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_bar : out STD_LOGIC);
end dff;

architecture behavior of dff is
   signal d1, s1, r1 : STD_LOGIC;
   begin
    s1 <= D nand clk;
    d1 <= D nand D;
    r1 <= d1 nand clk;
    Q <= s1 nand Q_bar;
    Q_bar <= r1 nand Q;
end behavior;