library ieee;
use ieee.std_logic_1164.all;

entity AND_Gate is
    port(
        x1: in std_logic;
        x2: in std_logic;
        y: out std_logic
    );
end entity;

architecture ahil of AND_Gate is
begin
    process (x1 , x2)
    begin
        if x1 = '1' and x2 = '1' then
            y <= '1';
        else
            y <= '0';
        end if;
    end process;
end ahil;


