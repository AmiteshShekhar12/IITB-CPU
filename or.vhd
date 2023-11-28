library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity OR_using_NAND is
	port(A,B: in std_logic; Y: out std_logic);
end entity OR_using_NAND;

architecture struct of OR_using_NAND is
	signal s1,s2 : std_logic;
begin
	nand1: NAND_2 port map(A=>A, B=>A, Y=>s1);
	nand2: NAND_2 port map(A=>B, B=>B, Y=>s2);
	nand3: NAND_2 port map(A=>s2, B=>s1, Y=>Y);
end struct;
