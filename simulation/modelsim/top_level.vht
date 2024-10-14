


LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY top_level_vhd_tst IS
END top_level_vhd_tst;
ARCHITECTURE top_level_arch OF top_level_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
signal reset:  std_logic;
COMPONENT top_level
	PORT (
	clk : IN STD_LOGIC;
	reset: In std_logic
	);
END COMPONENT;
BEGIN
	i1 : top_level
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset=> reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN        
			clk<= '0';                                                
         for i in 0 to 30 loop 
		   wait for 5 ns; 
			clk <= not clk; 
			end loop;                     
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
                         
								 
BEGIN              
        reset <= '1'; 
         
		  wait for 20 ns; 
		  reset <= '0'; 
        
		  
		
WAIT;                                                        
END PROCESS always;                                          
END top_level_arch;
