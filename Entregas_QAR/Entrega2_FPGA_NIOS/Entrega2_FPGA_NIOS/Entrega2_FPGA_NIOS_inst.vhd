	component Entrega2_FPGA_NIOS is
		port (
			clk_clk        : in  std_logic                    := 'X';             -- clk
			phases_export  : out std_logic_vector(7 downto 0);                    -- export
			reset_reset_n  : in  std_logic                    := 'X';             -- reset_n
			switchs_export : in  std_logic_vector(7 downto 0) := (others => 'X')  -- export
		);
	end component Entrega2_FPGA_NIOS;

	u0 : component Entrega2_FPGA_NIOS
		port map (
			clk_clk        => CONNECTED_TO_clk_clk,        --     clk.clk
			phases_export  => CONNECTED_TO_phases_export,  --  phases.export
			reset_reset_n  => CONNECTED_TO_reset_reset_n,  --   reset.reset_n
			switchs_export => CONNECTED_TO_switchs_export  -- switchs.export
		);

