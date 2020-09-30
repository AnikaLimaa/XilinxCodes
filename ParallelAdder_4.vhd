
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity half_adder is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           s : out  STD_LOGIC;
           c : out  STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is

begin
	s <= x xor y;
	c <= x and y;

end Behavioral;

library ieee;
use ieee.std_logic_1164.all;
entity FullAdder_using_HA is
  port (x,y,z : in std_logic;
  s,c : out std_logic);
 end FullAdder_using_HA;
 architecture struc_Behavioral of FullAdder_using_HA is
	component half_adder
		port (x,y : in std_logic;
				s,c : out std_logic);
	end component;
	signal hs,hc,tc: std_logic;
		begin
		HA1: half_adder
		port map (x,y,hs,hc);
		HA2: half_adder
		port map (hs, z, s, tc);
	c <= tc or hc;
end struc_Behavioral;
  

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity ParallelAdder_4 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C0 : in  STD_LOGIC;
           C4 : out  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end ParallelAdder_4;

architecture Behavioral of ParallelAdder_4 is
component FullAdder_using_HA
	port(x,y,z: in std_logic;
			s,c: out std_logic);
end component;
signal C: std_logic_vector(4 downto 0);
begin
Bit0: FullAdder_using_HA
port map(B(0),A(0),C(0),S(0),C(1));
Bit1: FullAdder_using_HA
port map(B(1),A(1),C(1),S(1),C(2));
Bit2: FullAdder_using_HA
port map(B(2),A(2),C(2),S(2),C(3));
Bit3: FullAdder_using_HA
port map(B(3),A(3),C(3),S(3),C(4));
C(0)<=C0;
C4<=C(4);


end Behavioral;

