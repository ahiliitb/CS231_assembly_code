library ieee;
use ieee.std_logic_1164.all;

entity NotTestbench is
end entity NotTestbench;

architecture tb of NotTestbench is
    signal x: std_logic;
    signal g: std_logic;

    component NOT_Gate is
        port (
            x: in std_logic;
            y: out std_logic
        );
    end component NOT_Gate;

begin
    dut_instance: NOT_Gate
        port map (
            x => x,
            y => g
        );

    process
    begin
        x <= '0';
        wait for 1 ns;
                
        x <= '1';
        wait for 1 ns;
    end process;
end architecture tb;
