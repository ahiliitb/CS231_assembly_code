library ieee, std;
use ieee.std_logic_1164.all;

entity decoder2x4 is
    port(a1, b1, enable1: in std_logic;
    dec1: out std_logic_vector(3 downto 0));
end entity;
    
architecture ahil of decoder2x4 is
    component NOT_Gate is
        port(x: in std_logic;
        y: out std_logic);
    end component;

    component AND_Gate is
        port(x1: in std_logic;
        x2: in std_logic;
        y: out std_logic);
    end component;

    signal x1,x2,x3,x4,x5,x6,x7,x8: std_logic;

begin
    dut_instance1: NOT_Gate
        port map(x => a1, y => x1);
    dut_instance2: NOT_Gate
        port map(x => b1, y => x2);

    dut_instance3: AND_Gate
        port map(x1 => x1, x2 => x2, y => x3);
    dut_instance4: AND_Gate
        port map(x1 => x3, x2 => enable1, y => dec1(0));

    dut_instance5: AND_Gate
        port map(x1 => x1, x2 => b1, y => x5);
    dut_instance6: AND_Gate
        port map(x1 => x5, x2 => enable1, y => dec1(1));

    dut_instance7: AND_Gate
        port map(x1 => a1, x2 => x2, y => x6);
    dut_instance8: AND_Gate
        port map(x1 => x6, x2 => enable1, y => dec1(2));

    dut_instance9: AND_Gate
        port map(x1 => a1, x2 => b1, y => x7);
    dut_instance10: AND_Gate
        port map(x1 => x7, x2 => enable1, y => dec1(3));



end architecture;