library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter is
	Port( clk : in STD_LOGIC;
			reset : in STD_LOGIC;
			count : out STD_LOGIC_VECTOR (3 downto 0));
end Counter;

architecture Behavioral of Counter is
signal count_int : std_logic_vector(3 downto 0);
begin
	
	process (clk, reset)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				count_int <= x"0";
			else
				count_int <= count_int + x"1";
			end if;
		end if;
	
	end process;

count <= count_int;

end Behavioral;