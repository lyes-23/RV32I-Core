library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 



library work;
use work.constants.all;

entity fetch is 
port(
	clk: in std_logic;
	op_code: out std_logic_vector(31 downto 0)
);
end fetch; 


architecture behavioral of fetch is
signal pcu_out: std_logic_vector(31 downto 0);
begin
pcu: entity work.pc_unit 
	port map(
		I_clk=> clk,
		I_en=> '1',
		I_reset=>'0',
		O_PC => pcu_out
); 

imemory: entity work.instr_memory 
	port map(
		clk         => clk,
		pc_addr     => pcu_out,
		instruction	=> op_code
		);
		
		end architecture;