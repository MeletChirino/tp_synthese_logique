library ieee;
use ieee.std_logic_1164.all;

entity decodeur is
	port(
		BCD		: in std_logic_vector(3 downto 0);
		segments	: out std_logic_vector(6 downto 0)
	);
end entity;

architecture combinatoire of decodeur is
begin
	with BCD select segments <=
		"1111110" when x"0",
		"0110000" when x"1",
		"1101101" when x"2",
		"1111001" when x"3",
		"0110011" when x"4",
		"1011011" when x"5",
		"1011111" when x"6",
		"1110000" when x"7",
		"1111111" when x"8",
		"1110011" when x"9",
		"0000000" when others;
end combinatoire;
