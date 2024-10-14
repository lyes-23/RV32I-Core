library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity imm_ext is 
port(
instr_in : in std_logic_vector(31 downto 0); 
instr_out :out std_logic_vector(31 downto 0)
);
end imm_ext; 

architecture behavioral of imm_ext is 

instr_out()


begin 