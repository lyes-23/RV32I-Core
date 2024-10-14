
-- starting with pc, it's a counter that adds an offset of 4


library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.constants.all;


entity pc_unit is 
port(

I_clk, I_en,load,I_reset: in std_logic;
din: in std_logic_vector(XLENM1 downto 0);
O_PC: out std_logic_vector(XLENM1 downto 0)
);
end pc_unit;

architecture behavioral of pc_unit is 
	
signal current_pc: std_logic_vector(XLENM1 downto 0) := std_logic_vector(to_unsigned(0,XLEN));

begin 

process(I_clk,I_en,I_reset,load)
begin 

	if rising_edge(I_clk) then
			if I_reset = '1' then
				current_pc <= RESET_VECTOR;
				else
				if I_en = '1' and load='0' then 
				current_pc <= std_logic_vector(unsigned(current_pc)+1);
				elsif I_en = '1' and load='1'then	
				current_pc <= din;
				elsif I_reset = '1' then
				current_pc <= RESET_VECTOR;
				end if;
			end if;
	end if;
	end process;
	
		O_PC <= current_pc;
		
		
		
		end architecture;
		
	