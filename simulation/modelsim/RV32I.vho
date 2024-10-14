-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/18/2024 00:05:03"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	instr_memory IS
    PORT (
	pc_addr : IN std_logic_vector(31 DOWNTO 0);
	instruction : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END instr_memory;

-- Design Ports Information
-- pc_addr[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[8]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[10]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[11]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[13]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[14]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[15]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[16]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[17]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[18]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[19]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[20]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[21]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[22]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[23]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[24]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[25]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[26]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[27]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[28]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[29]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[30]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[31]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[3]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[5]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[7]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[8]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[10]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[11]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[12]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[13]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[14]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[15]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[16]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[17]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[18]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[19]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[20]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[21]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[22]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[23]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[24]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[25]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[26]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[27]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[28]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[29]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[30]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[31]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[4]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[5]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_addr[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF instr_memory IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pc_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instruction : std_logic_vector(31 DOWNTO 0);
SIGNAL \pc_addr[7]~input_o\ : std_logic;
SIGNAL \pc_addr[8]~input_o\ : std_logic;
SIGNAL \pc_addr[9]~input_o\ : std_logic;
SIGNAL \pc_addr[10]~input_o\ : std_logic;
SIGNAL \pc_addr[11]~input_o\ : std_logic;
SIGNAL \pc_addr[12]~input_o\ : std_logic;
SIGNAL \pc_addr[13]~input_o\ : std_logic;
SIGNAL \pc_addr[14]~input_o\ : std_logic;
SIGNAL \pc_addr[15]~input_o\ : std_logic;
SIGNAL \pc_addr[16]~input_o\ : std_logic;
SIGNAL \pc_addr[17]~input_o\ : std_logic;
SIGNAL \pc_addr[18]~input_o\ : std_logic;
SIGNAL \pc_addr[19]~input_o\ : std_logic;
SIGNAL \pc_addr[20]~input_o\ : std_logic;
SIGNAL \pc_addr[21]~input_o\ : std_logic;
SIGNAL \pc_addr[22]~input_o\ : std_logic;
SIGNAL \pc_addr[23]~input_o\ : std_logic;
SIGNAL \pc_addr[24]~input_o\ : std_logic;
SIGNAL \pc_addr[25]~input_o\ : std_logic;
SIGNAL \pc_addr[26]~input_o\ : std_logic;
SIGNAL \pc_addr[27]~input_o\ : std_logic;
SIGNAL \pc_addr[28]~input_o\ : std_logic;
SIGNAL \pc_addr[29]~input_o\ : std_logic;
SIGNAL \pc_addr[30]~input_o\ : std_logic;
SIGNAL \pc_addr[31]~input_o\ : std_logic;
SIGNAL \pc_addr[0]~input_o\ : std_logic;
SIGNAL \pc_addr[1]~input_o\ : std_logic;
SIGNAL \pc_addr[2]~input_o\ : std_logic;
SIGNAL \pc_addr[3]~input_o\ : std_logic;
SIGNAL \pc_addr[4]~input_o\ : std_logic;
SIGNAL \pc_addr[5]~input_o\ : std_logic;
SIGNAL \pc_addr[6]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_pc_addr <= pc_addr;
instruction <= ww_instruction;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X89_Y36_N39
\instruction[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(0));

-- Location: IOOBUF_X50_Y81_N76
\instruction[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(1));

-- Location: IOOBUF_X66_Y81_N42
\instruction[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(2));

-- Location: IOOBUF_X36_Y81_N2
\instruction[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(3));

-- Location: IOOBUF_X89_Y4_N96
\instruction[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(4));

-- Location: IOOBUF_X38_Y81_N19
\instruction[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(5));

-- Location: IOOBUF_X89_Y35_N62
\instruction[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(6));

-- Location: IOOBUF_X64_Y0_N2
\instruction[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(7));

-- Location: IOOBUF_X62_Y0_N36
\instruction[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(8));

-- Location: IOOBUF_X50_Y81_N93
\instruction[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(9));

-- Location: IOOBUF_X66_Y81_N59
\instruction[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(10));

-- Location: IOOBUF_X86_Y81_N53
\instruction[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(11));

-- Location: IOOBUF_X32_Y0_N36
\instruction[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(12));

-- Location: IOOBUF_X38_Y0_N36
\instruction[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(13));

-- Location: IOOBUF_X2_Y0_N59
\instruction[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(14));

-- Location: IOOBUF_X34_Y81_N76
\instruction[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(15));

-- Location: IOOBUF_X89_Y38_N22
\instruction[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(16));

-- Location: IOOBUF_X58_Y0_N42
\instruction[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(17));

-- Location: IOOBUF_X38_Y0_N2
\instruction[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(18));

-- Location: IOOBUF_X72_Y0_N53
\instruction[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(19));

-- Location: IOOBUF_X28_Y81_N19
\instruction[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(20));

-- Location: IOOBUF_X58_Y0_N93
\instruction[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(21));

-- Location: IOOBUF_X4_Y0_N53
\instruction[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(22));

-- Location: IOOBUF_X36_Y81_N36
\instruction[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(23));

-- Location: IOOBUF_X88_Y81_N3
\instruction[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(24));

-- Location: IOOBUF_X60_Y81_N53
\instruction[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(25));

-- Location: IOOBUF_X36_Y0_N36
\instruction[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(26));

-- Location: IOOBUF_X80_Y81_N53
\instruction[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(27));

-- Location: IOOBUF_X72_Y81_N36
\instruction[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(28));

-- Location: IOOBUF_X76_Y81_N2
\instruction[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(29));

-- Location: IOOBUF_X34_Y81_N42
\instruction[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(30));

-- Location: IOOBUF_X60_Y0_N2
\instruction[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(31));

-- Location: IOIBUF_X62_Y81_N18
\pc_addr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(7),
	o => \pc_addr[7]~input_o\);

-- Location: IOIBUF_X60_Y81_N1
\pc_addr[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(8),
	o => \pc_addr[8]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\pc_addr[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(9),
	o => \pc_addr[9]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\pc_addr[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(10),
	o => \pc_addr[10]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\pc_addr[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(11),
	o => \pc_addr[11]~input_o\);

-- Location: IOIBUF_X30_Y81_N1
\pc_addr[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(12),
	o => \pc_addr[12]~input_o\);

-- Location: IOIBUF_X40_Y81_N52
\pc_addr[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(13),
	o => \pc_addr[13]~input_o\);

-- Location: IOIBUF_X64_Y81_N52
\pc_addr[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(14),
	o => \pc_addr[14]~input_o\);

-- Location: IOIBUF_X72_Y81_N52
\pc_addr[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(15),
	o => \pc_addr[15]~input_o\);

-- Location: IOIBUF_X62_Y81_N52
\pc_addr[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(16),
	o => \pc_addr[16]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\pc_addr[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(17),
	o => \pc_addr[17]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\pc_addr[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(18),
	o => \pc_addr[18]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\pc_addr[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(19),
	o => \pc_addr[19]~input_o\);

-- Location: IOIBUF_X88_Y81_N36
\pc_addr[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(20),
	o => \pc_addr[20]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\pc_addr[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(21),
	o => \pc_addr[21]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\pc_addr[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(22),
	o => \pc_addr[22]~input_o\);

-- Location: IOIBUF_X52_Y81_N1
\pc_addr[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(23),
	o => \pc_addr[23]~input_o\);

-- Location: IOIBUF_X60_Y81_N35
\pc_addr[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(24),
	o => \pc_addr[24]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\pc_addr[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(25),
	o => \pc_addr[25]~input_o\);

-- Location: IOIBUF_X70_Y81_N18
\pc_addr[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(26),
	o => \pc_addr[26]~input_o\);

-- Location: IOIBUF_X88_Y81_N19
\pc_addr[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(27),
	o => \pc_addr[27]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\pc_addr[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(28),
	o => \pc_addr[28]~input_o\);

-- Location: IOIBUF_X70_Y81_N1
\pc_addr[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(29),
	o => \pc_addr[29]~input_o\);

-- Location: IOIBUF_X70_Y81_N52
\pc_addr[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(30),
	o => \pc_addr[30]~input_o\);

-- Location: IOIBUF_X76_Y81_N35
\pc_addr[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(31),
	o => \pc_addr[31]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\pc_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(0),
	o => \pc_addr[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\pc_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(1),
	o => \pc_addr[1]~input_o\);

-- Location: IOIBUF_X28_Y81_N35
\pc_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(2),
	o => \pc_addr[2]~input_o\);

-- Location: IOIBUF_X86_Y81_N1
\pc_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(3),
	o => \pc_addr[3]~input_o\);

-- Location: IOIBUF_X82_Y81_N75
\pc_addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(4),
	o => \pc_addr[4]~input_o\);

-- Location: IOIBUF_X72_Y81_N1
\pc_addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(5),
	o => \pc_addr[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\pc_addr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_addr(6),
	o => \pc_addr[6]~input_o\);

-- Location: LABCELL_X9_Y47_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


