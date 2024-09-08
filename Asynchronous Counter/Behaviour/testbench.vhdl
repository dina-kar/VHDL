LIBRARY ieee;  
 USE ieee.std_logic_1164.ALL;  

 ENTITY testbench IS  
 END testbench;  

 ARCHITECTURE behaviour OF testbench IS  
   COMPONENT async_counter  
   PORT(clk : in std_logic;
        t1 : in std_logic;
        t2 : in std_logic;
        t3 : in std_logic;
        q1 : out std_logic;
        q2 : out std_logic; 
        q3 : out std_logic;
        q1b : out std_logic;
        q2b : out std_logic; 
        q3b : out std_logic);  
   END COMPONENT;
  
   --Inputs  
   SIGNAL clk : std_logic;  
   SIGNAL t1 :  std_logic := '1';
   SIGNAL t2 :  std_logic := '1';
   SIGNAL t3 :  std_logic := '1';
   SIGNAL q1 :  std_logic;
   SIGNAL q2 :  std_logic; 
   SIGNAL q3 :  std_logic;
   SIGNAL q1b : std_logic;
   SIGNAL q2b : std_logic; 
   SIGNAL q3b : std_logic;
  
 BEGIN  
 uut: async_counter PORT MAP(clk, t1, t2, t3 ,q1 ,q2 , q3, q1b, q2b, q3b);
 stim_proc: process
 begin
     clk<='0' ; wait for 1 ns;
     clk<='1' ; wait for 1 ns;
     clk<='0' ; wait for 1 ns;
     clk<='1' ; wait for 1 ns;
     clk<='0' ; wait for 1 ns;
     clk<='1' ; wait for 1 ns;
     clk<='0' ; wait for 1 ns;
     clk<='1' ; wait for 1 ns;
     clk<='0' ; wait for 1 ns;
     clk<='1' ; wait for 1 ns;
     clk<='0' ; wait for 1 ns;
     clk<='1' ; wait for 1 ns;
     clk<='0' ; wait for 1 ns;
     clk<='1' ; wait for 1 ns;
     clk<='0' ; wait for 1 ns;
     clk<='1' ; wait for 1 ns;
     clk<='0' ; wait for 1 ns;
     clk<='1' ; wait for 1 ns;
     clk<='0' ; wait for 1 ns;
     clk<='1' ; wait for 1 ns;
     clk<='0' ; wait for 1 ns;
 wait;
 end process;
 END behaviour; 