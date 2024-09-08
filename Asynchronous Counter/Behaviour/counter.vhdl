library IEEE;  
 use IEEE.STD_LOGIC_1164.ALL;   

 entity async_counter is  
 Port ( clk : in std_logic;
        t1 : in std_logic;
        t2 : in std_logic;
        t3 : in std_logic;
        q1 : out std_logic;
        q2 : out std_logic; 
        q3 : out std_logic;
        q1b : out std_logic;
        q2b : out std_logic; 
        q3b : out std_logic    
    );  
 end async_counter;
  
 architecture Dataflow of async_counter is  
 begin
    q1 <= ((NOT (t1 and clk and q1b)) nand q1b);
    q1b <= ((NOT (t1 and clk and q1)) nand q1);

     
    q2 <= ((NOT (t2 and q1 and q2b)) nand q2b);
    q2b <= ((NOT (t2 and q1 and q2)) nand q2);


    q3 <= ((NOT (t3 and q2 and q3b)) nand q3b);
    q3b <= ((NOT (t3 and q2 and q3)) nand q3);
 end Dataflow;  