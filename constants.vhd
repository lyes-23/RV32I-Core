library ieee; 
use ieee.std_logic_1164.all; 


package constants is 

constant XLEN:	integer := 32;
constant XLENM1:	integer := 31;

constant XLEN_ZERO: std_logic_vector(XLEN-1 downto 0) := X"00000000";
constant RESET_VECTOR: 		std_logic_vector(XLEN-1 downto 0) := X"00000000";
constant TRAP_VECTOR:		std_logic_vector(XLEN-1 downto 0) := X"00000004";
constant INTERRUPT_VECTOR:	std_logic_vector(XLEN-1 downto 0) := X"00000008";

-- Opcodes
constant OP_OP: 		std_logic_vector(4 downto 0) := "01100"; -- R-type
constant OP_CUSTOM0:	std_logic_vector(4 downto 0) := "00010"; -- R-type









end constants;

package body constants is
 
end constants;