
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_full_adder1 is
    Port ( a,b,c : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
end test_full_adder1;

architecture Behavioral of test_full_adder1 is

begin
s<=a xor b xor c;
cout<=(a and b) or (b and c) or (c and a);

end Behavioral;

