library ieee;
use 	ieee.std_logic_1164.all;
use 	ieee.numeric_std.all;

entity compteur is
        port (clock, opt24, enable, init12 : in  std_logic;
              BCDu : out std_logic_vector (3 downto 0);
              BCDd : out std_logic_vector (3 downto 0)
	);
end entity compteur;

architecture rtl of compteur is
	signal counter		: natural range 0 to 24;
	signal final_number	: natural range 0 to 24;
	signal number		: natural range 0 to 24;
	signal unit         	: natural range 0 to 9;
	signal dec		: natural range 0 to 9;
begin
	COUNT : process (clock, counter) is

	begin
	if (clock'event and clock = '1') then 		
		if (init12'event and init12 = '1') then
		--if there init12 is pressed
			counter <= 12;
		elsif (enable = '1') then 
			counter <= counter + 1;
		end if;
	end if;
	if counter = 24 then
		counter <= 0;		
	end if;
	number <= counter;
	end process COUNT;
final_number <= number - 12 when (opt24 = '0' and counter > 12) else
		number when (opt24 = '0' and 12 >= counter) else
		number when (opt24 = '1');
unit <= final_number mod 10;
dec <= (final_number - unit) / 10 when (final_number >= 10) else
       0;
BCDu <= std_logic_vector(to_unsigned(unit, 4));
BCDd <= std_logic_vector(to_unsigned(dec, 4));
end rtl;
