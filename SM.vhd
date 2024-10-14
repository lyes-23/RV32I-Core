library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 


entity SM is 
port(
rs2_data: in std_logic_vector(31 downto 0);
funct3 :  in std_logic_vector(2 downto 0);
res    :  in std_logic_vector(31 downto 0); 
clk   :   in std_logic;
data   :  in std_logic_vector(31 downto 0);
data_mem: out std_logic_vector(31 downto 0)


);
end SM; 



architecture behav of SM is 

 

begin 

process(rs2_data,funct3,res,data,clk)
variable m_h, m_b, m : std_logic_vector(3 downto 0):= (others => '0');
begin 
--if rising_edge(clk) then
if( res(1) = '0') then 
	m_h := x"C"; 
	else 
	m_h := x"3"; 
end if; 
	
if( res(1 downto 0) = "00") then 
		m_b := x"E"; 
		elsif(res(1 downto 0) = "01") then 
		m_b := x"D"; 
		elsif(res(1 downto 0) = "10") then 
		m_b := x"B"; 
		elsif(res(1 downto 0) = "11") then 
		m_b := x"7";
		else 
		m_b := x"0";

end if; 	


case funct3(1 downto 0) is
            when "00" => m := m_b;   --SB
            when "01" => m := m_h;	  --SH
            when "10" => m := x"0";  --SW
            when others => m:= x"0"; 
        end case;

if(m(0)= '0') then 
	data_mem(7 downto 0) <= data(7 downto 0); 
	else
	data_mem(7 downto 0) <= rs2_data(7 downto 0); 
end if; 

if(m(1)= '0') then 
	data_mem(15 downto 8) <= data(15 downto 8); 
	else
	data_mem(15 downto 8) <= rs2_data(15 downto 8); 
end if; 

if(m(2)= '0') then 
	data_mem(23 downto 16) <= data(23 downto 16); 
	else
	data_mem(23 downto 16) <= rs2_data(23 downto 16); 
end if; 

if(m(3)= '0') then 
	data_mem(31 downto 24) <= data(31 downto 24); 
	else
	data_mem(31 downto 24) <= rs2_data(31 downto 24); 
end if; 
--end if;
end process;

end behav;