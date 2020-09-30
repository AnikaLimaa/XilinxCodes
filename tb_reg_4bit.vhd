--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:50:45 03/26/2018
-- Design Name:   
-- Module Name:   D:/SOFTWARE/PROGRAMMING/4-2 Lab/Xiling/LAB2/reg_4bit/tb_reg_4bit.vhd
-- Project Name:  reg_4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg_4bit
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
 
ENTITY tb_reg_4bit IS
END tb_reg_4bit;
 
ARCHITECTURE behavior OF tb_reg_4bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg_4bit
    PORT(
         D : IN  std_logic_vector(3 downto 0);
         --CLK : IN  std_logic;
         --CLEAR : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(3 downto 0) := "0000";
   --signal CLK : std_logic := '0';
   --signal CLEAR : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
	shared variable simulation_end : boolean := false;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_4bit PORT MAP (
          D => D,
          --CLK => CLK,
          --CLEAR => CLEAR,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		
		while simulation_end = false loop
			--CLK <= not CLK;
			wait for CLK_period/2;
		end loop;
		wait;
		
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		D <= "0000";
		D<=not D;
		wait for CLK_period*1.5;

		D <= "1010";
		D<=not D;
		wait for CLK_period*2.5;
		
		--CLEAR <= '1';
		
		D <= "0101";
		D<=not D;
		wait for CLK_period*1.5;
		
		D <= "1100";
		D<=not D;
		wait for CLK_period*2.5;
		
		simulation_end := true;
		
      wait;
   end process;

END;
