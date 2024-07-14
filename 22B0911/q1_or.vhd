library ieee;
use ieee.std_logic_1164.all;


entity OR_Gate is
    port(x1: in std_logic;
    x2: in std_logic;
    y: out std_logic);
end entity;

architecture ahil of OR_Gate is
    begin
    process (x1 , x2)
       begin
           if x1 = '0' and x2 = '0' then
            y <= '0';

           else 
            y <= '1';
           end if;
     end process;
end ahil;