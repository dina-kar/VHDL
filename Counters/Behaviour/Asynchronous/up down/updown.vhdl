library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity async_counter is
    Port ( clk : in bit;
           reset : in bit;
           updown : in bit;
           Q : out bit_vector(2 downto 0));
end async_counter;

architecture Behavioral of async_counter is
    signal t0, t1, t2 : bit :='0';
begin

    process (clk, updown)
    begin 
    if updown = '1' then
        if clk='1' and clk'event then
            t0 <= not t0;
        end if;
    else
       if clk='0' and clk'event then
          t0 <= not t0;
        end if;
    end if;    
    end process;

    
    process (t0, updown)
    begin 
    if updown = '1' then
        if t0='1' and t0'event then
            t1 <= not t1;
        end if;
    else
        if t0='0' and t0'event then
            t1 <= not t1;  
        end if;
    end if;    
    end process;

    process (t1, updown)
    begin 
    if updown = '1' then
        if t1='1' and t1'event then
            t2 <= not t2;
        end if;
    else
        if t1='0' and t1'event then
            t2 <= not t2;  
        end if;
    end if;    
    end process;

    Q <= t2 & t1 & t0 when reset='0'; 
    
end Behavioral;