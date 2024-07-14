library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux4x1_testbench is
end mux4x1_testbench;

architecture tb of mux4x1_testbench is

    signal d: std_logic_vector (3 downto 0);
    signal s: std_logic_vector (1 downto 0);
    signal y: std_logic;
    component mux4x1_GATE is
        port(D: in std_logic_vector (3 downto 0);
        S: in std_logic_vector(1 downto 0);
        Y: out std_logic);
    end component;

    begin
        obj: mux4x1_GATE
        port map(D => d, S => s, Y => y);
        process begin

            for i in 0 to 15 loop
                d <= std_logic_vector(to_unsigned(i, 4));  -- Set data inputs
                for j in 0 to 4 loop
                    s <= std_logic_vector(to_unsigned(j, 2));  -- Set select input
                    wait for 1 ns;  -- Simulate for 1 ns
                end loop;
            end loop;            

        end process;

end architecture;