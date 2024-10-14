library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity reg_file is

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 5
	);

	port 
	(
		clk		: in std_logic;
		
		rs1_addr	: in std_logic_vector(4 downto  0);
		rs2_addr	: in std_logic_vector(4 downto  0);
		rd_addr  : in std_logic_vector(4 downto  0);
		
		rd_data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
	
		we_rd	: in std_logic ;
		
		rs1_data		: out std_logic_vector((DATA_WIDTH -1) downto 0);
		rs2_data		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end reg_file;

architecture rtl of reg_file is

type regs is array(0 to 31) of std_logic_vector(31 downto 0);
	
	signal reg: regs := (
    x"00000000", -- reg(0)
    x"00000001", -- reg(1)
    x"00000002", -- reg(2)
    x"00000003", -- reg(3)
    x"00000004", -- reg(4)
    x"00000005", -- reg(5)
    x"00000006", -- reg(6)
    x"00000007", -- reg(7)
    x"00000008", -- reg(8)
    x"00000009", -- reg(9)
    x"0000000A", -- reg(10)
    x"0000000B", -- reg(11)
    x"0000000C", -- reg(12)
    x"0000000D", -- reg(13)
    x"0000000E", -- reg(14)
    x"0000000F", -- reg(15)
    x"00000010", -- reg(16)
    x"00000011", -- reg(17)
    x"00000012", -- reg(18)
    x"00000013", -- reg(19)
    x"00000014", -- reg(20)
    x"00000015", -- reg(21)
    x"00000016", -- reg(22)
    x"00000017", -- reg(23)
    x"00000018", -- reg(24)
    x"00000019", -- reg(25)
    x"0000001A", -- reg(26)
    x"0000001B", -- reg(27)
    x"0000001C", -- reg(28)
    x"0000001D", -- reg(29)
    x"0000001E", -- reg(30)
    x"0000001F"  -- reg(31)
);
	
begin


process(reg,rs1_addr,rs2_addr)
begin
	if(rs1_addr /="ZZZZZ") then 
	rs1_data <= reg(to_integer(unsigned(rs1_addr)));
	else
	rs1_data<=(others=>'Z');
	end if; 
	
	if(rs2_addr /= "ZZZZZ") then
	rs2_data <= reg(to_integer(unsigned(rs2_addr)));
	else 
	rs2_data <= (others=>'Z'); 
   end if;	
	end process; 
	
process(clk,rd_addr,reg,we_rd)

begin 
	if(rising_edge(clk)) then
		if(we_rd = '1' and rd_addr/="ZZZZZ" and rd_addr/="00000") then
			reg(to_integer(unsigned(rd_addr))) <= rd_data;
		end if; 
	end if; 
	
end process; 

end architecture;