library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Alu_4_bit is
	port ( A : in std_logic_vector(3 downto 0);
			 B : in std_logic_vector(3 downto 0);
			 s : in std_logic_vector(2 downto 0);
			 F : out std_logic_vector(3 downto 0);
			 CarryIn : in std_logic;
			 CarryOut : out std_logic);
end Alu_4_bit;

architecture Structural of Alu_4_bit is 
	component Full_Adder port ( A : in std_logic;
										 B : in std_logic;
										 CarryIn : in std_logic;
										 S : out std_logic;
										 CarryOut: out std_logic);
	end component;
	
	signal c1, c2, c3: std_logic;
	signal A0, A1, A2, A3, B0, B1, B2, B3, Z0, Z1, Z2, Z3: std_logic;

	begin
		
		A0 <= A(0) or (s(2) and (not(s(1))) and (not s(0)) and B(0)) or (s(2) and s(1) and (not s(0)) and (not B(0)));
		B0 <= (s(0) and B(0)) or (s(1) and (not B(0)));
		Z0 <= (not s(2)) and CarryIn;

		FA1 : Full_Adder port map(A0, B0, Z0, F(0), c1);
		
		A1 <= A(1) or (s(2) and (not(s(1))) and (not s(0)) and B(1)) or (s(2) and s(1) and (not s(0)) and (not B(1)));
		B1 <=(s(0) and B(1)) or (s(1) and (not B(1)));
		Z1 <=(not s(2))and c1;
		
		FA2 : Full_Adder port map(A1, B1, Z1, F(1), c2);

		A2 <= A(2) or (s(2) and (not(s(1))) and (not s(0)) and B(2)) or (s(2) and s(1) and (not s(0)) and (not B(2)));
		B2 <=(s(0) and B(2)) or (s(1) and (not B(2)));
		Z2 <=(not s(2)) and c2;

		FA3 : Full_Adder port map(A2, B2, Z2, F(2), c3);
		
		A3 <= A(3) or (s(2) and (not(s(1))) and (not s(0)) and B(3)) or (s(2) and s(1) and (not s(0)) and (not B(3)));
		B3 <=(s(0) and B(3)) or (s(1) and (not B(3)));
		Z3 <=(not s(2))and c3;
		
		FA4 : Full_Adder port map(A3, B3, Z3, F(3), CarryOut);
		
end Structural;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Full_Adder is
	port ( A : in STD_LOGIC;
			 B : in STD_LOGIC;
			 CarryIn : in STD_LOGIC;
			 S: out STD_LOGIC;
			 CarryOut : out STD_LOGIC);
end Full_Adder;

architecture fa_arc of Full_Adder is
	begin
		S <= A xor B xor CarryIn;
		CarryOut <= (A and B) or (CarryIn and A) or (B and CarryIn);
end fa_arc;


