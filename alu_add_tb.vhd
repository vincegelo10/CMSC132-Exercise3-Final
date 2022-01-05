library ieee; 
use ieee.std_logic_1164.all;

entity alu_add_tb is
end entity;

architecture sim of alu_add_tb is
	signal s: std_logic_vector(0 to 2);
	signal i, j, k: std_logic_vector(0 to 1);
	signal c: std_logic;
begin
	uut: entity work.alu(behavioral) port map(s,i,j,k,c);

	tester: process is
		variable error_count : integer := 0;
	begin

		s <= "100";
		i <= "00";
		j <= "00";

		wait for 10 ns;

		assert(k="00" and c ='0')
			report "Error on Test Case 0"
			severity error;

		if (not(k="00" and c ='0')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "00";
		j <= "01";

		wait for 10 ns;

		assert(k="01" and c ='0')
			report "Error on Test Case 1"
			severity error;

		if (not(k="01" and c ='0')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "00";
		j <= "10";

		wait for 10 ns;

		assert(k="10" and c ='0')
			report "Error on Test Case 2"
			severity error;

		if (not(k="10" and c ='0')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "00";
		j <= "11";

		wait for 10 ns;

		assert(k="11" and c ='0')
			report "Error on Test Case 3"
			severity error;

		if (not(k="11" and c ='0')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "01";
		j <= "00";

		wait for 10 ns;

		assert(k="01" and c ='0')
			report "Error on Test Case 4"
			severity error;

		if (not(k="01" and c ='0')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "01";
		j <= "01";

		wait for 10 ns;

		assert(k="10" and c ='0')
			report "Error on Test Case 5"
			severity error;

		if (not(k="10" and c ='0')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "01";
		j <= "10";

		wait for 10 ns;

		assert(k="11" and c ='0')
			report "Error on Test Case 6"
			severity error;

		if (not(k="11" and c ='0')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "01";
		j <= "11";

		wait for 10 ns;

		assert(k="00" and c ='1')
			report "Error on Test Case 7"
			severity error;

		if (not(k="00" and c ='1')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "10";
		j <= "00";

		wait for 10 ns;

		assert(k="10" and c ='0')
			report "Error on Test Case 8"
			severity error;

		if (not(k="10" and c ='0')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "10";
		j <= "01";

		wait for 10 ns;

		assert(k="11" and c ='0')
			report "Error on Test Case 9"
			severity error;

		if (not(k="11" and c ='0')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "10";
		j <= "10";

		wait for 10 ns;

		assert(k="00" and c ='1')
			report "Error on Test Case 10"
			severity error;

		if (not(k="00" and c ='1')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "10";
		j <= "11";

		wait for 10 ns;

		assert(k="01" and c ='1')
			report "Error on Test Case 11"
			severity error;

		if (not(k="01" and c ='1')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "11";
		j <= "00";

		wait for 10 ns;

		assert(k="11" and c ='0')
			report "Error on Test Case 12"
			severity error;

		if (not(k="11" and c ='0')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "11";
		j <= "01";

		wait for 10 ns;

		assert(k="00" and c ='1')
			report "Error on Test Case 13"
			severity error;

		if (not(k="00" and c ='1')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "11";
		j <= "10";

		wait for 10 ns;

		assert(k="01" and c ='1')
			report "Error on Test Case 14"
			severity error;

		if (not(k="01" and c ='1')) then
			error_count := error_count + 1;
		end if;

		s <= "100";
		i <= "11";
		j <= "11";

		wait for 10 ns;

		assert(k="10" and c ='1')
			report "Error on Test Case 15"
			severity error;

		if (not(k="10" and c ='1')) then
			error_count := error_count + 1;
		end if;

		if (error_count = 0) then
			report "ALU ADD Testbench: PASSED";
		else
			report "ALU ADD Testbench: FAILED";
		end if;
		wait;
	end process;
end sim;


