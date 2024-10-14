
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;                               

ENTITY pc_unit_vhd_tst IS
END pc_unit_vhd_tst;
ARCHITECTURE pc_unit_arch OF pc_unit_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL I_clk : STD_LOGIC;
SIGNAL I_reset : STD_LOGIC;
SIGNAL I_en : STD_LOGIC;
SIGNAL O_PC : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT pc_unit
	PORT (
	I_reset : IN STD_LOGIC;
	I_en : IN STD_LOGIC;
	I_clk : IN STD_LOGIC;
	O_PC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : pc_unit
	PORT MAP (
-- list connections between master ports and signals
	I_clk => I_clk,
	I_en => I_en,
	I_reset => I_reset,
	O_PC => O_PC
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                      
		  I_en  <= '1';
		  I_reset<= '0';
        I_clk <= '0';
		  
			for i in 0 to 99 loop 
				wait for 10 ns;
				I_clk<= not I_clk;
				
				end loop; 
				
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
                                    
BEGIN                                                         
        
WAIT;                                                        
END PROCESS always;                                          
END pc_unit_arch;
