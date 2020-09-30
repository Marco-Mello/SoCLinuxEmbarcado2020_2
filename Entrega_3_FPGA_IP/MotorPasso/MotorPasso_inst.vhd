	component MotorPasso is
		port (
			chaves_export : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			clk_clk       : in  std_logic                    := 'X';             -- clk
			reset_reset_n : in  std_logic                    := 'X';             -- reset_n
			phases_phases : out std_logic_vector(3 downto 0)                     -- phases
		);
	end component MotorPasso;

	u0 : component MotorPasso
		port map (
			chaves_export => CONNECTED_TO_chaves_export, -- chaves.export
			clk_clk       => CONNECTED_TO_clk_clk,       --    clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, --  reset.reset_n
			phases_phases => CONNECTED_TO_phases_phases  -- phases.phases
		);

