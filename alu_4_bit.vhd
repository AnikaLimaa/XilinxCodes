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