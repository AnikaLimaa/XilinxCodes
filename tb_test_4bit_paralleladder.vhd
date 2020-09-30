
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY tb_test_4bit_paralleladder IS
END tb_test_4bit_paralleladder;
 
ARCHITECTURE behavior OF tb_test_4bit_paralleladder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT paralleladder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C0 : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         C4 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C0 : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal C4 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: paralleladder PORT MAP (
          A => A,
          B => B,
          C0 => C0,
          S => S,
          C4 => C4
        );
		  
   -- Stimulus process
	stim_proc: process
	begin
	C0<='0'; A<="0000"; B<="0000"; wait for 50 ns;
	C0<='1'; A<="0000"; B<="0000"; wait for 50 ns;
	C0<='1'; A<="0101"; B<="1101"; wait for 50 ns;
	end process;
	
   
	
END;


--- same input sevaral process e initialize kora jabe na. all input can be in one or separated process.. abar, same input same process e several time initialize kora jabe, wait for x ns die separate korte hbe.

--  perfect Alhamdulillah!! 


