
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;    
use ieee.numeric_std.all;                            

ENTITY instr_memory_vhd_tst IS
END instr_memory_vhd_tst;
ARCHITECTURE instr_memory_arch OF instr_memory_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pc_addr : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT instr_memory
	PORT (
	instruction : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	pc_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : instr_memory
	PORT MAP (
-- list connections between master ports and signals
	instruction => instruction,
	pc_addr => pc_addr
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
                                   
BEGIN                                                         
        pc_addr <= (others => '0');  -- Address 0
        wait for 20 ns;
        

        pc_addr <= std_logic_vector(to_unsigned(1, 32));  -- Address 1
        wait for 20 ns;
      

        pc_addr <= std_logic_vector(to_unsigned(2, 32));  -- Address 2
        wait for 20 ns;
        
WAIT;                                                        
END PROCESS always;                                          
END instr_memory_arch;
