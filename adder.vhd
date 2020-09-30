
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity hALF_ADDER is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end hALF_ADDER;

architecture Behavioral of hALF_ADDER is

begin
   S<=X XOR Y;
	C<= X AND Y;


end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FA_1 is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end FA_1;

architecture Structural of FA_1 is
    component hALF_ADDER
	  port(X,Y :in std_logic;
	       S,C :out std_logic);
	  end component;
	  signal hs,hc,tc:std_logic;
begin
   HA1:hALF_ADDER
	port map(X,Y,hs,hc);
	 HA2:hALF_ADDER
	port map(hs,Z,S,tc);
	c<=tc or hc;


end Structural;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder is
   port(B,A : in std_logic_vector(3 downto 0);
	C0:in std_logic;
	S: out std_logic_vector(3 downto 0);
	C4: out std_logic);
  
end adder;

architecture Structural of adder is
component FA_1
port(X,Y,Z: in std_logic;
S,C: out std_logic;
end component;
signal C: std_logic_vector(4 downto 0);
begin
 Bit0: FA_1
 port map ( B(0),A(0),C(0),S(0),C(1));
 Bit1: FA_1
 port map ( B(1),A(1),C(1),S(1),C(2));
 Bit2: FA_1
 port map ( B(2),A(2),C(2),S(2),C(3));
 Bit3: FA_1
 port map ( B(3),A(3),C(3),S(3),C(4));
 C(0)<=C0;
 C4<=C(4);

end Structural;

