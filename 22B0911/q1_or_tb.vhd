library ieee;
use ieee.std_logic_1164.all;

entity ORTestbench is
end entity ORTestbench;

architecture tb of ORTestbench is
    signal x1, x2: std_logic;
    signal g: std_logic;

    component OR_Gate is
        port(
            x1: in std_logic;
            x2: in std_logic;
            y: out std_logic
        );
    end component OR_Gate;

begin
    dut_instance: OR_Gate
        port map (
            x1 => x1,
            x2 => x2,
            y => g
        );

    process
    begin
        x1 <= '0';
        x2 <= '0';
        wait for 1 ns;
        
        x1 <= '0';
        x2 <= '1';
        wait for 1 ns;

        x1 <= '1';
        x2 <= '0';
        wait for 1 ns;

        x1 <= '1';
        x2 <= '1';
        wait for 1 ns;
    end process;
end architecture tb;