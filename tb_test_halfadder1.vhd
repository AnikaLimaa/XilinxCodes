
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tb_test_halfadder1 IS
END tb_test_halfadder1;
 
ARCHITECTURE behavior OF tb_test_halfadder1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT test_halfadder1
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         s : OUT  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: test_halfadder1 PORT MAP (
          a => a,
          b => b,
          s => s,
          c => c
        );

  
 

   -- Stimulus process
   stim_proc0: process
   begin	

      wait for 100 ns;

       a<= not a;		

   end process;

 stim_proc1: process
   begin	

      wait for 50 ns;

       b<= not b;		

   end process;


END;
