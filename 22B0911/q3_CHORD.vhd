library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_textio.all;
use std.textio.all;


entity CHORDEncoder is
    port(clk, rst: in std_logic;
	    a: in std_logic_vector(7 downto 0);
	    data_valid: out std_logic;
	    z: out std_logic_vector(7 downto 0));
end entity;

architecture behaviour of CHORDEncoder is

    type buffer_type is array (0 to 100) of std_logic_vector(7 downto 0);
    type ans_type is array (0 to 100) of std_logic_vector(7 downto 0) ;
    type integer_vector is array (0 to 100) of integer;

    function note_value(value: in std_logic_vector(7 downto 0); flag: integer) return integer is
    begin
        if flag = 0 then
            case to_integer(unsigned(value(7 downto 0))) - 65 is
                when 2 =>
                    return 0;
                when 35 => 
                    return 1;
                when 3 => 
                    return 2;
                when 36 => 
                    return 3;
                when 4 => 
                    return 4;
                when 37 =>
                    return 4;
                when 5 => 
                    return 5;
                when 38 => 
                    return 6;
                when 6 => 
                    return 7;
                when 32 => 
                    return 8;
                when 0 => 
                    return 9;
                when 33 => 
                    return 10;
                when 1 => 
                    return 11;
                when 34 => 
                    return 11;
                when others =>
                    return -1;
            end case;
        else
            case to_integer(unsigned(value(7 downto 0))) - 65 is
                when 2 =>
                    return 1;
                when 3 => 
                    return 3;
                when 4 => 
                    return 5;
                when 5 => 
                    return 6;
                when 6 => 
                    return 8;
                when 0 => 
                    return 10;
                when 1 => 
                    return 0;
                when others =>
                    return -1; 
            end case;
        end if;
    end function;

    function note_binary(value: integer) return std_logic_vector is
    begin
        case value is
            when 0 =>
                return "01000011";
            when 1 =>
                return "01100100";
            when 2 =>
                return "01000100";
            when 3 =>
                return "01100101";
            when 4 =>
                return "01000101";
            when 5 =>
                return "01000110";
            when 6 =>
                return "01100111";
            when 7 =>
                return "01000111";
            when 8 =>
                return "01100001";
            when 9 =>
                return "01000001";
            when 10 =>
                return "01100010";
            when 11 =>
                return "01000010";
                
            when others =>
                return "00000000";
                
        
        end case;
    end function;


    

    function is_major(tail: integer; buffer1: integer_vector) return boolean is
        variable notevalue1,notevalue2,notevalue3 : integer;
    begin
         notevalue1 := buffer1(tail);
         notevalue2 := buffer1(tail+1);
         notevalue3 := buffer1(tail+2);
         if notevalue2 = ((notevalue1 + 4)mod 12) and  notevalue3 = ((notevalue2 +3)mod 12) then
            return true;
         end if;
         return false; 
    end function;

    function is_minor(tail: integer; buffer2: integer_vector) return boolean is
        variable notevalue1,notevalue2,notevalue3 : integer;
    begin
         notevalue1 := buffer2(tail);
         notevalue2 := buffer2(tail+1);
         notevalue3 := buffer2(tail+2);
         if notevalue2 = ((notevalue1 + 3)mod 12) and  notevalue3 = ((notevalue2 +4)mod 12) then
            return true;
         end if;
         return false; 
    end function;

    function is_suspended(tail: integer; buffer3: integer_vector) return boolean is
        variable notevalue1,notevalue2,notevalue3 : integer;
    begin
         notevalue1 := buffer3(tail);
         notevalue2 := buffer3(tail+1);
         notevalue3 := buffer3(tail+2);
         if notevalue2 = ((notevalue1 + 5)mod 12) and  notevalue3 = ((notevalue2 +2)mod 12) then
            return true;
         end if;
         return false; 
    end function;

    function is_seven(tail: integer; buffer4: integer_vector) return boolean is
        variable notevalue1,notevalue2,notevalue3,notevalue4 : integer;
    begin
         notevalue1 := buffer4(tail);
         notevalue2 := buffer4(tail+1);
         notevalue3 := buffer4(tail+2);
         notevalue4 := buffer4(tail+3);
         
         if notevalue2 = ((notevalue1 + 4)mod 12) and  notevalue3 = ((notevalue2 +3)mod 12) and notevalue4 = ((notevalue3 +3)mod 12) then
            return true; 
         end if;
         return false; 
    end function;

    
