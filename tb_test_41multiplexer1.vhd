
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_test_41multiplexer1 IS
END tb_test_41multiplexer1;
 
ARCHITECTURE behavior OF tb_test_41multiplexer1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT test_41multiplexer1
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         s1 : IN  std_logic;
         s0 : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal s1 : std_logic := '0';
   signal s0 : std_logic := '0';

 	--Outputs
   signal y : std_logic;
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: test_41multiplexer1 PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          s1 => s1,
          s0 => s0,
          y => y
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
	
	a <= '1'; 
	b <= '0'; 
	c <= '1'; 
	d <= '0';
      s1<='0'; s0<='0';
      wait for 100 ns;	
		
		s1<='0'; s0<='1';

       wait for 100 ns;	
		
		s1<='1'; s0<='0';
 wait for 100 ns;	
		
		s1<='1'; s0<='1';
wait for 100 ns;	
		
		
   end process;

END;

-- input abcd nd s1 s0 vector form eo nite partam

