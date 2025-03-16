library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity encoder is
	port (
			data_in : in  std_logic_vector(3 downto 0);
			f_out   : out std_logic_vector(1 downto 0)
	);
end encoder;

architecture Behavioral of encoder is



begin
	process (data_in)
		begin
			case data_in is		
				when "0001" => 
					f_out <= "00";
				when "0010" => 
					f_out <= "01";
				when "0100" => 
					f_out <= "10";
				when "1000" => 
					f_out <= "11";
				when others => 
					f_out <= "00";
			end case;
	end process;
end Behavioral;
