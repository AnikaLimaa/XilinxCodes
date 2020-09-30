
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( a, b, c : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

begin
s<= a xor b xor c;
cout<= (a and b) or (b and c) or (c and a);

end Behavioral;

