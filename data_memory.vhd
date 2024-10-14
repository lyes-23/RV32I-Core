-- faut juste augumenter la mémoire à 2**addr 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_memory is



	port 
	(
		clk			: in  std_logic;
		addr			: in  std_logic_vector(31 downto 0);
		data			: in  std_logic_vector(31 downto 0);
		we				: in  std_logic ;
		loadacc		: in  std_logic;
		opcode		: in  std_logic_vector(10 downto 0);
		data_out		: out std_logic_vector(31 downto 0)
	);

end entity;

architecture behav of data_memory is

	
	type memory_t is array(0 to 1024) of std_logic_vector(31 downto 0);	
	signal ram : memory_t:= ( std_logic_vector(to_unsigned(1,32)),
										std_logic_vector(to_unsigned(2,32)),
										std_logic_vector(to_unsigned(3,32)),
										std_logic_vector(to_unsigned(4,32)),
										std_logic_vector(to_unsigned(5,32)),
										std_logic_vector(to_unsigned(6,32)),
										std_logic_vector(to_unsigned(7,32)),
										std_logic_vector(to_unsigned(8,32)),
										std_logic_vector(to_unsigned(9,32)),
										std_logic_vector(to_unsigned(10,32)),
										std_logic_vector(to_unsigned(11,32)), others=>(others=>'0'));



begin

writing:process(clk,addr)
	begin
	if(rising_edge(clk)) then
		if(we = '1') then
			ram(to_integer(unsigned(addr(31 downto 2)))) <= data;
		end if;
	end if;
	
	end process writing;
	
reading:process(addr,ram,data)
begin
		data_out <= ram(to_integer( unsigned(addr(31 downto 2))));

end process reading; 

	

end behav;
