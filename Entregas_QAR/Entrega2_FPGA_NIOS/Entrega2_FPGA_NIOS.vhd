

library IEEE;
use IEEE.std_logic_1164.all;

entity LAB2_FPGA_NIOS is
    port (
        -- Gloabals
        fpga_clk_50        : in  std_logic;             -- clock.clk

        -- I/Os
        EN       : in std_logic;
		  DIR       : in std_logic;
		  VEL       : in std_logic_vector(1 downto 0);
				
		 PHASES       : out std_logic_vector(3 downto 0)
  );
end entity LAB2_FPGA_NIOS;

architecture rtl of LAB2_FPGA_NIOS is

component Entrega2_FPGA_NIOS is
        port (
            clk_clk        : in  std_logic                    := 'X';             -- clk
            phases_export  : out std_logic_vector(7 downto 0);                    -- export
            reset_reset_n  : in  std_logic                    := 'X';             -- reset_n
            switchs_export : in  std_logic_vector(7 downto 0) := (others => 'X')  -- export
        );
    end component Entrega2_FPGA_NIOS;

begin

u0 : component Entrega2_FPGA_NIOS
        port map (
            clk_clk        => fpga_clk_50,        --     clk.clk
            phases_export  => PHASES,  --  phases.export
            reset_reset_n  => '1',  --   reset.reset_n
            switchs_export(0) => EN,  -- switchs.export
				switchs_export(1) => DIR,  -- switchs.export
				switchs_export(2) => VEL(0),  -- switchs.export
				switchs_export(3) => VEL(1)  -- switchs.export
        );

end rtl;




    

