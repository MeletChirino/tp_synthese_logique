library ieee;
use ieee.std_logic_1164.all;
---------------------------------------------------------------------
entity montre is
        port (
	      	clock, opt24, enable, init12 	: in  std_logic;
		seg_u, seg_d 			: out std_logic_vector(6 downto 0)
	);
end montre;
---------------------------------------------------------------------
architecture rtl of montre is

    -- Le compteur

    component compteur
        port (clock, opt24, enable, init12 : in  std_logic;
              BCDu : out std_logic_vector (3 downto 0);
              BCDd : out std_logic_vector (3 downto 0));
    end component;
          
    -- Le décodeur

    component decodeur
        port (BCD      : in  std_logic_vector (3 downto 0);
              segments : out std_logic_vector (6 downto 0));
    end component;
  
    -- Déclarations de signaux

    signal BCDu,  BCDd  : std_logic_vector (3 downto 0); 
                                        -- 2x4 bits du code BCD 

begin
    Compteur_1_to_12_or_0_to_23 : 
    compteur  port map (
    	clock => clock,
       	opt24 => opt24,
       	enable => enable,
       	init12 => init12,
       	BCDu => BCDu,
	BCDd => BCDd);

    Decodeur_4bits_to_7segments_dizaines :
    decodeur  port map (
    	BCD => BCDd,
	segments => seg_d);

    Decodeur_4bits_to_7segments_unites :
    decodeur  port map (
    	BCD => BCDu,
	segments => seg_u);

end rtl;

