--Test bench for counter device
library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

entity tb is
end entity tb;

architecture test of tb is
	component compteur
        port (	
		clock, opt24, enable, init12 : in  std_logic;
		BCDu : out std_logic_vector (3 downto 0);
              	BCDd : out std_logic_vector (3 downto 0)
		);
	end component;
	signal clk	: std_logic := '0';
	signal opt24	: std_logic := '0';
	signal enable	: std_logic := '0';
	signal init12	: std_logic := '0';
begin 
	device		: compteur port map(
			clock 	=> clk,
			opt24	=> opt24,
			init12	=> init12,
			enable	=> enable
		);
	process begin
		init12 <= '1';
		wait for 1 ns;
		init12 <= '0';
		opt24 <= '0';
		init12 <= '1';
		wait for 1 ns;
		init12 <= '0';
		for i in 0 to 4 loop
			wait for 1 ns;
			clk <= not clk;
		end loop;
		init12 <= '1';
		wait for 1 ns;
		init12 <= '0';
		enable <= '1';
		for i in 0 to 34 loop
			wait for 1 ns;
			clk <= not clk;
		end loop;
		init12 <= '1';
		wait for 1 ns;
		init12 <= '0';
		for i in 0 to 28 loop
			wait for 1 ns;
			clk <= not clk;
		end loop;
	end process;

end test;
