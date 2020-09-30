
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity paralleladder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C0 : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           C4 : out  STD_LOGIC);
end paralleladder;

architecture Behavioral of paralleladder is

signal C: std_logic_vector(4 downto 0);

component full_adder is 
Port ( a, b, c : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
			  end component;

begin

FA1 : full_adder port map(B(0), A(0), C(0), S(0), C(1) );
FA2 : full_adder port map(B(1), A(1), C(1), S(1), C(2) );
FA3 : full_adder port map(B(2), B(2), C(2), S(2), C(3) );
FA4 : full_adder port map(A(3), B(3), C(3), S(3), C(4) );

C(0)<= C0;  --- important line
C4<=C(4);   --- C0 is an input, so er value C(0) e use hbe...bt C4 itself is an output,unknown value. so C(4)<=C4 ei statement vul.
 

end Behavioral;

