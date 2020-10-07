	component IP is
		port (
			clk_clk       : in  std_logic                    := 'X'; -- clk
			reset_reset_n : in  std_logic                    := 'X'; -- reset_n
			led_name      : out std_logic_vector(3 downto 0)         -- name
		);
	end component IP;

	u0 : component IP
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, -- reset.reset_n
			led_name      => CONNECTED_TO_led_name       --   led.name
		);

