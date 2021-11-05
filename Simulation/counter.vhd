use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity compteur is
        port (clock, opt24, enable, init12 : in  std_logic;
              BCDu : out std_logic_vector (3 downto 0);
              BCDd : out std_logic_vector (3 downto 0));
	);
end entity compteur;

architecture rtl of compteur is
	variable counter	: integer range 0 to 24;
begin
	COUNT : process (clock) is

	begin
	if (clock'event and clock = '1') then 		
		if init12 = '1' then
		--if there init12 is pressed
			counter := 12;
		else if (enable = '1') then 
			counter <= counter + 1;
		end if;
	end if;
	if counter = 24 then
		counter = 0;		
	end if;
	end process COUNT;
 BCDu <= counter - 12 when (opt24 = '0' and counter > 12);
 BCDd <= ;
end rtl;
