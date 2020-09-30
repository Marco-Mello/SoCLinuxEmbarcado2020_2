library IEEE;
use IEEE.std_logic_1164.all;

entity passo is
    port (
        -- Gloabals
        fpga_clk_50        : in  std_logic;             -- clock.clk

        -- I/Os
        fpga_fases_pio       : out std_logic_vector(3 downto 0);
		  fpga_chaves_pio		  : in  std_logic_vector(3 downto 0)
		  
  );
end entity passo;

architecture rtl of passo is

    component motorpasso is
        port (
            clk_clk       : in  std_logic                    := 'X';             -- clk
            chaves_export : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
            phases_phases  : out std_logic_vector(3 downto 0);                    -- export
            reset_reset_n : in  std_logic                    := 'X'              -- reset_n
        );
    end component motorpasso;

	 begin
	 
    u0 : component motorpasso
        port map (
            clk_clk       => fpga_clk_50,       --    clk.clk
            chaves_export => fpga_chaves_pio, -- chaves.export
            phases_phases  => fpga_fases_pio,  --  fases.export
            reset_reset_n => '0'  --  reset.reset_n
        );
end rtl;