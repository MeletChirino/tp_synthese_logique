-- synopsys synthesis_off
   -- synopsys synthesis_on

library c18 ; use c18.all ;
library ieee;
use ieee.std_logic_1164.all;

entity compteur_DW_div_tc_0 is

   port( a : in std_logic_vector (7 downto 0);  b : in std_logic_vector (4 
         downto 0);  quotient : out std_logic_vector (7 downto 0);  remainder :
         out std_logic_vector (4 downto 0);  divide_by_0 : out std_logic);

end compteur_DW_div_tc_0;

architecture SYN_rpl of compteur_DW_div_tc_0 is

   component INVXL
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND2X3
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND2XL
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component IMUX2X1
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component MUX2X2
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component AND2X3
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKINVX4
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNOR2X2
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2X6
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component MUX2X1
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal quotient_0_port, u_div_SumTmp_1_2_port, u_div_CryTmp_1_3_port, n1, n2
      , n3, n4, n5, n6, n7, n8, n9, n10, quotient_1_port, n12, n13, n14, n_1010
      , n_1011, n_1012, n_1013, n_1014, n_1015 : std_logic;

begin
   quotient <= ( n_1010, n_1011, n_1012, n_1013, n_1014, n_1015, 
      quotient_1_port, quotient_0_port );
   
   U1 : MUX2X1 port map( A => a(3), B => u_div_SumTmp_1_2_port, S => 
                           quotient_1_port, Q => n9);
   U2 : OR2X6 port map( A => a(2), B => a(3), Q => u_div_CryTmp_1_3_port);
   U3 : NAND2XL port map( A => n1, B => n12, Q => n8);
   U4 : XNOR2X2 port map( A => a(2), B => a(3), Q => u_div_SumTmp_1_2_port);
   U5 : NAND2X3 port map( A => a(4), B => u_div_CryTmp_1_3_port, Q => n2);
   U6 : XOR2X1 port map( A => n13, B => u_div_CryTmp_1_3_port, Q => n10);
   U7 : INVXL port map( A => a(4), Q => n13);
   U8 : NAND2XL port map( A => a(1), B => n2, Q => n5);
   U9 : CLKINVX4 port map( A => n2, Q => quotient_1_port);
   U10 : AND2X3 port map( A => n5, B => n6, Q => n1);
   U11 : MUX2X2 port map( A => n13, B => n10, S => quotient_1_port, Q => n3);
   U12 : AND2X2 port map( A => a(4), B => a(1), Q => n4);
   U13 : IMUX2X1 port map( A => a(2), B => n14, S => quotient_1_port, Q => n12)
                           ;
   U14 : NAND2XL port map( A => u_div_CryTmp_1_3_port, B => n4, Q => n6);
   U15 : NAND2X3 port map( A => n8, B => n9, Q => n7);
   U16 : NAND2X3 port map( A => n7, B => n3, Q => quotient_0_port);
   U17 : INVXL port map( A => a(2), Q => n14);

end SYN_rpl;

library c18 ; use c18.all ;
library ieee;
use ieee.std_logic_1164.all;

entity decodeur_1 is

   port( BCD : in std_logic_vector (3 downto 0);  segments : out 
         std_logic_vector (6 downto 0));

end decodeur_1;

