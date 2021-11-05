library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use std.textio.all;
-------------------------------------------------
entity parenthese is
    port (
	A : in integer range 0 to 3;
	B : in integer range 0 to 3;
	C : in integer range 0 to 3;
	D : in integer range 0 to 3;
	S1 : out integer range 0 to 3;
	S2 : out integer range 0 to 3
	);
end parenthese;
-------------------------------------------------
architecture rtl of parenthese is
begin
S1 <= A+B+C+D; 
S2 <= (A+B)+(C+D);
end rtl;
-------------------------------------------------
