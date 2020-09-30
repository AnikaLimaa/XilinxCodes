
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_halfadder1 is
    Port ( a, b : in  STD_LOGIC;
           s, c : out  STD_LOGIC);
end test_halfadder1;

architecture Behavioral of test_halfadder1 is

begin
s<= a xor b;
c<= a and b;

end Behavioral;

