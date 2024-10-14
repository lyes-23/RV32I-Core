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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/19/2024 15:07:06"
                                                            
-- Vhdl Test Bench template for design  :  decoder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY decoder_vhd_tst IS
END decoder_vhd_tst;
ARCHITECTURE decoder_arch OF decoder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL imm : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL instr : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL loadpc : STD_LOGIC;
SIGNAL op_out : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL rd : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rd_en : STD_LOGIC;
SIGNAL rs1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rs2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT decoder
	PORT (
	imm : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	instr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	loadpc : OUT STD_LOGIC;
	op_out : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	rd : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	rd_en : OUT STD_LOGIC;
	rs1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	rs2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : decoder
	PORT MAP (
-- list connections between master ports and signals
	imm => imm,
	instr => instr,
	loadpc => loadpc,
	op_out => op_out,
	rd => rd,
	rd_en => rd_en,
	rs1 => rs1,
	rs2 => rs2
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END decoder_arch;
