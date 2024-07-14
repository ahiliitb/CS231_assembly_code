library ieee;
use ieee.std_logic_1164.all;

entity NOT_Gate is
    port(x: in std_logic;
    y: out std_logic);
end entity;

architecture ahil of NOT_Gate is
    begin
       process (x)
       begin
        if x = '0' then
            y <= '1';
        
        else
            y <= '0';
        end if;
        end process;
    end ahil;