-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/26/2023 15:56:47"

-- 
-- Device: Altera 10M40DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	IP_in : IN std_logic_vector(15 DOWNTO 0);
	T1_in : IN std_logic_vector(15 DOWNTO 0);
	T2_in : IN std_logic_vector(15 DOWNTO 0);
	SE6_in : IN std_logic_vector(15 DOWNTO 0);
	LS_in : IN std_logic_vector(15 DOWNTO 0);
	state : IN std_logic_vector(4 DOWNTO 0);
	op_code : IN std_logic_vector(3 DOWNTO 0);
	output_c : OUT std_logic_vector(15 DOWNTO 0);
	ALU_Z : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- IP_in[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[5]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[6]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[8]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[10]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[11]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[12]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[13]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IP_in[15]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[0]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[1]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[6]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[7]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[8]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[9]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[10]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[11]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[12]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[13]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[14]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1_in[15]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[4]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[5]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[8]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[9]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[10]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[11]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[13]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[14]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2_in[15]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[7]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[8]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[9]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[10]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[11]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[12]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[13]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[14]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE6_in[15]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[3]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[4]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[7]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[8]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[9]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[10]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[11]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[12]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[13]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[14]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LS_in[15]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[3]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_code[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[1]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[4]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[7]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[8]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[9]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[10]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[11]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[12]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[13]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[14]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_c[15]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Z	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IP_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_T1_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_T2_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SE6_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_LS_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_state : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_op_code : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output_c : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ALU_Z : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \IP_in[0]~input_o\ : std_logic;
SIGNAL \IP_in[1]~input_o\ : std_logic;
SIGNAL \IP_in[2]~input_o\ : std_logic;
SIGNAL \IP_in[3]~input_o\ : std_logic;
SIGNAL \IP_in[4]~input_o\ : std_logic;
SIGNAL \IP_in[5]~input_o\ : std_logic;
SIGNAL \IP_in[6]~input_o\ : std_logic;
SIGNAL \IP_in[7]~input_o\ : std_logic;
SIGNAL \IP_in[8]~input_o\ : std_logic;
SIGNAL \IP_in[9]~input_o\ : std_logic;
SIGNAL \IP_in[10]~input_o\ : std_logic;
SIGNAL \IP_in[11]~input_o\ : std_logic;
SIGNAL \IP_in[12]~input_o\ : std_logic;
SIGNAL \IP_in[13]~input_o\ : std_logic;
SIGNAL \IP_in[14]~input_o\ : std_logic;
SIGNAL \IP_in[15]~input_o\ : std_logic;
SIGNAL \T1_in[0]~input_o\ : std_logic;
SIGNAL \T1_in[1]~input_o\ : std_logic;
SIGNAL \T1_in[2]~input_o\ : std_logic;
SIGNAL \T1_in[3]~input_o\ : std_logic;
SIGNAL \T1_in[4]~input_o\ : std_logic;
SIGNAL \T1_in[5]~input_o\ : std_logic;
SIGNAL \T1_in[6]~input_o\ : std_logic;
SIGNAL \T1_in[7]~input_o\ : std_logic;
SIGNAL \T1_in[8]~input_o\ : std_logic;
SIGNAL \T1_in[9]~input_o\ : std_logic;
SIGNAL \T1_in[10]~input_o\ : std_logic;
SIGNAL \T1_in[11]~input_o\ : std_logic;
SIGNAL \T1_in[12]~input_o\ : std_logic;
SIGNAL \T1_in[13]~input_o\ : std_logic;
SIGNAL \T1_in[14]~input_o\ : std_logic;
SIGNAL \T1_in[15]~input_o\ : std_logic;
SIGNAL \T2_in[0]~input_o\ : std_logic;
SIGNAL \T2_in[1]~input_o\ : std_logic;
SIGNAL \T2_in[2]~input_o\ : std_logic;
SIGNAL \T2_in[3]~input_o\ : std_logic;
SIGNAL \T2_in[4]~input_o\ : std_logic;
SIGNAL \T2_in[5]~input_o\ : std_logic;
SIGNAL \T2_in[6]~input_o\ : std_logic;
SIGNAL \T2_in[7]~input_o\ : std_logic;
SIGNAL \T2_in[8]~input_o\ : std_logic;
SIGNAL \T2_in[9]~input_o\ : std_logic;
SIGNAL \T2_in[10]~input_o\ : std_logic;
SIGNAL \T2_in[11]~input_o\ : std_logic;
SIGNAL \T2_in[12]~input_o\ : std_logic;
SIGNAL \T2_in[13]~input_o\ : std_logic;
SIGNAL \T2_in[14]~input_o\ : std_logic;
SIGNAL \T2_in[15]~input_o\ : std_logic;
SIGNAL \SE6_in[0]~input_o\ : std_logic;
SIGNAL \SE6_in[1]~input_o\ : std_logic;
SIGNAL \SE6_in[2]~input_o\ : std_logic;
SIGNAL \SE6_in[3]~input_o\ : std_logic;
SIGNAL \SE6_in[4]~input_o\ : std_logic;
SIGNAL \SE6_in[5]~input_o\ : std_logic;
SIGNAL \SE6_in[6]~input_o\ : std_logic;
SIGNAL \SE6_in[7]~input_o\ : std_logic;
SIGNAL \SE6_in[8]~input_o\ : std_logic;
SIGNAL \SE6_in[9]~input_o\ : std_logic;
SIGNAL \SE6_in[10]~input_o\ : std_logic;
SIGNAL \SE6_in[11]~input_o\ : std_logic;
SIGNAL \SE6_in[12]~input_o\ : std_logic;
SIGNAL \SE6_in[13]~input_o\ : std_logic;
SIGNAL \SE6_in[14]~input_o\ : std_logic;
SIGNAL \SE6_in[15]~input_o\ : std_logic;
SIGNAL \LS_in[0]~input_o\ : std_logic;
SIGNAL \LS_in[1]~input_o\ : std_logic;
SIGNAL \LS_in[2]~input_o\ : std_logic;
SIGNAL \LS_in[3]~input_o\ : std_logic;
SIGNAL \LS_in[4]~input_o\ : std_logic;
SIGNAL \LS_in[5]~input_o\ : std_logic;
SIGNAL \LS_in[6]~input_o\ : std_logic;
SIGNAL \LS_in[7]~input_o\ : std_logic;
SIGNAL \LS_in[8]~input_o\ : std_logic;
SIGNAL \LS_in[9]~input_o\ : std_logic;
SIGNAL \LS_in[10]~input_o\ : std_logic;
SIGNAL \LS_in[11]~input_o\ : std_logic;
SIGNAL \LS_in[12]~input_o\ : std_logic;
SIGNAL \LS_in[13]~input_o\ : std_logic;
SIGNAL \LS_in[14]~input_o\ : std_logic;
SIGNAL \LS_in[15]~input_o\ : std_logic;
SIGNAL \state[0]~input_o\ : std_logic;
SIGNAL \state[1]~input_o\ : std_logic;
SIGNAL \state[2]~input_o\ : std_logic;
SIGNAL \state[3]~input_o\ : std_logic;
SIGNAL \state[4]~input_o\ : std_logic;
SIGNAL \op_code[0]~input_o\ : std_logic;
SIGNAL \op_code[1]~input_o\ : std_logic;
SIGNAL \op_code[2]~input_o\ : std_logic;
SIGNAL \op_code[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output_c[0]~output_o\ : std_logic;
SIGNAL \output_c[1]~output_o\ : std_logic;
SIGNAL \output_c[2]~output_o\ : std_logic;
SIGNAL \output_c[3]~output_o\ : std_logic;
SIGNAL \output_c[4]~output_o\ : std_logic;
SIGNAL \output_c[5]~output_o\ : std_logic;
SIGNAL \output_c[6]~output_o\ : std_logic;
SIGNAL \output_c[7]~output_o\ : std_logic;
SIGNAL \output_c[8]~output_o\ : std_logic;
SIGNAL \output_c[9]~output_o\ : std_logic;
SIGNAL \output_c[10]~output_o\ : std_logic;
SIGNAL \output_c[11]~output_o\ : std_logic;
SIGNAL \output_c[12]~output_o\ : std_logic;
SIGNAL \output_c[13]~output_o\ : std_logic;
SIGNAL \output_c[14]~output_o\ : std_logic;
SIGNAL \output_c[15]~output_o\ : std_logic;
SIGNAL \ALU_Z~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_IP_in <= IP_in;
ww_T1_in <= T1_in;
ww_T2_in <= T2_in;
ww_SE6_in <= SE6_in;
ww_LS_in <= LS_in;
ww_state <= state;
ww_op_code <= op_code;
output_c <= ww_output_c;
ALU_Z <= ww_ALU_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y36_N23
\output_c[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[0]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\output_c[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\output_c[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\output_c[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[3]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\output_c[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\output_c[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[5]~output_o\);

-- Location: IOOBUF_X0_Y29_N2
\output_c[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\output_c[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[7]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\output_c[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\output_c[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[9]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\output_c[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[10]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\output_c[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[11]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\output_c[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[12]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\output_c[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[13]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\output_c[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[14]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\output_c[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_c[15]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\ALU_Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_Z~output_o\);

-- Location: IOIBUF_X24_Y0_N8
\IP_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(0),
	o => \IP_in[0]~input_o\);

-- Location: IOIBUF_X31_Y39_N15
\IP_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(1),
	o => \IP_in[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\IP_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(2),
	o => \IP_in[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\IP_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(3),
	o => \IP_in[3]~input_o\);

-- Location: IOIBUF_X51_Y0_N1
\IP_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(4),
	o => \IP_in[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\IP_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(5),
	o => \IP_in[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\IP_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(6),
	o => \IP_in[6]~input_o\);

-- Location: IOIBUF_X74_Y54_N15
\IP_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(7),
	o => \IP_in[7]~input_o\);

-- Location: IOIBUF_X78_Y34_N15
\IP_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(8),
	o => \IP_in[8]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\IP_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(9),
	o => \IP_in[9]~input_o\);

-- Location: IOIBUF_X69_Y54_N8
\IP_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(10),
	o => \IP_in[10]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\IP_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(11),
	o => \IP_in[11]~input_o\);

-- Location: IOIBUF_X18_Y0_N29
\IP_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(12),
	o => \IP_in[12]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\IP_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(13),
	o => \IP_in[13]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\IP_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(14),
	o => \IP_in[14]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\IP_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IP_in(15),
	o => \IP_in[15]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\T1_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(0),
	o => \T1_in[0]~input_o\);

-- Location: IOIBUF_X78_Y37_N1
\T1_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(1),
	o => \T1_in[1]~input_o\);

-- Location: IOIBUF_X78_Y17_N22
\T1_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(2),
	o => \T1_in[2]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\T1_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(3),
	o => \T1_in[3]~input_o\);

-- Location: IOIBUF_X0_Y37_N8
\T1_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(4),
	o => \T1_in[4]~input_o\);

-- Location: IOIBUF_X60_Y0_N29
\T1_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(5),
	o => \T1_in[5]~input_o\);

-- Location: IOIBUF_X0_Y15_N1
\T1_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(6),
	o => \T1_in[6]~input_o\);

-- Location: IOIBUF_X0_Y3_N22
\T1_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(7),
	o => \T1_in[7]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\T1_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(8),
	o => \T1_in[8]~input_o\);

-- Location: IOIBUF_X60_Y54_N22
\T1_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(9),
	o => \T1_in[9]~input_o\);

-- Location: IOIBUF_X78_Y23_N8
\T1_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(10),
	o => \T1_in[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\T1_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(11),
	o => \T1_in[11]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\T1_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(12),
	o => \T1_in[12]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\T1_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(13),
	o => \T1_in[13]~input_o\);

-- Location: IOIBUF_X60_Y54_N8
\T1_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(14),
	o => \T1_in[14]~input_o\);

-- Location: IOIBUF_X74_Y54_N8
\T1_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1_in(15),
	o => \T1_in[15]~input_o\);

-- Location: IOIBUF_X46_Y54_N22
\T2_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(0),
	o => \T2_in[0]~input_o\);

-- Location: IOIBUF_X78_Y18_N15
\T2_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(1),
	o => \T2_in[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\T2_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(2),
	o => \T2_in[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N22
\T2_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(3),
	o => \T2_in[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\T2_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(4),
	o => \T2_in[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\T2_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(5),
	o => \T2_in[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\T2_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(6),
	o => \T2_in[6]~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\T2_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(7),
	o => \T2_in[7]~input_o\);

-- Location: IOIBUF_X78_Y42_N8
\T2_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(8),
	o => \T2_in[8]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\T2_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(9),
	o => \T2_in[9]~input_o\);

-- Location: IOIBUF_X0_Y18_N8
\T2_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(10),
	o => \T2_in[10]~input_o\);

-- Location: IOIBUF_X78_Y33_N15
\T2_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(11),
	o => \T2_in[11]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\T2_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(12),
	o => \T2_in[12]~input_o\);

-- Location: IOIBUF_X58_Y0_N29
\T2_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(13),
	o => \T2_in[13]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\T2_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(14),
	o => \T2_in[14]~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\T2_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2_in(15),
	o => \T2_in[15]~input_o\);

-- Location: IOIBUF_X26_Y39_N1
\SE6_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(0),
	o => \SE6_in[0]~input_o\);

-- Location: IOIBUF_X20_Y39_N1
\SE6_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(1),
	o => \SE6_in[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\SE6_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(2),
	o => \SE6_in[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\SE6_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(3),
	o => \SE6_in[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\SE6_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(4),
	o => \SE6_in[4]~input_o\);

-- Location: IOIBUF_X29_Y39_N8
\SE6_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(5),
	o => \SE6_in[5]~input_o\);

-- Location: IOIBUF_X36_Y39_N15
\SE6_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(6),
	o => \SE6_in[6]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\SE6_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(7),
	o => \SE6_in[7]~input_o\);

-- Location: IOIBUF_X56_Y54_N29
\SE6_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(8),
	o => \SE6_in[8]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\SE6_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(9),
	o => \SE6_in[9]~input_o\);

-- Location: IOIBUF_X78_Y23_N22
\SE6_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(10),
	o => \SE6_in[10]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\SE6_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(11),
	o => \SE6_in[11]~input_o\);

-- Location: IOIBUF_X64_Y54_N1
\SE6_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(12),
	o => \SE6_in[12]~input_o\);