architecture SYN_combinatoire of decodeur_1 is

   component AO31X1
      port( A1, A2, A3, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component AO221X1
      port( A1, A2, B1, B2, C1 : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKINVX2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component OA21X2
      port( A1, A2, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OR3X3
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component INVXL
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2X3
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR2X3
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND2XL
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INVX12
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AND2X3
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND3X3
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component OA21X3
      port( A1, A2, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component INVX3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKBUFX24
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component XNOR2X2
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INVX16
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   signal segments_6_port, segments_5_port, segments_4_port, n29, 
      segments_0_port, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, 
      segments_1_port, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, 
      n24, n25, n26, segments_3_port, segments_2_port : std_logic;

begin
   segments <= ( segments_6_port, segments_5_port, segments_4_port, 
      segments_3_port, segments_2_port, segments_1_port, segments_0_port );
   
   U1 : INVX16 port map( A => n2, Q => segments_1_port);
   U2 : INVX16 port map( A => n5, Q => segments_2_port);
   U3 : XNOR2X2 port map( A => BCD(2), B => BCD(1), Q => n26);
   U4 : NAND2XL port map( A => n7, B => n8, Q => segments_5_port);
   U5 : CLKBUFX24 port map( A => n29, Q => segments_0_port);
   U6 : CLKINVX2 port map( A => n15, Q => n29);
   U7 : INVXL port map( A => BCD(0), Q => n16);
   U8 : INVX3 port map( A => BCD(2), Q => n21);
   U9 : OA21X3 port map( A1 => BCD(0), A2 => n21, B1 => n19, Q => n14);
   U10 : NAND3X3 port map( A => BCD(2), B => n24, C => n17, Q => n2);
   U11 : NOR2X3 port map( A => n20, B => n16, Q => n13);
   U12 : AND2X3 port map( A => n9, B => n24, Q => n3);
   U13 : AND2X3 port map( A => n26, B => n25, Q => n4);
   U14 : NAND2XL port map( A => n21, B => n3, Q => n5);
   U15 : INVX12 port map( A => n6, Q => segments_6_port);
   U16 : NAND2XL port map( A => n24, B => n4, Q => n6);
   U17 : OR2X3 port map( A => BCD(0), B => n20, Q => n25);
   U18 : NAND2XL port map( A => n22, B => n24, Q => n7);
   U19 : NAND2XL port map( A => n23, B => n24, Q => n8);
   U20 : INVXL port map( A => n19, Q => n23);
   U21 : NOR2X3 port map( A => BCD(0), B => n20, Q => n9);
   U22 : CLKINVX2 port map( A => BCD(1), Q => n20);
   U23 : OR2X2 port map( A => BCD(2), B => n16, Q => n19);
   U24 : NOR2X3 port map( A => n20, B => n10, Q => n11);
   U25 : OR2X3 port map( A => n11, B => n13, Q => n22);
   U26 : INVXL port map( A => n21, Q => n10);
   U27 : OR3X3 port map( A => BCD(1), B => BCD(3), C => n14, Q => n15);
   U28 : OR2X1 port map( A => n20, B => n16, Q => n18);
   U29 : OA21X2 port map( A1 => BCD(0), A2 => BCD(1), B1 => n18, Q => n17);
   U30 : CLKINVX2 port map( A => BCD(3), Q => n24);
   U31 : AO221X1 port map( A1 => n23, A2 => n20, B1 => BCD(0), B2 => n24, C1 =>
                           segments_0_port, Q => segments_4_port);
   U32 : AO31X1 port map( A1 => n13, A2 => BCD(2), A3 => n24, B1 => 
                           segments_0_port, Q => segments_3_port);

end SYN_combinatoire;

library c18 ; use c18.all ;
library ieee;
use ieee.std_logic_1164.all;

entity decodeur_0 is

   port( BCD : in std_logic_vector (3 downto 0);  segments : out 
         std_logic_vector (6 downto 0));

end decodeur_0;

architecture SYN_combinatoire of decodeur_0 is

   component AO22X1
      port( A1, A2, B1, B2 : in std_logic;  Q : out std_logic);
   end component;
   
   component INVXL
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR2XL
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AO22X3
      port( A1, A2, B1, B2 : in std_logic;  Q : out std_logic);
   end component;
   
   component AO21X3
      port( A1, A2, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component AO21X1
      port( A1, A2, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OA221X1
      port( A1, A2, B1, B2, C1 : in std_logic;  Q : out std_logic);
   end component;
   
   component INVX12
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKINVX2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND2XL
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AND3X3
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component AO32X3
      port( A1, A2, A3, B1, B2 : in std_logic;  Q : out std_logic);
   end component;
   
   component AND2X3
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR2X6
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AND3X4
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component AND2X4
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   signal n19, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, 
      n16 : std_logic;

begin
   
   U1 : AND2X4 port map( A => n11, B => n10, Q => segments(4));
   U2 : AND3X4 port map( A => n12, B => n15, C => n2, Q => segments(2));
   U3 : NOR2X6 port map( A => BCD(0), B => n9, Q => n2);
   U4 : AND2X3 port map( A => n3, B => n5, Q => segments(0));
   U5 : AO32X3 port map( A1 => n3, A2 => n12, A3 => BCD(0), B1 => n4, B2 => n8,
                           Q => segments(3));
   U6 : AND3X3 port map( A => n16, B => n15, C => n14, Q => segments(6));
   U7 : NAND2XL port map( A => n7, B => n4, Q => n19);
   U8 : CLKINVX2 port map( A => BCD(1), Q => n9);
   U9 : NOR2XL port map( A => BCD(1), B => BCD(3), Q => n3);
   U10 : INVX12 port map( A => n19, Q => segments(1));
   U11 : OA221X1 port map( A1 => BCD(0), A2 => n13, B1 => BCD(1), B2 => n12, C1
                           => n15, Q => segments(5));
   U12 : XNOR2X1 port map( A => BCD(1), B => BCD(2), Q => n16);
   U13 : OR2X1 port map( A => BCD(0), B => n9, Q => n14);
   U14 : AND2X1 port map( A => BCD(1), B => n12, Q => n13);
   U15 : AO21X1 port map( A1 => BCD(2), A2 => n9, B1 => BCD(0), Q => n11);
   U16 : INVXL port map( A => BCD(2), Q => n12);
   U17 : INVXL port map( A => BCD(0), Q => n6);
   U18 : AO21X3 port map( A1 => n12, A2 => n9, B1 => n15, Q => n10);
   U19 : INVXL port map( A => n8, Q => n7);
   U20 : AO22X3 port map( A1 => BCD(2), A2 => n6, B1 => BCD(0), B2 => n12, Q =>
                           n5);
   U21 : NOR2XL port map( A => BCD(3), B => n12, Q => n4);
   U22 : INVXL port map( A => BCD(3), Q => n15);
   U23 : AO22X1 port map( A1 => n6, A2 => n9, B1 => BCD(0), B2 => BCD(1), Q => 
                           n8);

end SYN_combinatoire;

library c18 ; use c18.all ;
library ieee;
use ieee.std_logic_1164.all;

entity compteur is

   port( clock, opt24, enable, init12 : in std_logic;  BCDu, BCDd : out 
         std_logic_vector (3 downto 0));

end compteur;

architecture SYN_synthetisable of compteur is

   component AO21X2
      port( A1, A2, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND2X3
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AND2X6
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component LOGIC1
      port( Q : out std_logic);
   end component;
   
   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component INVXL
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND3X3
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI31X2
      port( A1, A2, A3, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI21X3
      port( A1, A2, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI21X1
      port( A1, A2, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI21X3
      port( A1, A2, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND2XL
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR2X3
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI21X1
      port( A1, A2, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component OA21X2
      port( A1, A2, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component XNOR2X2
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI21X6
      port( A1, A2, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component AO21X1
      port( A1, A2, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component AO22X2
      port( A1, A2, B1, B2 : in std_logic;  Q : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND2X2
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AND2X3
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKINVX2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component HAX3
      port( A, B : in std_logic;  CO, SUM : out std_logic);
   end component;
   
   component AO31X3
      port( A1, A2, A3, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component INVX3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component OA31X3
      port( A1, A2, A3, B1 : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2X3
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AO221X1
      port( A1, A2, B1, B2, C1 : in std_logic;  Q : out std_logic);
   end component;
   
   component AO22X3
      port( A1, A2, B1, B2 : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR3X3
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR2X4
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component IMUX2X4
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component IMUX2X6
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI211X6
      port( A1, A2, B1, C1 : in std_logic;  Q : out std_logic);
   end component;
   
   component DFX2
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component compteur_DW_div_tc_0
      port( a : in std_logic_vector (7 downto 0);  b : in std_logic_vector (4 
            downto 0);  quotient : out std_logic_vector (7 downto 0);  
            remainder : out std_logic_vector (4 downto 0);  divide_by_0 : out 
            std_logic);
   end component;
   
   signal X_Logic1_port, N9, N10, N11, N12, N38, N43, N44, N55, N56, N57, N61, 
      N62, N63, N64, X_Logic0_port, N67, N68, n46, n50, n51, n52, n53, n56_port
      , n57_port, n58, n59, n60, n61_port, n62_port, n63_port, n64_port, n65, 
      n66, n1, n2, n3, n4, n5, n6, n7, n8, n9_port, n10_port, n11_port, 
      n12_port, n13, n14, n15, n16, n17, n18, n19, n21, n22, n23, n24, n25, n26
      , n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38_port, n39, 
      n40, n41, n42, n43_port, n44_port, n45, n47, n49, n54, n55_port, n67_port
      , n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029,
      n_1030, n_1031, n_1032, n_1033 : std_logic;
   
   signal BCDd_port : std_logic_vector(1 downto 0);
   
   signal counter : std_logic_vector(3 downto 0);
   
   signal final_number : std_logic_vector(4 downto 0);
   
   signal add_27_carry : std_logic_vector(2 downto 2);

begin
   BCDd <= ( X_Logic0_port, X_Logic0_port, BCDd_port(1), BCDd_port(0) );
   
   div_46 : compteur_DW_div_tc_0 port map( a(7) => X_Logic0_port, a(6) => 
                           X_Logic0_port, a(5) => X_Logic0_port, a(4) => N64, 
                           a(3) => N63, a(2) => N62, a(1) => N61, a(0) => 
                           X_Logic0_port, b(4) => X_Logic0_port, b(3) => 
                           X_Logic1_port, b(2) => X_Logic0_port, b(1) => 
                           X_Logic1_port, b(0) => X_Logic0_port, quotient(7) =>
                           n_1022, quotient(6) => n_1023, quotient(5) => n_1024
                           , quotient(4) => n_1025, quotient(3) => n_1026, 
                           quotient(2) => n_1027, quotient(1) => N68, 
                           quotient(0) => N67, remainder(4) => n_1028, 
                           remainder(3) => n_1029, remainder(2) => n_1030, 
                           remainder(1) => n_1031, remainder(0) => n_1032, 
                           divide_by_0 => n_1021);
   counter_reg_4_inst : DFX2 port map( D => N38, CP => clock, Q => n21, QN => 
                           n46);
   counter_reg_1_inst : DFX2 port map( D => N44, CP => clock, Q => counter(1), 
                           QN => n52);
   final_number_reg_0_inst : DFX2 port map( D => N43, CP => clock, Q => BCDu(0)
                           , QN => n_1033);
   counter_reg_0_inst : DFX2 port map( D => N43, CP => clock, Q => counter(0), 
                           QN => n53);
   counter_reg_2_inst : DFX2 port map( D => n49, CP => clock, Q => counter(2), 
                           QN => n51);
   counter_reg_3_inst : DFX2 port map( D => n54, CP => clock, Q => counter(3), 
                           QN => n50);
   final_number_reg_2_inst : DFX2 port map( D => N55, CP => clock, Q => 
                           final_number(2), QN => n29);
   final_number_reg_3_inst : DFX2 port map( D => N56, CP => clock, Q => 
                           final_number(3), QN => n30);
   final_number_reg_4_inst : DFX2 port map( D => N57, CP => clock, Q => 
                           final_number(4), QN => n31);
   final_number_reg_1_inst : DFX2 port map( D => N44, CP => clock, Q => 
                           final_number(1), QN => n28);
   U3 : OAI211X6 port map( A1 => N43, A2 => N44, B1 => n54, C1 => n49, Q => 
                           n55_port);
   U4 : IMUX2X6 port map( A => n50, B => n61_port, S => n57_port, Q => n54);
   U5 : CLKINVX2 port map( A => n49, Q => n34);
   U6 : IMUX2X4 port map( A => n51, B => n58, S => n57_port, Q => n49);
   U7 : NAND2X3 port map( A => n4, B => n5, Q => N10);
   U8 : NOR2X4 port map( A => n56_port, B => n22, Q => n7);
   U9 : CLKINVX2 port map( A => n15, Q => N61);
   U10 : NOR3X3 port map( A => n53, B => N9, C => N10, Q => n66);
   U11 : NAND2XL port map( A => n33, B => n10_port, Q => n11_port);
   U12 : XNOR2X1 port map( A => n27, B => n34, Q => N55);
   U13 : OAI21X3 port map( A1 => n35, A2 => n34, B1 => n27, Q => n24);
   U14 : AO22X3 port map( A1 => N9, A2 => n7, B1 => n22, B2 => counter(1), Q =>
                           N44);
   U15 : INVX3 port map( A => N38, Q => n33);
   U16 : AO22X2 port map( A1 => n7, A2 => n53, B1 => n22, B2 => counter(0), Q 
                           => N43);
   U17 : CLKINVX2 port map( A => n54, Q => n35);
   U18 : AND2X3 port map( A => n13, B => n44_port, Q => N62);
   U19 : OA21X2 port map( A1 => final_number(1), A2 => n17, B1 => n41, Q => n13
                           );
   U20 : AO21X1 port map( A1 => final_number(1), A2 => n30, B1 => 
                           final_number(2), Q => n9_port);
   U21 : AND2X3 port map( A => n28, B => n32, Q => n17);
   U22 : NAND2XL port map( A => n29, B => n1, Q => n41);
   U23 : AO221X1 port map( A1 => n28, A2 => n29, B1 => n28, B2 => 
                           final_number(4), C1 => n30, Q => n47);
   U24 : NAND2X3 port map( A => counter(2), B => n3, Q => n4);
   U25 : XNOR2X2 port map( A => n30, B => n38_port, Q => n6);
   U26 : OR2X3 port map( A => n9_port, B => n40, Q => n38_port);
   U27 : OA31X3 port map( A1 => n30, A2 => n16, A3 => n17, B1 => n41, Q => n15)
                           ;
   U28 : AND2X3 port map( A => n14, B => n29, Q => n16);
   U29 : INVX3 port map( A => n31, Q => n32);
   U30 : NAND2X3 port map( A => n63_port, B => n64_port, Q => n59);
   U31 : AO31X3 port map( A1 => n66, A2 => N11, A3 => N12, B1 => n62_port, Q =>
                           n63_port);
   U32 : HAX3 port map( A => counter(1), B => counter(0), CO => add_27_carry(2)
                           , SUM => N9);
   U33 : AND2X3 port map( A => n62_port, B => n59, Q => n22);
   U34 : NAND2XL port map( A => n11_port, B => n12_port, Q => N57);
   U35 : NAND2XL port map( A => N38, B => n24, Q => n12_port);
   U36 : INVXL port map( A => n24, Q => n10_port);
   U37 : NAND2XL port map( A => n27, B => n49, Q => n23);
   U38 : AND2X3 port map( A => N68, B => n43_port, Q => BCDd_port(1));
   U39 : AND2X6 port map( A => N67, B => n43_port, Q => BCDd_port(0));
   U40 : NAND2X3 port map( A => n18, B => n19, Q => BCDu(1));
   U41 : CLKINVX2 port map( A => final_number(4), Q => n40);
   U42 : NOR2X3 port map( A => final_number(3), B => n40, Q => n1);
   U43 : AND2X3 port map( A => counter(2), B => add_27_carry(2), Q => n2);
   U44 : NAND2X3 port map( A => counter(3), B => n2, Q => n8);
   U45 : NAND2X2 port map( A => n51, B => add_27_carry(2), Q => n5);
   U46 : INVXL port map( A => add_27_carry(2), Q => n3);
   U47 : XNOR2X1 port map( A => n50, B => n2, Q => N11);
   U48 : XNOR2X2 port map( A => n6, B => n39, Q => N63);
   U49 : AO22X2 port map( A1 => n22, A2 => n21, B1 => N12, B2 => n7, Q => N38);
   U50 : AO21X1 port map( A1 => final_number(3), A2 => n28, B1 => n32, Q => 
                           n44_port);
   U51 : NAND2XL port map( A => n28, B => N61, Q => n19);
   U52 : NAND2XL port map( A => final_number(1), B => n15, Q => n18);
   U53 : NAND2XL port map( A => final_number(1), B => n40, Q => n14);
   U54 : AOI21X6 port map( A1 => n55_port, A2 => n33, B1 => opt24, Q => n27);
   U55 : AND2X1 port map( A => n47, B => n45, Q => BCDu(3));
   U56 : XNOR2X2 port map( A => n8, B => n21, Q => N12);
   U57 : OA21X2 port map( A1 => final_number(3), A2 => final_number(2), B1 => 
                           n32, Q => N64);
   U58 : AOI21X1 port map( A1 => N10, A2 => n59, B1 => n60, Q => n58);
   U59 : AOI21X1 port map( A1 => N11, A2 => n59, B1 => n60, Q => n61_port);
   U60 : NOR2X3 port map( A => enable, B => init12, Q => n62_port);
   U61 : OAI21X1 port map( A1 => n40, A2 => final_number(2), B1 => 
                           final_number(3), Q => n37);
   U62 : XOR2X1 port map( A => n35, B => n23, Q => N56);
   U63 : NAND2XL port map( A => n62_port, B => n59, Q => n57_port);
   U64 : NAND2XL port map( A => n59, B => n67_port, Q => n56_port);
   U65 : AOI21X3 port map( A1 => n25, A2 => n44_port, B1 => n26, Q => BCDu(2));
   U66 : OAI21X1 port map( A1 => final_number(3), A2 => n28, B1 => n32, Q => 
                           n25);
   U67 : XOR2X1 port map( A => n29, B => n32, Q => n26);
   U68 : OAI21X3 port map( A1 => opt24, A2 => n59, B1 => n67_port, Q => n60);
   U69 : OAI31X2 port map( A1 => n65, A2 => n50, A3 => n46, B1 => n62_port, Q 
                           => n64_port);
   U70 : NAND3X3 port map( A => n52, B => n51, C => n53, Q => n65);
   U71 : NAND3X1 port map( A => n29, B => final_number(1), C => n32, Q => n36);
   U72 : INVXL port map( A => init12, Q => n67_port);
   U73 : LOGIC0 port map( Q => X_Logic0_port);
   U74 : LOGIC1 port map( Q => X_Logic1_port);
   U75 : AND2X6 port map( A => n47, B => n45, Q => n39);
   U76 : NAND2X3 port map( A => n37, B => n36, Q => n45);
   U77 : OR2X2 port map( A => final_number(1), B => final_number(2), Q => n42);
   U78 : AO21X2 port map( A1 => n42, A2 => final_number(3), B1 => n32, Q => 
                           n43_port);

end SYN_synthetisable;

library c18 ; use c18.all ;
library ieee;
use ieee.std_logic_1164.all;

entity montre is

   port( clock, opt24, enable, init12 : in std_logic;  seg_u, seg_d : out 
         std_logic_vector (6 downto 0));

end montre;

architecture SYN_rtl of montre is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component CLKINVX4
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component INVX3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKINVX32
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKINVX24
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKINVX6
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component INVX16
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component BUFX16
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component BUFX32
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKBUFX4
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKBUFX32
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component decodeur_1
      port( BCD : in std_logic_vector (3 downto 0);  segments : out 
            std_logic_vector (6 downto 0));
   end component;
   
   component decodeur_0
      port( BCD : in std_logic_vector (3 downto 0);  segments : out 
            std_logic_vector (6 downto 0));
   end component;
   
   component compteur
      port( clock, opt24, enable, init12 : in std_logic;  BCDu, BCDd : out 
            std_logic_vector (3 downto 0));
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n4, n5, n9, n10, n12, 
      n14, n16, n17, n_1034, n_1035 : std_logic;
   
   signal BCDu : std_logic_vector(3 downto 0);
   
   signal BCDd : std_logic_vector(1 downto 0);

begin
   
   Compteur_1_to_12_or_0_to_23 : compteur port map( clock => clock, opt24 => 
                           opt24, enable => enable, init12 => init12, BCDu(3) 
                           => BCDu(3), BCDu(2) => BCDu(2), BCDu(1) => BCDu(1), 
                           BCDu(0) => BCDu(0), BCDd(3) => n_1034, BCDd(2) => 
                           n_1035, BCDd(1) => BCDd(1), BCDd(0) => BCDd(0));
   Decodeur_4bits_to_7segments_dizaines : decodeur_0 port map( BCD(3) => n9, 
                           BCD(2) => n9, BCD(1) => BCDd(1), BCD(0) => BCDd(0), 
                           segments(6) => n21, segments(5) => n22, segments(4) 
                           => n23, segments(3) => n24, segments(2) => n25, 
                           segments(1) => seg_d(1), segments(0) => n26);
   Decodeur_4bits_to_7segments_unites : decodeur_1 port map( BCD(3) => BCDu(3),
                           BCD(2) => BCDu(2), BCD(1) => BCDu(1), BCD(0) => 
                           BCDu(0), segments(6) => seg_u(6), segments(5) => n18
                           , segments(4) => n19, segments(3) => n20, 
                           segments(2) => seg_u(2), segments(1) => seg_u(1), 
                           segments(0) => seg_u(0));
   U1 : CLKBUFX32 port map( A => n23, Q => seg_d(4));
   U2 : CLKBUFX32 port map( A => n21, Q => seg_d(6));
   U3 : CLKBUFX32 port map( A => n4, Q => seg_d(5));
   U4 : CLKBUFX4 port map( A => n22, Q => n4);
   U5 : BUFX32 port map( A => n25, Q => seg_d(2));
   U6 : BUFX16 port map( A => n18, Q => seg_u(5));
   U7 : CLKINVX32 port map( A => n14, Q => seg_d(0));
   U8 : INVX16 port map( A => n17, Q => n5);
   U9 : CLKINVX32 port map( A => n5, Q => seg_d(3));
   U10 : CLKINVX6 port map( A => n16, Q => n17);
   U11 : CLKINVX4 port map( A => n20, Q => n12);
   U12 : CLKINVX24 port map( A => n12, Q => seg_u(3));
   U13 : CLKINVX4 port map( A => n19, Q => n10);
   U14 : CLKINVX32 port map( A => n10, Q => seg_u(4));
   U15 : INVX3 port map( A => n24, Q => n16);
   U16 : CLKINVX4 port map( A => n26, Q => n14);
   U17 : LOGIC0 port map( Q => n9);

end SYN_rtl;
-- synopsys synthesis_off
-- synopsys synthesis_on
-- synopsys synthesis_off
-- synopsys synthesis_on
-- synopsys synthesis_off
-- synopsys synthesis_on
-- synopsys synthesis_off
-- synopsys synthesis_on
-- synopsys synthesis_off
-- synopsys synthesis_on
