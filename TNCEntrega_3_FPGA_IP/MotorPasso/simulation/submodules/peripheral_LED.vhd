library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use work.all;
 
entity peripheral_LED is
    generic (
        LEN  : natural := 4
    );
    port (
        -- Gloabals
        clk                : in  std_logic                     := '0';             
        reset              : in  std_logic                     := '0';             
 
        -- I/Os
        PHASES               : out std_logic_vector(3 downto 0) ;
 
        --Memmory Mapped Slave
        avs_address     : in  std_logic_vector(3 downto 0)  := (others => '0'); 
        avs_read        : in  std_logic                     := '0';             
        avs_readdata    : out std_logic_vector(31 downto 0) := (others => '0'); 
        avs_write       : in  std_logic                     := '0';             
        avs_writedata   : in  std_logic_vector(31 downto 0) := (others => '0')
    );
end entity peripheral_LED;
 
architecture rtl of peripheral_LED is
 
  --Registradores
  signal reg_settings : std_logic_vector(31 downto 0);
  signal reg_vel      : std_logic_vector(31 downto 0);
  -- Controles
  signal stepmotor_en : std_logic;
  signal stepmotor_dir: std_logic;
  signal stepmotor_vel: std_logic_vector(1 downto 0 );
 
  component Entrega1_FPGA_RTL is port (
    fpga_clk_50   : in std_logic;   
    en    : in std_logic;
    dir   : in std_logic;
    vel   : in std_logic_vector(1 downto 0);
    PHASES : out std_logic_vector(3 downto 0));
  end component;
 
begin
 
  process(clk)
  begin
    if (rising_edge(clk)) then
      if  (reset = '1') then
        reg_settings <= (others => '0');
        reg_vel <= (others => '0');
      else
        if (avs_write = '1') then
          case avs_address is
            when "000" => reg_settings <= avs_writedata;
            when "001" => reg_vel     <= avs_writedata;
            when others => null;
          end case;
        end if;
        if (avs_read= '1') then
          case avs_address is
            when "000" => avs_readdata<= reg_settings;
            when "001" => avs_readdata<= reg_vel;
            when "010" => avs_readdata<= x"AAAA5555";
            when others => avs_readdata <= (others => '0');
          end case;
        end if;
    end if;
    end if;
  end process;
 
  stepmotor_en  <= reg_settings(0);
  stepmotor_dir <= reg_settings(1);
  stepmotor_vel <= reg_vel(1 downto 0);
 
  u0 : component Entrega1_FPGA_RTL 
    port map (
      fpga_clk_50   => clk,
      EN            => stepmotor_en, -- chaves.export
      DIR           => stepmotor_dir,       --    clk.clk
      VEL           => stepmotor_vel,     --   leds.name
      PHASES        => PHASES );       --  reset.reset_n
end rtl;

