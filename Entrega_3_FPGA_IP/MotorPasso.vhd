library IEEE;
use IEEE.std_logic_1164.all;

entity MotorPasso is
    port (
        -- Gloabals
        fpga_clk_50        : in  std_logic;             -- clock.clk

        -- I/Os
        fpga_fases_pio       : out std_logic_vector(3 downto 0);
		  fpga_chaves_pio		  : in  std_logic_vector(3 downto 0)
		  
  );
end entity MotorPasso;

architecture rtl of MotorPasso is
    component motor is
        port (
            clk_clk       : in  std_logic                    := 'X';             -- clk
            chaves_export : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
            fases_export  : out std_logic_vector(3 downto 0);                    -- export
            reset_reset_n : in  std_logic                    := 'X'              -- reset_n
        );
    end component motor;

	 begin
	 
    u0 : component motor
        port map (
            clk_clk       => fpga_clk_50,       --    clk.clk
            chaves_export => fpga_chaves_pio, -- chaves.export
            fases_export  => fpga_chaves_pio,  --  fases.export
            reset_reset_n => '1'  --  reset.reset_n
        );
end rtl;