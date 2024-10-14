

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY data_memory_vhd_tst IS
END data_memory_vhd_tst;
ARCHITECTURE data_memory_arch OF data_memory_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL loadacc : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL we : STD_LOGIC;
COMPONENT data_memory
	PORT (
	addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk : IN STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	loadacc : IN STD_LOGIC;
	opcode : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : data_memory
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk => clk,
	data => data,
	data_out => data_out,
	loadacc => loadacc,
	opcode => opcode,
	we => we
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        clk <= '1';
	for i in 0 to 20 loop 
	wait for 2 ns;
	clk <= not clk;
	end loop;                         
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
         we<= '0'; 
        addr<=x"00000000";
		  loadacc<= '1';
		wait for 5 ns; 
			we<= '1';
			addr<=x"00000008";
			data<=x"AAAAAAAA";
			loadacc<= '1';
			wait for 15 ns; 
			we<= '0'; 
         addr<=x"00000008";
			loadacc<= '1';
WAIT;                                                        
END PROCESS always;                                          
END data_memory_arch;
