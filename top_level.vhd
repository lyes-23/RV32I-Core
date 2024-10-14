library ieee; 
use ieee.std_logic_1164.all;


library work;
use work.constants.all;


entity top_level is 
port(

clk: in std_logic;
reset: in std_logic

);
end top_level; 


architecture behavioral of top_level is

signal pcu_out: std_logic_vector(XLENM1 downto 0);
signal loadpc: std_logic;
signal mem_instr: std_logic_vector(XLENM1 downto 0);


signal instr_rs1_addr: std_logic_vector(4 downto 0);
signal instr_rs2_addr: std_logic_vector(4 downto 0);
signal instr_rd_addr : std_logic_vector(4 downto 0);
signal imm: std_logic_vector(XLENM1 downto 0); 
signal aluop: std_logic_vector(6 downto 0); 
signal opcode: std_logic_vector(10 downto 0);

signal rd_en: std_logic;

signal rs1_data_s: std_logic_vector(XLENM1 downto 0); 
signal rs2_data_s: std_logic_vector(XLENM1 downto 0); 

signal result_s: std_logic_vector(XLENM1 downto 0); 

signal data_mem_s: 		std_logic_vector(XLENM1 downto 0);
signal data_mem: 		std_logic_vector(XLENM1 downto 0);

signal F_s: 				std_logic_vector(XLENM1 downto 0); 
signal funct3 : std_logic_vector(2 downto 0);
signal funct7 : std_logic; 
signal zero_flag: std_logic;
signal wrMem		: 		std_logic;
signal loadAcc		:		std_logic;
signal LM_out		:  std_logic_vector(XLENM1 downto 0); 
signal data_out_mux: std_logic_vector(XLENM1 downto 0);
signal mux_rs1_pc:   std_logic_vector(XLENM1 downto 0);
signal Bres,Btype : std_logic;

component pc_unit is
	port (
	I_clk, I_en,load,I_reset: in std_logic;
	din: in std_logic_vector(XLENM1 downto 0);
	O_PC: out std_logic_vector(XLENM1 downto 0)
); 
end component;

component instr_memory is
	port (
		
		pc_addr	: in std_logic_vector(XLENM1 downto 0);
		instruction		: out std_logic_vector(XLENM1 downto 0)
		);
end component;

component decoder is
port (
	instr: in std_logic_vector(31 downto 0);
	Bres: in std_logic;
	op_out	:	out		std_logic_vector(10 downto 0):= (others => 'Z');
	alu_op   :  out      std_logic_vector(6 downto 0);
	imm		:	out		std_logic_vector(31 downto 0):= (others => 'Z');
	rs1		:	out		std_logic_vector( 4 downto 0):= (others => 'Z');
	rs2		:	out		std_logic_vector( 4 downto 0):= (others => 'Z');
	rd		:	out		std_logic_vector( 4 downto 0):= (others => 'Z');
	funct3_out   :  out		std_logic_vector( 2 downto 0);
	funct7_out   :  out		std_logic;
	rd_en: out std_logic;
	loadpc: out std_logic;
	Btype : out std_logic;
	wrMem		:  out std_logic;
	load_mem	:  out std_logic
	);
end component;

component reg_file is
	port ( 
	
		clk		: in std_logic;
		rs1_addr	: in std_logic_vector(4 downto  0);
		rs2_addr	: in std_logic_vector(4 downto  0);
		rd_addr  : in std_logic_vector(4 downto  0);
		rd_data	: in std_logic_vector(XLENM1 downto 0);
		we_rd	: in std_logic ;
		rs1_data		: out std_logic_vector(XLENM1 downto 0);
		rs2_data		: out std_logic_vector(XLENM1 downto 0)
	);
end component;

component alu is
	port (
	
		
		  opcode      : in  std_logic_vector(6 downto 0);
        funct3      : in  std_logic_vector(2 downto 0);
        funct7      : in  std_logic;
        rs1_in      : in  std_logic_vector(31 downto 0);
        rs2_in      : in  std_logic_vector(31 downto 0);
        imm_in      : in  std_logic_vector(31 downto 0);
		  
        alu_result  : out std_logic_vector(31 downto 0);
        zero_flag   : out std_logic
		
		);
