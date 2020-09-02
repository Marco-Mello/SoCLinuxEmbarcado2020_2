library IEEE;
use IEEE.std_logic_1164.all;

entity Lab1_FPGA_RTL is
  port (
    -- Gloabals
    fpga_clk_50   : in  std_logic;        

    -- I/Os
    fpga_led_pio  : out std_logic_vector(5 downto 0);
    fpga_SW_pio  : in std_logic_vector(7 downto 0)

    );
end entity Lab1_FPGA_RTL;

architecture rtl of Lab1_FPGA_RTL is

-- signal
  signal blink : std_logic;
  constant  speed1 : integer := 10000000;
  constant  speed2 : integer := 20000000;
  constant  speed3 : integer := 30000000;

begin 

  pwm :  entity work.pwm
    port map( clk => fpga_clk_50,
              reset_n => '1',
              ena =>'1',
              duty => fpga_SW_pio,   
              pwm_out(0) => blink);
              

  process(fpga_clk_50) 
    variable counter : integer range 0 to 25000000 := 0;
    variable speed : integer := 5000000;
    
  begin
    if (fpga_SW_pio ="01") then
      speed := speed1;
    elsif (fpga_SW_pio = "10") then
           speed := speed2;
    else
      speed := speed3;
    end if;

      -- if (rising_edge(fpga_clk_50)) then

      --   if (counter < speed ) then
      --     counter := counter + 1;
      --   else
      --     blink <= not blink;
      --     counter := 0;
      --   end if;
      -- end if;
  end process;

  fpga_led_pio(0) <= blink;
  fpga_led_pio(1) <= blink;
  fpga_led_pio(2) <= blink;
  fpga_led_pio(3) <= blink;
  fpga_led_pio(4) <= blink;
  fpga_led_pio(5) <= blink;

end rtl;
