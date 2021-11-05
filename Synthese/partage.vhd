library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use std.textio.all;
-------------------------------------------------
entity partage is
    port (
	A : in integer range 0 to 15;
	B : in integer range 0 to 15;
	C : in integer range 0 to 15;
	S : in std_logic;
	X : out integer range 0 to 15
	);
end partage;
-------------------------------------------------
architecture rtl of partage is
begin
process(A, B, C)
--partage force
	variable Op1 : integer range 0 to 15;
	variable Op2 : integer range 0 to 15;
	begin
	if S = '1' then
		Op1 := A;
		Op2 := B;
	else 
		Op1 := A;
		Op2 := C;
	end if;
X <= Op1 + Op2;
end process;
end rtl;
-------------------------------------------------
