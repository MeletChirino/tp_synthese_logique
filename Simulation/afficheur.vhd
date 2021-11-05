-- Modele d'un afficheur pour test  E.T 1999
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use std.textio.all;
-------------------------------------------------
entity afficheur is
    port (clock : in std_logic;
          low   : in std_logic_vector(6 downto 0);
          up    : in std_logic_vector(6 downto 0));
end afficheur;
-------------------------------------------------
architecture sortie_standard of afficheur is

    function HH(b: std_logic) return string is
    begin
        if b='1' then
            return "  ";
        else
            return "__";
        end if;
    end;

    function VV(b: std_logic) return string is
    begin
        if b='1' then
            return " ";
        else
            return "|";
        end if;
    end;

begin
    rafraichir : process
        -- affichage des deux digits :
        --    ___    ___
        --   | a |  |   |
        --  f|___|b |___|
        --   | g |  |   |
        --  e|___|c |___|
        --     d
        variable ligne: LINE;
    begin
    	wait until clock='0'; -- modif N.N pour rafraichissement sur
				-- front descendant de la clock (1999)
	write(ligne, string'(" ")&HH(low(0))
                    &string'("    ")&HH(up(0)));
        writeline(OUTPUT, ligne);
        write(ligne, VV(low(5))&string'("  ")&VV(low(1))
                    &string'("  ")
                    &VV(up(5))&string'("  ")&VV(up(1)));
        writeline(OUTPUT, ligne);
        write(ligne, VV(low(5))&HH(low(6))&VV(low(1))
                    &string'("  ")
                    &VV(up(5))&HH(up(6))&VV(up(1)));
        writeline(OUTPUT, ligne);
        write(ligne, VV(low(4))&string'("  ")&VV(low(2))
                    &string'("  ")
                    &VV(up(4))&string'("  ")&VV(up(2)));
        writeline(OUTPUT, ligne);
        write(ligne, VV(low(4))&HH(low(3))&VV(low(2))
                    &string'("  ")
                    &VV(up(4))&HH(up(3))&VV(up(2)));
        writeline(OUTPUT, ligne);
    end process rafraichir;
end sortie_standard;
-------------------------------------------------