end component;

component data_memory is 
  port(
		clk		: in std_logic;
		addr	: in std_logic_vector(XLENM1 downto 0);
		data	: in std_logic_vector(XLENM1 downto 0);
		we		: in std_logic ;
		loadacc: in std_logic;
		opcode : in std_logic_vector(10 downto 0); 
		data_out: out std_logic_vector(XLENM1 downto 0)
); 
end component; 


component LM is 
port(
		data : in std_logic_vector(31 downto 0);   
		funct3: in std_logic_vector(2 downto 0);
		res   :  in std_logic_vector(1 downto 0) ;
		data_out: out std_logic_vector(31 downto 0) 
); 
end component; 

component SM is 
port(
rs2_data: in std_logic_vector(31 downto 0);
funct3 :  in std_logic_vector(2 downto 0);
clk   :   in std_logic;
res    :  in std_logic_vector(31 downto 0); 
data   :  in std_logic_vector(31 downto 0);
data_mem: out std_logic_vector(31 downto 0)
);
end component; 

component BC is 
port(
Btype: in std_logic;
funct3: in std_logic_vector(2 downto 0);
rs1_in,rs2_in : in std_logic_vector(31 downto 0) ;
Bres : out std_logic
); 
end component;

begin 
	
Load_memory: process(LM_out,loadAcc)
begin 

if loadAcc = '0' then
    data_out_mux <= F_s(31 downto 2) & "00";
else
    data_out_mux <= LM_out;
end if;
end process; 

branching_counter: process(Btype, pcu_out, rs1_data_s)
begin
if Btype = '1' then 
	mux_rs1_pc <= pcu_out; 
	else
	mux_rs1_pc <= rs1_data_s;
	end if; 
end process;
	

program_counter: pc_unit port map(
	I_clk => clk,
	I_en  => '1',
	I_reset =>reset,
	load => loadpc,
	din=> result_s,
	O_PC => pcu_out
);


instruction_memory: instr_memory port map (
	
	pc_addr	=> pcu_out,
	instruction => mem_instr
	);
	
decoder1 : decoder port map (
	instr => mem_instr,
	Bres => Bres,
	op_out=>	opcode,
	alu_op => aluop,
	imm	=> imm,
	rs1	=>	instr_rs1_addr,
	rs2	=> instr_rs2_addr,
	rd	   => instr_rd_addr,
	loadpc=> loadpc,
	rd_en =>  rd_en,
	wrMem		=> wrMem,
	load_mem => loadAcc,
	funct7_out=> funct7,
	Btype    =>Btype,
	funct3_out   => funct3
	);
	
register_file: reg_file port map (

		clk		=> clk,
		rs1_addr	=> instr_rs1_addr,
		rs2_addr	=> instr_rs2_addr,
		rd_addr  => instr_rd_addr,
		rd_data	=> data_out_mux,
		we_rd	   => rd_en,
		rs1_data	=> rs1_data_s,
		rs2_data	=> rs2_data_s
	);

ALU1: alu port map(
		opcode		=> aluop,
		imm_in	=>imm,
		rs1_in	=> mux_rs1_pc,
		rs2_in	=> rs2_data_s,
		
		funct3 => funct3,
		funct7 => funct7,
		
		alu_result	 	=>	F_s,
		zero_flag => zero_flag
		
);

data_memory1: data_memory port map(
		clk	=> clk,
		addr	=> F_s,
		data	=> data_mem,
		we		=> wrMem,
		loadacc => loadAcc,
		data_out => data_mem_s,
		opcode => opcode
		);
	
	
LoadMem: LM port map (
	data=> data_mem_s,
	funct3 => funct3,
	res   =>  F_s(1 downto 0),
	data_out => LM_out
); 
 

storeMem : SM port map (

rs2_data => rs2_data_s,
funct3 =>	funct3,
clk    => clk,
res    =>   F_s,
data   =>   data_mem_s,
data_mem => data_mem

);

BranchCounter: BC port map (
	Btype =>Btype, 
	funct3=>funct3,
	rs1_in=>rs1_data_s,
	rs2_in=>rs2_data_s, 
	Bres  => Bres
); 



end architecture;