library ieee, std;
use ieee.std_logic_1164.all;

entity Testbench is
    end entity;

architecture tb of Testbench is
    signal A, B, C, D, ENABLE: std_logic;
    signal DEC: std_logic_vector(15 downto 0);
    
    component decoder4x16 is
        port(a, b, c, d, enable: in std_logic;
        dec: out std_logic_vector(15 downto 0));
    end component;

begin
    dut_instance: decoder4x16
        port map(a => A, b => B, c => C, d => D, enable => ENABLE, dec => DEC);

    process
    begin

    ENABLE <= '0';

    A <= '0';
    B <= '0';
    C <= '0';
    D <= '0';
    wait for 1 ns;
    
    D <= '1';
    wait for 1 ns;
    
    C <= '1';
    D <= '0';
    wait for 1 ns;
    
    C <= '1';
    D <= '1';
    wait for 1 ns;

    B <= '1';
    C <= '0';
    D <= '0';
    wait for 1 ns;
    
    D <= '1';
    wait for 1 ns;
    
    C <= '1';
    D <= '0';
    wait for 1 ns;

    C <= '1';
    D <= '1';
    wait for 1 ns;
    
    
    A <= '1';
    B <= '0';
    C <= '0';
    D <= '0';
    wait for 1 ns;

    D <= '1';
    wait for 1 ns;
    
    C <= '1';
    D <= '0';
    wait for 1 ns;

    C <= '1';
    D <= '1';
    wait for 1 ns;

    B <= '1';
    C <= '0';
    D <= '0';
    wait for 1 ns;

    D <= '1';
    wait for 1 ns;
    
    C <= '1';
    D <= '0';
    wait for 1 ns;

    C <= '1';
    D <= '1';
    wait for 1 ns;


    
    ENABLE <= '1';


    A <= '0';
    B <= '0';
    C <= '0';
    D <= '0';
    wait for 1 ns;
    
    D <= '1';
    wait for 1 ns;
    
    C <= '1';
    D <= '0';
    wait for 1 ns;
    
    C <= '1';
    D <= '1';
    wait for 1 ns;

    B <= '1';
    C <= '0';
    D <= '0';
    wait for 1 ns;
    
    D <= '1';
    wait for 1 ns;
    
    C <= '1';
    D <= '0';
    wait for 1 ns;

    C <= '1';
    D <= '1';
    wait for 1 ns;
    
    
    A <= '1';
    B <= '0';
    C <= '0';
    D <= '0';
    wait for 1 ns;

    D <= '1';
    wait for 1 ns;
    
    C <= '1';
    D <= '0';
    wait for 1 ns;

    C <= '1';
    D <= '1';
    wait for 1 ns;

    B <= '1';
    C <= '0';
    D <= '0';
    wait for 1 ns;

    D <= '1';
    wait for 1 ns;
    
    C <= '1';
    D <= '0';
    wait for 1 ns;

    C <= '1';
    D <= '1';
    wait for 1 ns;  

    end process;

end architecture;