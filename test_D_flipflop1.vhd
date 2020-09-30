
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_D_flipflop1 is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end test_D_flipflop1;

architecture Behavioral of test_D_flipflop1 is

begin
process(CLK, RESET)
begin
if( RESET='1') then 
Q<='0';
elsif(RESET='0' and CLK='1') then
Q<=D;
end if;
end process;



end Behavioral;

