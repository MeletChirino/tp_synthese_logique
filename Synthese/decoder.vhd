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
		"1000000" when x"0",
		"1111001" when x"1",
		"0100100" when x"2",
		"0110000" when x"3",
		"0011001" when x"4",
		"0010010" when x"5",
		"0000010" when x"6",
		"1111000" when x"7",
		"0000000" when x"8",
		"0010000" when x"9",
		"0000000" when others;
end combinatoire;
