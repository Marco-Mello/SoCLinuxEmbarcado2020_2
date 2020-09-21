library IEEE;
use IEEE.std_logic_1164.all;

entity Lab3_FPGA_IP is
    port (
        -- Gloabals
        fpga_clk_50        : in  std_logic;             -- clock.clk

        -- I/Os
        fpga_fases_pio       : out std_logic_vector(3 downto 0);
		  fpga_chaves_pio		  : in  std_logic_vector(3 downto 0)
		  
  );
end entity Lab3_FPGA_IP;

architecture rtl of Lab3_FPGA_IP is

	
    component MotorPasso is
        port (
            chaves_export : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
            clk_clk       : in  std_logic                    := 'X';             -- clk
            leds_name     : out std_logic_vector(3 downto 0);                    -- name
            reset_reset_n : in  std_logic                    := 'X'              -- reset_n
        );
    end component MotorPasso;
	 
	 
	 begin

    u0 : component MotorPasso
        port map (
            clk_clk       => fpga_clk_50,       --    clk.clk
            chaves_export => fpga_chaves_pio, -- chaves.export
            leds_name  => fpga_fases_pio,  --  fases.export
            reset_reset_n => '1'  --  reset.reset_n
        );
end rtl; 


 