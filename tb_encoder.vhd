

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity tb_encoder is

end tb_encoder;

architecture Behavioral of tb_encoder is

component encoder is
	port (
			data_in : in  std_logic_vector(3 downto 0);
			f_out   : out std_logic_vector(1 downto 0)
	);
end component;

signal data_in : std_logic_vector(3 downto 0) := (others => '0');
signal f_out   : std_logic_vector(1 downto 0) := (others => '0');

begin

		DUT : encoder
			port map(
						data_in => data_in,
						f_out   => f_out
			);
		

		test : process
			begin
			
				wait for 20 ns;
				data_in <= "0001";
				wait for 10 ns;
				data_in <= "0010";
				wait for 10 ns;
				data_in <= "0100";
				wait for 10 ns;
				data_in <= "1000";
				wait for 10 ns;
		
		end process test;
		

end Behavioral;
