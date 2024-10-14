
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_tst IS
END alu_vhd_tst;
ARCHITECTURE alu_arch OF alu_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data_mem : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL F : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL imm_mux_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL opcode : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL rs1_mux_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL rs2_op_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT alu
	PORT (
	data_mem : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	F : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	imm_mux_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	opcode : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	rs1_mux_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	rs2_op_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	data_mem => data_mem,
	F => F,
	imm_mux_in => imm_mux_in,
	opcode => opcode,
	result => result,
	rs1_mux_in => rs1_mux_in,
	rs2_op_in => rs2_op_in
	);
 PROCESS                                               
                                     
BEGIN       	

			-- Test ADD (opcode = "00000110011")
			opcode <= "00000110011"; 
        rs1_mux_in <= x"00000002";
        rs2_op_in <= x"00000003";
        wait for 10 ns;
        

        -- Test SUB (opcode = "10000110011")
        opcode <= "10000110011";
        rs1_mux_in <= x"00000005";
        rs2_op_in <= x"00000003";
        wait for 10 ns;


        -- Test AND (opcode = "01110110011")
        opcode <= "01110110011";
        rs1_mux_in <= x"0000000F";
        rs2_op_in <= x"000000F0";
        wait for 10 ns;


        -- Test OR (opcode = "01100110011")
        opcode <= "01100110011";
        rs1_mux_in <= x"0000000F";
        rs2_op_in <= x"000000F0";
        wait for 10 ns;


        -- Test XOR (opcode = "01000110011")
        opcode <= "01000110011";
        rs1_mux_in <= x"0000000F";
        rs2_op_in <= x"000000F0";
        wait for 10 ns;
                             
WAIT;                                                       
END PROCESS ;                                           
                                         
END alu_arch;
