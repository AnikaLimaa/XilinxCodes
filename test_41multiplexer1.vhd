
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_41multiplexer1 is
    Port ( a, b,c, d : in  STD_LOGIC;
           s1, s0 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end test_41multiplexer1;

architecture Behavioral of test_41multiplexer1 is

begin
y<= (not s1 and not s0 and a) or (not s1 and s0 and b) or (s1 and not s0 and c) or (s1 and s0 and d);


end Behavioral;

