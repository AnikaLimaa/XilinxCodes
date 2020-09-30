LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_Alu_4_bit IS
END tb_Alu_4_bit;
 
ARCHITECTURE behavior OF tb_Alu_4_bit IS 
 
    COMPONENT Alu_4_bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         s : IN  std_logic_vector(2 downto 0);
         F : OUT  std_logic_vector(3 downto 0);
         CarryIn : IN  std_logic;
         CarryOut : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal s : std_logic_vector(2 downto 0) := (others => '0');
   signal CarryIn : std_logic := '0';

 	--Outputs
   signal F : std_logic_vector(3 downto 0);
   signal CarryOut : std_logic; 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu_4_bit PORT MAP (
          A => A,
          B => B,
          s => s,
          F => F,
          CarryIn => CarryIn,
          CarryOut => CarryOut
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      A <= "0010";
		B <= "0100";
		
		s <= "000";
		CarryIn <= '0';
		wait for 20 ns;
		s <= "000";
		CarryIn <= '1';
		wait for 20 ns;
		
		s <= "001";
		CarryIn <= '0';
		wait for 20 ns;
		s <= "001";
		CarryIn <= '1';
		wait for 20 ns;
		
		s <= "010";
		CarryIn <= '0';
		wait for 20 ns;
		s <= "010";
		CarryIn <= '1';
		wait for 20 ns;

      s <= "011";
		CarryIn <= '0';
		wait for 20 ns;
		s <= "011";
		CarryIn <= '1';
		wait for 20 ns;
		
		s <= "100";
		CarryIn <= '0';
		wait for 20 ns;
		s <= "100";
		CarryIn <= '1';
		wait for 20 ns;
		
		s <= "101";
		CarryIn <= '0';
		wait for 20 ns;
		s <= "101";
		CarryIn <= '1';
		wait for 20 ns;
		
		s <= "110";
		CarryIn <= '0';
		wait for 20 ns;
		s <= "110";
		CarryIn <= '1';
		wait for 20 ns;
		
		s <= "111";
		CarryIn <= '0';
		wait for 20 ns;
		s <= "111";
		CarryIn <= '1';
		wait for 20 ns;
		
		wait;
   end process;
	
END;
