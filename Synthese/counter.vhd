library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

entity compteur is
        port (clock, opt24, enable, init12 : in  std_logic;
              BCDu : out std_logic_vector (3 downto 0);
              BCDd : out std_logic_vector (3 downto 0)
	);
end entity compteur;

architecture synthetisable of compteur is
	--signal counter	        : natural range 0 to 24;
	signal final_number	: natural range 0 to 24;
	signal number		: natural range 0 to 24;
	signal unit         	: natural range 0 to 9;
	signal dec		: natural range 0 to 9;
begin
	COUNT : process (clock) is
	variable counter	: natural range 0 to 24;
	begin
	if (clock'event and clock = '1') then 	
		if (init12 = '1') then
		--if there init12 is pressed
			counter := 12;
		elsif (enable = '1') then 
			counter := counter + 1;
		end if;

		if counter = 24 then
			if opt24 = '1' then
				counter := 0;		
			else 
				counter := 12;
			end if;
		end if;

		if(opt24 = '0' and counter > 12) then
			final_number <= counter - 12;
		else
			final_number <= counter;
		end if;
	end if;
	end process COUNT;
unit <= final_number mod 10;
dec <= (final_number - unit) / 10 when (final_number >= 10) else
       0;
BCDu <= std_logic_vector(to_unsigned(unit, 4));
BCDd <= std_logic_vector(to_unsigned(dec, 4));
end synthetisable;
