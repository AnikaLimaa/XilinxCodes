
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY ParralelAdder_4_TB IS
END ParralelAdder_4_TB;
 
ARCHITECTURE behavior OF ParralelAdder_4_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ParallelAdder_4
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C0 : IN  std_logic;
         C4 : OUT  std_logic;
         S : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C0 : std_logic := '0';

 	--Outputs
   signal C4 : std_logic;
   signal S : std_logic_vector(3 downto 0);
   
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ParallelAdder_4 PORT MAP (
          A => A,
          B => B,
          C0 => C0,
          C4 => C4,
          S => S
        );

   

   -- Stimulus process
   stim_proc: process
   begin	
		wait for 10 ns;
	C0 <= '0';
	A(0)<= '0'; A(1)<= '1'; A(2)<= '0'; A(3)<= '1';
	B(0)<= '1'; B(1)<= '1'; B(2)<= '0'; B(3)<= '0';
	wait for 10 ns;
	C0 <= '0';
	A(0)<= '0'; A(1)<= '1'; A(2)<= '1'; A(3)<= '0';
	B(0)<= '1'; B(1)<= '0'; B(2)<= '0'; B(3)<= '0';
	wait for 10 ns;
	C0 <= '0';
	A(0)<= '0'; A(1)<= '1'; A(2)<= '1'; A(3)<= '1';
	B(0)<= '1'; B(1)<= '0'; B(2)<= '1'; B(3)<= '1';

	wait for 10 ns;
     
   end process;

END;
