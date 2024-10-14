
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reg_file_vhd_tst IS
END reg_file_vhd_tst;
ARCHITECTURE reg_file_arch OF reg_file_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL rd_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rd_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL rs1_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rs1_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL rs2_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rs2_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL we_rd : STD_LOGIC;
COMPONENT reg_file
	PORT (
	clk : IN STD_LOGIC;
	rd_addr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rd_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	rs1_addr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rs1_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	rs2_addr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rs2_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	we_rd : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : reg_file
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	rd_addr => rd_addr,
	rd_data => rd_data,
	rs1_addr => rs1_addr,
	rs1_data => rs1_data,
	rs2_addr => rs2_addr,
	rs2_data => rs2_data,
	we_rd => we_rd
	);
init : PROCESS                                               
                                    
BEGIN                                                        
        clk<= '0'; 
			for i in 0 to 20 loop 
			wait for 5 ns; 
			clk <= not clk; 
			end loop; 
WAIT;                                                       
END PROCESS init; 
                                          
always : PROCESS                                              
                                     
BEGIN                  

--				we_rd<= '1'; 
--				rd_addr<= "00001";
--				rd_data<= X"FFFFFFFF";
--				wait for 15 ns; 
--				
--				we_rd<= '1'; 
--				rd_addr<= "00010";
--				rd_data<= X"AAAAAAAA";
--				wait for 15 ns; 
				
				we_rd<= '0'; 
				rs1_addr<= "00001";
				rs2_addr<= "00010";
				wait for 10 ns; 
				
         
WAIT;                                                        
END PROCESS always;                                          
END reg_file_arch;
