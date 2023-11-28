library ieee;
use ieee.std_logic_1164.all;

entity Testbench is
end entity;

architecture struct of Testbench is

	component ALU is
		port(IP_in, T1_in, T2_in, SE6_in, LS_in: in std_logic_vector(15 downto 0);
				state:in std_logic_vector(4 downto 0);
				op_code: in std_logic_vector(3 downto 0);
				output_c: out std_logic_vector(15 downto 0);
				ALU_Z: out std_logic);
	end component;
	
	signal IP_in, T1_in, T2_in, SE6_in, LS_in, output_c:std_logic_vector(15 downto 0);
	signal state:std_logic_vector(4 downto 0);
	signal op_code:std_logic_vector(3 downto 0);
	signal ALU_Z:std_logic;
	signal ip,t1,t2,se6,ls,outp:INTEGER;
begin

	state<="00011";
	op_code<="0010", "0011" after 10ns, "0100" after 20ns, "0101" after 30ns, "0110" after 40ns;
	IP_in<="0000000000001111";
	T1_in<="0010111100000100";
	T2_in<="0000001110101100";
	SE6_in<="0000000000111101";
	LS_in<="0101010010101100";
	
	ald: ALU port map(IP_in=>IP_in, T1_in=>T1_in, T2_in=>T2_in, SE6_in=>SE6_in, LS_in=>LS_in, state=>state, op_code=>op_code, output_c=>output_c, ALU_Z=>ALU_Z);

end struct;