begin

    process(clk, rst)
    variable inputbuffer: buffer_type:= (others => (others => '0'));
    variable ans_vec: ans_type:= (others => (others => '0'));
    variable buffer_head, tempsize, ans_size, helper_size, size, check, state: integer := 0;
    variable chord_name: std_logic_vector(7 downto 0);
    variable helper_vector: integer_vector;
    variable hashtags: integer_vector:= (others => 0);
    constant MAJOR: std_logic_vector(7 downto 0) := "01001101";
    constant MINOR: std_logic_vector(7 downto 0) := "01101101";
    constant SUSPENDED: std_logic_vector(7 downto 0):= "01110011";
    constant SEVEN: std_logic_vector(7 downto 0) := "00110111";
    
    

    begin

        if clk = '1' and rst = '0' then
            inputbuffer(size) := a;
            if to_integer(unsigned(a)) = 31 then
                helper_size := helper_size-1;
                helper_vector(helper_size) := note_value(inputbuffer(size-1), 1);
                hashtags(helper_size) := 1;
            else
                helper_vector(helper_size) := note_value(a, 0);
            end if;
            helper_size := helper_size+1;       
            size := size+1;
        end if;
        
        if clk = '1' and rst = '1' then
            if check = 0 then
                tempsize := buffer_head;
                ans_size := 0;
                ans_vec(0) := "00000000";
                ans_vec(1) := "00000000";
                if buffer_head+3 < helper_size then
                                        
                    if is_seven(buffer_head,helper_vector) then
                        state:=5;
                        buffer_head := buffer_head+4;
                    elsif is_major(buffer_head,helper_vector) then
                        state:=2; 
                        buffer_head := buffer_head+3;
                    elsif is_minor(buffer_head,helper_vector) then
                        state :=3;
                        buffer_head := buffer_head+3;
                    elsif is_suspended(buffer_head,helper_vector) then
                        state :=4;
                        buffer_head := buffer_head+3;
                    else 
                        state := 6;
                        buffer_head := buffer_head+1;
                    end if;
                    if state = 2 then
                        data_valid <= '1'; 
                        check :=1;
                        chord_name := MAJOR;                    
                        ans_vec(ans_size) :=  note_binary(helper_vector(tempsize));
                        ans_size := ans_size + 1;
                        ans_vec(ans_size) := chord_name;
                        ans_size := 0;
                    end if;
                    if state = 3 then 
                        data_valid <= '1'; 
                        check :=1;
                        chord_name := MINOR;                    
                        ans_vec(ans_size) :=  note_binary(helper_vector(tempsize));
                        ans_size := ans_size + 1;
                        ans_vec(ans_size) := chord_name;
                        ans_size := 0;
                    end if;
                    if state = 4 then
                        data_valid <= '1'; 
                        check :=1;
                        chord_name := SUSPENDED;
                        ans_vec(ans_size) :=  note_binary(helper_vector(tempsize));
                        ans_size := ans_size + 1;
                        ans_vec(ans_size) := chord_name;
                        ans_size := 0;
                    end if;
                    if state = 5 then
                        data_valid <= '1'; 
                        check :=1;
                        chord_name := SEVEN;                    
                        ans_vec(ans_size) :=  note_binary(helper_vector(tempsize));
                        ans_size := ans_size + 1;
                        ans_vec(ans_size) := chord_name;
                        ans_size := 0;
                    end if;
                    if state = 6 then
                        data_valid <= '1'; 
                        check :=1;
                        if hashtags(tempsize) = 1 then
                            ans_vec(ans_size) :=  note_binary(helper_vector(tempsize)-1);
                            ans_size := ans_size + 1;
                            ans_vec(ans_size) :=  "00011111";
                            ans_size := ans_size + 1;
                        else
                            ans_vec(ans_size) :=  note_binary(helper_vector(tempsize));
                            ans_size := ans_size + 1;    
                        end if;
                        ans_size := 0;
                    end if;
                elsif buffer_head+2 < helper_size then
                    if is_major(buffer_head,helper_vector) then
                        state:=2; 
                        buffer_head := buffer_head+3;
                    elsif is_minor(buffer_head,helper_vector) then
                        state :=3;
                        buffer_head := buffer_head+3;
                    elsif is_suspended(buffer_head,helper_vector) then
                        state :=4;
                        buffer_head := buffer_head+3;
                    else 
                        state :=6;
                        buffer_head := buffer_head+1;
                    end if;
                    if state = 2 then
                        data_valid <= '1'; 
                        check :=1;
                        chord_name := MAJOR;                    
                        ans_vec(ans_size) :=  note_binary(helper_vector(tempsize));
                        ans_size := ans_size + 1;
                        ans_vec(ans_size) := chord_name;
                        ans_size := 0;
                    end if;
                    if state = 3 then 
                        data_valid <= '1'; 
                        check :=1;
                        chord_name := MINOR;                    
                        ans_vec(ans_size) :=  note_binary(helper_vector(tempsize));
                        ans_size := ans_size + 1;
                        ans_vec(ans_size) := chord_name;
                        ans_size := 0;
                    end if;
                    if state = 4 then
                        data_valid <= '1'; 
                        check :=1;
                        chord_name := SUSPENDED;
                        ans_vec(ans_size) :=  note_binary(helper_vector(tempsize));
                        ans_size := ans_size + 1;
                        ans_vec(ans_size) := chord_name;
                        ans_size := 0;
                    end if;
                    if state = 6 then
                        data_valid <= '1'; 
                        check :=1;
                        if hashtags(tempsize) = 1 then
                            ans_vec(ans_size) :=  note_binary(helper_vector(tempsize)-1);
                            ans_size := ans_size + 1;
                            ans_vec(ans_size) :=  "00011111";
                            ans_size := ans_size + 1;
                        else
                            ans_vec(ans_size) :=  note_binary(helper_vector(tempsize));
                            ans_size := ans_size + 1;    
                        end if;
                        ans_size := 0;
                    end if;

                elsif buffer_head < helper_size then
                    data_valid <= '1'; 
                    check :=1;
                    if hashtags(buffer_head) = 1 then
                        ans_vec(ans_size) :=  note_binary(helper_vector(buffer_head)-1);
                        ans_size := ans_size + 1;
                        ans_vec(ans_size) :=  "00011111";
                        ans_size := ans_size + 1;
                    else
                        
                        ans_vec(ans_size) :=  note_binary(helper_vector(buffer_head));
                        ans_size := ans_size + 1;    
                    end if;
                    buffer_head := buffer_head+1;
                    ans_size := 0;
                end if; 
            end if;
            if check = 1 then                
                if ans_size = 2 or ans_vec(ans_size) = "00000000" then
                    check := 0;
                    data_valid <= '0';
                end if;
                z <= ans_vec(ans_size);
                ans_size := ans_size+1;
            end if;
        end if;

    end process;
end architecture;
        ------------------------------------------------------------------------




