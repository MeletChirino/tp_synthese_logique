library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use std.textio.all;
-------------------------------------------------
entity no_partage is
    port (
	A : in integer range 0 to 15;
	B : in integer range 0 to 15;
	C : in integer range 0 to 15;
	S : in std_logic;
	X : out integer range 0 to 15
	);
end no_partage;
-------------------------------------------------
architecture rtl of no_partage is
begin
process(A, B, C)
--partage interdit
	variable Op1 : integer range 0 to 15;
	variable Op2 : integer range 0 to 15;
	begin
	Op1 := A + B;
	Op2 := A+ C;
	if S = '1' then
		X <= Op1;
	else
		X <= Op2;
	end if;
end process;
end rtl;
-------------------------------------------------
