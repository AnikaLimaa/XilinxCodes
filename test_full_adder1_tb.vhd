LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using

 
ENTITY test_full_adder1_tb IS
END test_full_adder1_tb;
 
ARCHITECTURE behavior OF test_full_adder1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT test_full_adder1
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         s : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: test_full_adder1 PORT MAP (
          a => a,
          b => b,
          c => c,
          s => s,
          cout => cout
        );

  

   -- Stimulus process
   stim_proc0: process
   begin		
      -- hold reset state for 100 ns.
		
		a<= not a;
      wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 

      --wait;
   end process;
	
	 stim_proc1: process
   begin		
      -- hold reset state for 100 ns.
		
		b<= not b;
      wait for 50 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 

      --wait;
   end process;
	
	 stim_proc2: process
   begin		
      -- hold reset state for 100 ns.
		
		c<= not c;
      wait for 25 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 

      --wait;
   end process;
	

END;
