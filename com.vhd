
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity com is
port(
a:in std_logic_vector(3 downto 0);
b:out std_logic_vector(3 downto 0)
);
end com;

architecture Behavioral of com is

begin
b(0)<=not a(0);
b(1)<=not a(1);
b(2)<=not a(2);
b(3)<=not a(3);
--port map(a(0),b(0));
--port map(a(1),b(1));
--port map(a(2),b(2));
--port map(a(3),b(3));

end Behavioral;

