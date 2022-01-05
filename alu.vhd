library ieee; use ieee.std_logic_1164.all;

entity alu is
	port(
	s: in std_logic_vector(0 to 2);
	i, j: in std_logic_vector(0 to 1);
	k: out std_logic_vector(0 to 1);
	c: out std_logic
	);
end entity;

architecture behavioral of alu is
begin
	process is
	begin
		wait on s, i, j;
		if s = "000" then
			k <= i and j;
			c <= '0';
		elsif s = "001" then
			k <= i or j;
			c <= '0';
		elsif s = "010" then
			k <= i xor j;
			c <= '0';
		elsif s = "011" then
			k <= not i;
			c <= '0';
		elsif s = "100" then
			k(0) <= (not i(0) and not i(1) and j(0)) or (not i(0) and i(1) and not j(0) and j(1)) or (not i(0) and j(0) and not j(1)) or (i(0) and not i(1) and not j(0)) or (i(0) and not j(0) and not j(1)) or (i(0) and i(1) and j(0) and j(1));
			k(1) <= i(1) xor j(1);
			c <= (i(1) and j(0) and j(1)) or (i(0) and j(0)) or (i(0) and i(1) and j(1));
		elsif s = "101" then
			k(0) <= (not i(0) and not i(1) and not j(0)) or (not i(0) and not j(0) and j(1)) or (not i(0) and i(1) and j(0) and not j(1)) or (i(0) and not i(1) and j(0)) or (i(0) and i(1) and not j(0) and not j(1)) or (i(0) and j(0) and j(1));
			k(1) <= i(1) xnor j(1);
			c <= (i(1) and not j(0) and not j(1)) or (i(0) and not j(0)) or (i(0) and i(1) and not j(1));
		elsif s = "110" then
			k(0) <=  (not i(0) and not i(1) and not j(0) and j(1)) or (not i(0) and j(0) and not j(1)) or (not i(0) and i(1) and j(0)) or (i(0) and not j(0) and not j(1)) or (i(0) and not i(1) and j(0) and j(1)) or (i(0) and i(1) and not j(0));
			k(1) <= i(1) xor j(1);
			c <=  (not j(0) and not j(1)) or (i(1) and not j(0)) or (i(0) and not j(0)) or (i(0) and not j(1)) or (i(0) and i(1));
		elsif s = "111" then
			k(0) <= i(0) xor i(1);
			k(1) <= not i(1);
			c <= i(0) and i(1);

		end if;
	end process;
end architecture;
