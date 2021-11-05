library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use std.textio.all;
-------------------------------------------------
entity afficheur is
    port (clock : in std_logic;
          low   : in std_logic_vector;
          up    : in std_logic_vector);
end afficheur;
-------------------------------------------------
architecture sortie_standard of afficheur is

    function HH(b: std_logic) return string is
    begin
        if b='1' then
            return "__";
        else
            return "  ";
        end if;
    end;

    function VV(b: std_logic) return string is
    begin
        if b='1' then
            return "|";
        else
            return " ";
        end if;
    end;

begin
    rafraichir : process(clock)
        -- affichage des deux digits :
        --    ___    ___
        --   | 0 |  |   |
        --  1|___|2 |___|
        --   | 3 |  |   |
        --  4|___|5 |___|
        --     6
        variable ligne: LINE;
    begin
        write(ligne, string'(" ")&HH(low(0))
                    &string'("    ")&HH(up(0)));
        writeline(OUTPUT, ligne);
        write(ligne, VV(low(1))&string'("  ")&VV(low(2))
                    &string'("  ")
                    &VV(up(1))&string'("  ")&VV(up(2)));
        writeline(OUTPUT, ligne);
        write(ligne, VV(low(1))&HH(low(3))&VV(low(2))
                    &string'("  ")
                    &VV(up(1))&HH(up(3))&VV(up(2)));
        writeline(OUTPUT, ligne);
        write(ligne, VV(low(4))&string'("  ")&VV(low(5))
                    &string'("  ")
                    &VV(up(4))&string'("  ")&VV(up(5)));
        writeline(OUTPUT, ligne);
        write(ligne, VV(low(4))&HH(low(6))&VV(low(5))
                    &string'("  ")
                    &VV(up(4))&HH(up(6))&VV(up(5)));
        writeline(OUTPUT, ligne);
    end process rafraichir;
end sortie_standard;
-------------------------------------------------
