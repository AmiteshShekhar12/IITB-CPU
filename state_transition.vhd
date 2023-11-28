library ieee;
use ieee.std_logic_1164.all;

entity state_transition is
	port(op_code: in std_logic_vector(3 downto 0);
			state: in std_logic_vector(4 downto 0);
			clk: in std_logic;
			reset: in std_logic;
			out_state: out std_logic_vector(4 downto 0));
end entity state_transition;

architecture struct of state_transition is

	signal next_st,y_present: std_logic_vector(4 downto 0);

begin
	
	p:process(clk)
	begin
	
		if (clk'event and clk='1' and reset='0') then
			y_present<=next_st;
			out_state<=next_st;
		end if;
		
		if (reset='1') then
			y_present<="11111";
			out_state<="11111";
		end if;
		
	end process p;
	
	p1:process(y_present,op_code)
	begin
		
		case y_present is
		
			when "11111"=>--!!reset state!!
				
				next_st<="00001"; --s1, initial state
			
			when "00001"=> --!!state 1!!
			
				if  (op_code="0000" or op_code="0010" or op_code="0011" or op_code="0100" or op_code="0101" or op_code="0110" or op_code="1011" or op_code="1100") then
					next_st<="00010"; -- R, SW, BEQ, 2nd state, S2
					
				elsif (op_code="1001") then
					next_st<="00111"; --LLI, 2nd state, S7
				
				elsif (op_code="1000") then
					next_st<="00110"; --LHI, 2nd state, s6
				
				elsif (op_code="0001") then
					next_st<="00101"; --ADI, 2nd state, s5
					
				elsif (op_code="1101") then
					next_St<="01111"; --JAL, 2nd state, s15
					
				elsif (op_code="1010" or op_code="1111") then
					next_St<="01000"; --JLR, LW,2nd state s8
				end if;
				
					
			when "01111"=>--!!state 15!!
			
				next_st<="10000"; --JAL 3rd state, s16
				
			
			when "00101"=>--!!state 5!!
			
				next_st<="10011"; --ADI 3rd state, s19
				
			
			when "10011"=>--!!state 19!!
				
				next_st<="10100"; --ADI 4th state, s20
				
			
			when "00010"=> --!!state 2!!
			
				if (op_code ="1100") then 
					next_st<="01101"; --BEQ state 3, s13
				
				elsif (op_code="0000" or op_code="0010" or op_code="0011" or op_code="0100" or op_code="0101" or op_code="0110") then 
					next_st<="00011"; --R state 3, s3
					
				elsif (op_code="1011") then 
					next_st<="01001"; --SW,LW state 3, s9
				end if;
			
			
			when "01000"=>--!!state 8!!
			
				if(op_code="1010") then
					next_st<="01001"; --LW,SW state 3, s9
					
				elsif(op_code="1111") then
					next_st<="10001"; --JLR state 3, s17
				end if;
				
			
			when "01101"=>--!!state 13!!
			
				next_st<="01110"; --BEQ 4th state, s14
			
			
			when "00011"=>--!!state 3!!
			
				next_st<="00100"; --R 4th state, s4
				
				
			when "01001"=>--!!state 9!!
			
				if (op_code="1011") then
					next_st<="01100"; --SW 4th state, s12
					
				elsif (op_code="1010") then
					next_st<="01010"; --LW 4th state, s10
				end if;
				
				
			when "01010"=>--!!state 10!!
				
				next_st<="01011"; --LW 5th state, s11
			
			
			when "10000"|"10001"|"01100"|"01011"|"00100"|"01110"|"10100"|"00110"|"00111" =>--!!all last states!!
			
				next_st<="00001";--s1, initial state
			
			
			when others=>
			
				next_st<="00001";--unused states mappped to initial state
				
		end case;
	end process p1;
end struct;
				