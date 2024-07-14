library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux4x1_GATE is
    port (
        D: in std_logic_vector (3 downto 0);
        S: in std_logic_vector(1 downto 0);
        Y: out std_logic
    );
end entity; 

architecture ahil of mux4x1_GATE is
begin
    process(S, D)
    begin
        if S = "00" then
            Y <= D(0);
        elsif S = "01" then
            Y <= D(1);
        elsif S = "10" then
            Y <= D(2);
        else
            Y <= D(3);
        end if;
    end process;
end architecture ahil;