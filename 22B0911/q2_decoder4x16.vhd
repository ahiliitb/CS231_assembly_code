library ieee, std;
use ieee.std_logic_1164.all;


entity decoder4x16 is
    port(a, b, c, d, enable: in std_logic;
    dec: out std_logic_vector(15 downto 0));
end entity;

architecture ahil of decoder4x16 is

    signal temp: std_logic_vector(3 downto 0);

    component decoder2x4 is
        port(a1, b1, enable1: in std_logic;
        dec1: out std_logic_vector(3 downto 0));
    end component;

begin



    dut_instance1:decoder2x4
        port map(a1 => a, b1 => b, enable1 => enable, dec1 => temp);
        
    dut_instance2:decoder2x4
        port map(a1 => c, b1 => d, enable1 => temp(0), dec1 => dec(3 downto 0));
            
    dut_instance3:decoder2x4
        port map(a1 => c, b1 => d, enable1 => temp(1), dec1 => dec(7 downto 4));
        
    dut_instance4:decoder2x4
        port map(a1 => c, b1 => d, enable1 => temp(2), dec1 => dec(11 downto 8));
        
    dut_instance5:decoder2x4
        port map(a1 => c, b1 => d, enable1 => temp(3), dec1 => dec(15 downto 12));

end architecture;