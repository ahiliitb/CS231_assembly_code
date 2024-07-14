library IEEE;
use IEEE.std_logic_1164.all;

entity TestBench_of_Encoder is
end entity TestBench_of_Encoder;

architecture tb of TestBench_of_Encoder is
    signal m : std_logic_vector(3 downto 0);
    signal n : std_logic_vector(1 downto 0);
    component encoder4x2 is 
        port(I: in std_logic_vector(3 downto 0);
    Y: out std_logic_vector(1 downto 0));
    end component;
    
begin
    dut_instance : encoder4x2
    port map(I => m , Y=>n);
    process
    begin
        m<= "0001";
        wait for 10 ns;

        m<= "0010";
        wait for 10 ns;
        
        m<= "0100";
        wait for 10 ns;

        m<= "1000";
        wait for 10 ns;
        --wait;

    end process;  
    
end architecture ;