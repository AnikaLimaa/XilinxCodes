--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:19:05 01/17/2019
-- Design Name:   
-- Module Name:   D:/Adder/Adder_tb.vhd
-- Project Name:  Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Adder_tb IS
END Adder_tb;
 
ARCHITECTURE behavior OF Adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder
    PORT(
         B : IN  std_logic_vector(3 downto 0);
         A : IN  std_logic_vector(3 downto 0);
         C0 : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         C4 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal C0 : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal C4 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder PORT MAP (
          B => B,
          A => A,
          C0 => C0,
          S => S,
          C4 => C4
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   process begin
	C0 <= '0';
	A(0) <= '0' ; A(1) <='1'; A(2)<='0' ;A(3)<='1';
	B(0) <= '1' ; B(1) <='0'; B(2)<='0'; B(3)<='0';
	wait for 1 ns;
	
	C0 <= '1';
	A(0) <= '1' ; A(1) <='0'; A(2)<='0' ;A(3)<='1';
	B(0) <= '1' ; B(1) <='1'; B(2)<='0'; B(3)<='1';
	wait for 1 ns;
	
	
	
	
	
   end process;

END;
