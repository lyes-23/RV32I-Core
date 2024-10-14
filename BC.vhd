library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 



entity BC is 
port(
Btype: in std_logic;
funct3: in std_logic_vector(2 downto 0);
rs1_in,rs2_in : in std_logic_vector(31 downto 0) ;
Bres : out std_logic
); 
end BC;	


architecture behav of BC is 



begin

 process(rs1_in, rs2_in, funct3)
    begin
	  if(Btype = '1') then 
        case funct3 is
            when "000" =>  -- beq
                if rs1_in = rs2_in then
                    Bres <= '1';
                else
                    Bres <= '0';
                end if;
            when "001" =>  -- bne
                if rs1_in /= rs2_in then
                    Bres <= '1';
                else
                    Bres <= '0';
                end if;
            when "100" =>  -- blt
                if signed(rs1_in) < signed(rs2_in) then
                    Bres <= '1';
                else
                    Bres <= '0';
                end if;
            when "101" =>  -- bge
                if signed(rs1_in) >= signed(rs2_in) then
                    Bres <= '1';
                else
                    Bres <= '0';
                end if;
            when "110" =>  -- bltu
                if unsigned(rs1_in) < unsigned(rs2_in) then
                    Bres <= '1';
                else
                    Bres <= '0';
                end if;
            when "111" =>  -- bgeu
                if unsigned(rs1_in) >= unsigned(rs2_in) then
                    Bres <= '1';
                else
                    Bres <= '0';
                end if;
            when others =>
                Bres <= '0';
        end case;
		  else 
				Bres<= '0';
				end if;
    end process;
	 
	 end behav;