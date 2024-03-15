-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
------------------- Author:    Youssef Mohammed AbdelFattah -----------------
------------------- Component: TB_DDFS               	  	-----------------
------------------- Version:   1.0 						    -----------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
-- use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity tb_DDFS is
end entity tb_DDFS;



architecture struct of tb_DDFS is

	constant N       : positive := 8;
	constant M       : positive := 8;

	constant clk_per :  TIME     := 1 ns;  -- clk period

	component DDFS is
			generic (
				N : positive := 8;
 				M : positive := 8
			);
			port(
				clk   : in  std_logic;                      -- clk @ 125 MHz
				reset : in  std_logic;                      -- async reset
				wave  : in  std_logic_vector(1 downto 0);   -- Generated waveform.
				fw    : in  std_logic_vector(N-1 downto 0); -- frequency word
				yq    : out std_logic_vector(M-1 downto 0)  -- sin quantized. M is the size
			);

	end component;
		
	signal clk_ext   : std_logic := '0';
	signal reset_ext : std_logic := '1';
	signal wave_sel  : std_logic_vector(1 downto 0);
	signal fw_ext    : std_logic_vector(N-1 downto 0);
	signal yq_out    : std_logic_vector(M-1 downto 0);
	SIGNAL Testing   : Boolean := True;


	begin

		clk_ext <= NOT clk_ext AFTER clk_per/2 WHEN Testing;-- ELSE '0';

		i_dut1: DDFS
			generic map (N, M)
			port map(clk_ext, reset_ext, wave_sel, fw_ext, yq_out);

		drive_p: process
	  	begin
	  		wait for 80 ns;
	  		reset_ext <= '0';

		 -- Square wave generation
		 wave_sel <= "00";
		 fw_ext <= std_logic_vector(to_unsigned(10, fw_ext'length));
		 wait for 800 ns;
		 
		 --Sine wave generations.
		 wave_sel <= "01";
		 fw_ext <= std_logic_vector(to_unsigned(1, fw_ext'length));
		 wait for 800 ns;
		 
		 --triganle wave generations.
		 wave_sel <= "10";
		 fw_ext <= std_logic_vector(to_unsigned(64, fw_ext'length));
		 wait for 800 ns;
		 
		 --stair wave generations.
		 wave_sel <= "11";
		 fw_ext <= std_logic_vector(to_unsigned(60, fw_ext'length));
		 wait for 800 ns;

		  --for i in 0 to 255 loop
		  --wave_sel <= "01";
			  --fw_ext <= std_logic_vector(to_unsigned(i, fw_ext'length));
			  --wait for 800 ns;
		  --end loop;
		  
			-- no signal
			wave_sel <= "10";
			wait for 20 ns;

	  		Testing <= False;
	  		wait;
	  	end process;

end architecture struct;