-- Location: IOIBUF_X78_Y17_N1
\SE6_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(13),
	o => \SE6_in[13]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\SE6_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(14),
	o => \SE6_in[14]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\SE6_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SE6_in(15),
	o => \SE6_in[15]~input_o\);

-- Location: IOIBUF_X29_Y39_N15
\LS_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(0),
	o => \LS_in[0]~input_o\);

-- Location: IOIBUF_X69_Y0_N22
\LS_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(1),
	o => \LS_in[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\LS_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(2),
	o => \LS_in[2]~input_o\);

-- Location: IOIBUF_X78_Y43_N8
\LS_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(3),
	o => \LS_in[3]~input_o\);

-- Location: IOIBUF_X74_Y54_N22
\LS_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(4),
	o => \LS_in[4]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\LS_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(5),
	o => \LS_in[5]~input_o\);

-- Location: IOIBUF_X49_Y54_N15
\LS_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(6),
	o => \LS_in[6]~input_o\);

-- Location: IOIBUF_X78_Y35_N1
\LS_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(7),
	o => \LS_in[7]~input_o\);

-- Location: IOIBUF_X78_Y24_N1
\LS_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(8),
	o => \LS_in[8]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\LS_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(9),
	o => \LS_in[9]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\LS_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(10),
	o => \LS_in[10]~input_o\);

