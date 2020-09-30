--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:48:28 03/26/2019
-- Design Name:   
-- Module Name:   C:/Users/ASUS/Desktop/DSD_lab/all code/test_4bitcomparator1/test_4bicomparator1_tb.vhd
-- Project Name:  test_4bitcomparator1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: test_4bitcomparator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY test_4bicomparator1_tb IS
END test_4bicomparator1_tb;
 
ARCHITECTURE behavior OF test_4bicomparator1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT test_4bitcomparator
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         aGb : OUT  std_logic;
         aLb : OUT  std_logic;
         aEb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal aGb : std_logic;
   signal aLb : std_logic;
   signal aEb : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: test_4bitcomparator PORT MAP (
          a => a,
          b => b,
          aGb => aGb,
          aLb => aLb,
          aEb => aEb
        );
		  
   -- Stimulus process
   stim_proc0: process
   begin		
      -- hold reset state for 100 ns.
      	
      a<= "0001";
		b<= "0000";
		--wait for 100 ns;
		 wait for 100 ns;	
      a<= "1010";
		b<= "1011";
		
		 wait for 100 ns;	
      a<= "0100";
		b<= "1000";
		
		 wait for 100 ns;	
      a<= "1111";
		b<= "1110";
		
		 wait for 100 ns;	
      a<= "1010";
		b<= "1010";
		
		 wait for 100 ns;	
      a<= "1011";
		b<= "0100";
		
		 wait for 100 ns;	
      a<= "1111";
		b<= "1110";
		
		 wait for 100 ns;	
      a<= "1010";
		b<= "1010";
     
   end process;

END;

--- 0000 0000 combination e L=1, E=1 ashe.. keno jani na
