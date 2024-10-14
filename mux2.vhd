library ieee;
use ieee.std_logic_1164; 
use ieee.numeric_std.all; 

entity mux2 is 
port(
A,B: in tsd_logic_vector(31 downto 0); 
sel: in std_logic; 
S: out std_logic_vector(31 downto 0)
) 
end mux2; 

architecture behavioral of mux2 is 
begin 
process(sel)
begin 
if(sel = 0) then 
	S<= A; 
	else 
	S<= B; 
	
end if; 

end process; 

end behavioral; 
