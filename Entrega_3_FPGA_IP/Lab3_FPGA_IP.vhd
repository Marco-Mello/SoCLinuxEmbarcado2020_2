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
 begin
   
end rtl; 


 