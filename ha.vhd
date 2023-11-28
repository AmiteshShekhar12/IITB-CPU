library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity halfadder is
	port(A,B: in std_logic; S,C: out std_logic);
end entity halfadder;

architecture struct of halfadder is
	component XOR_using_NAND is
		port(A,B: in std_logic; Y: out std_logic);
	end component XOR_using_NAND;
	signal s1: std_logic;
begin
	
	x1: XOR_using_NAND port map(A=>A, B=>B, Y=>S);
	a1: NAND_2 port map (A=>A, B=>B, Y=>s1);
	a2: NAND_2 port map (A=>s1, B=>s1, Y=>C);
	
end struct;
