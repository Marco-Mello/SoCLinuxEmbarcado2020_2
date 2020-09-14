	component MotorPasso is
		port (
			clk_clk       : in  std_logic                    := 'X';             -- clk
			reset_reset_n : in  std_logic                    := 'X';             -- reset_n
			chaves_export : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			fases_export  : out std_logic_vector(3 downto 0)                     -- export
		);
	end component MotorPasso;

	u0 : component MotorPasso
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --    clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, --  reset.reset_n
			chaves_export => CONNECTED_TO_chaves_export, -- chaves.export
			fases_export  => CONNECTED_TO_fases_export   --  fases.export
		);