-- Location: IOIBUF_X46_Y54_N8
\LS_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(11),
	o => \LS_in[11]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\LS_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(12),
	o => \LS_in[12]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\LS_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(13),
	o => \LS_in[13]~input_o\);

-- Location: IOIBUF_X46_Y54_N1
\LS_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(14),
	o => \LS_in[14]~input_o\);

-- Location: IOIBUF_X78_Y17_N8
\LS_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LS_in(15),
	o => \LS_in[15]~input_o\);

-- Location: IOIBUF_X69_Y54_N29
\state[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_state(0),
	o => \state[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\state[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_state(1),
	o => \state[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\state[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_state(2),
	o => \state[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\state[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_state(3),
	o => \state[3]~input_o\);

-- Location: IOIBUF_X46_Y54_N15
\state[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_state(4),
	o => \state[4]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\op_code[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code(0),
	o => \op_code[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N29
\op_code[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code(1),
	o => \op_code[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\op_code[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code(2),
	o => \op_code[2]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\op_code[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code(3),
	o => \op_code[3]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_output_c(0) <= \output_c[0]~output_o\;

ww_output_c(1) <= \output_c[1]~output_o\;

ww_output_c(2) <= \output_c[2]~output_o\;

ww_output_c(3) <= \output_c[3]~output_o\;

ww_output_c(4) <= \output_c[4]~output_o\;

ww_output_c(5) <= \output_c[5]~output_o\;

ww_output_c(6) <= \output_c[6]~output_o\;

ww_output_c(7) <= \output_c[7]~output_o\;

ww_output_c(8) <= \output_c[8]~output_o\;

ww_output_c(9) <= \output_c[9]~output_o\;

ww_output_c(10) <= \output_c[10]~output_o\;

ww_output_c(11) <= \output_c[11]~output_o\;

ww_output_c(12) <= \output_c[12]~output_o\;

ww_output_c(13) <= \output_c[13]~output_o\;

ww_output_c(14) <= \output_c[14]~output_o\;

ww_output_c(15) <= \output_c[15]~output_o\;

ww_ALU_Z <= \ALU_Z~output_o\;
END structure;


