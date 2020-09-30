

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity com2s is
port(
a:in std_logic_vector(3 downto 0);
b:out std_logic_vector(3 downto 0)

);
end com2s;

architecture Behavioral of com2s is

begin

		b <= ((a NAND '1') + '1');

	end process;

end Behavioral;