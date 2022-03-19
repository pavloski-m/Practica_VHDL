library IEEE;
use IEEE.std_logic_1164.all;

entity neg_tb is
end;

architecture neg_tb_arq of neg_tb is

	component neg is
		port(
			a_i: in std_logic;
			b_o: out std_logic
		);
	end component;

	signal a_tb: std_logic := '0';
	signal b_tb: std_logic;
	
begin

	DUT: neg
		port map(
			a_i => a_tb,
			b_o => b_tb
		);

	a_tb <= '1' after 250 ns, '0' after 800 ns;

end;