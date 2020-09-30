----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:38:50 03/26/2018 
-- Design Name: 
-- Module Name:    reg_4bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg_4bit is
    Port ( D : in  STD_LOGIC_VECTOR(3 downto 0);
			  --CLK : in  STD_LOGIC;
           --CLEAR : in  STD_LOGIC;
			  Q : out  STD_LOGIC_VECTOR(3 downto 0));
end reg_4bit;

architecture Structural of reg_4bit is component DF
    Port ( D : in STD_LOGIC;
			  --CLK : in STD_LOGIC;
			  --RESET: in STD_LOGIC;
			  Q : out STD_LOGIC);
	 end component;

	begin
	
	df0 : DF port map (D(0), Q(0));
	df1 : DF port map (D(1), Q(1));
	df2 : DF port map (D(2),  Q(2));
	df3 : DF port map (D(3),  Q(3));
	
end Structural;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DF is
    Port ( D : in STD_LOGIC;
			  --CLK : in STD_LOGIC;
			  --RESET: in STD_LOGIC;
			  Q : out STD_LOGIC);
end DF;

architecture Behavioral of DF is 

	
	begin
		
			D<=not D;	
	

end Behavioral;