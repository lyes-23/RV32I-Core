library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 


entity LM is 
port(
data : in std_logic_vector(31 downto 0);  
funct3: in std_logic_vector(2 downto 0);
res   :  in std_logic_vector(1 downto 0) ; 
data_out: out std_logic_vector(31 downto 0) 
); 
end LM; 


architecture behavioral of LM is 

type funct3_t is (
        LB,  -- Load Byte with sign extension
        LBU, -- Load Byte with zero extension
        LH,  -- Load Halfword with sign extension
        LHU, -- Load Halfword with zero extension
        LW   -- Load Word
    );
    signal load_op : funct3_t;
	 signal selected_byte : std_logic_vector(7 downto 0);
    signal selected_halfword : std_logic_vector(15 downto 0);
begin
    process(data, funct3,load_op,res,selected_byte,selected_halfword)
    begin
        case funct3 is
            when "000" => load_op <= LB;
            when "001" => load_op <= LH;
            when "010" => load_op <= LW;
            when "100" => load_op <= LBU;
            when "101" => load_op <= LHU;
            when others => load_op <= LW; -- Default to LW
        end case;
		  
		  case res is
            when "00" =>
                selected_byte <= data(7 downto 0);
                selected_halfword <= data(15 downto 0);
            when "01" =>
                selected_byte <= data(15 downto 8);
                selected_halfword <= data(23 downto 8);
            when "10" =>
                selected_byte <= data(23 downto 16);
                selected_halfword <= data(31 downto 16);
            when "11" =>
                selected_byte <= data(31 downto 24);
                selected_halfword <= data(31 downto 16);
            when others =>
                selected_byte <= data(7 downto 0);
                selected_halfword <= data(15 downto 0);
        end case;

         -- Perform the appropriate load operation
        case load_op is
            when LB =>
                -- Load Byte with sign extension
                if selected_byte(7) = '1' then
                    data_out <= x"FFFFFF" & selected_byte; -- Sign extend
                else
                    data_out <= x"000000" & selected_byte; -- Zero extend
                end if;

            when LBU =>
                -- Load Byte with zero extension
                data_out <= x"000000" & selected_byte;

            when LH =>
                -- Load Halfword with sign extension
                if selected_halfword(15) = '1' then
                    data_out <= x"FFFF" & selected_halfword; -- Sign extend
                else
                    data_out <= x"0000" & selected_halfword; -- Zero extend
                end if;

            when LHU =>
                -- Load Halfword with zero extension
                data_out <= x"0000" & selected_halfword;

            when LW =>
                -- Load Word (no extension needed)
                data_out <= data;

            when others =>
                data_out <= x"00000000"; -- Default case
        end case;
    end process;
end behavioral;