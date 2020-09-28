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
        LEDs               : out std_logic_vector(LEN - 1 downto 0) := (others => '0');

        -- Avalion Memmory Mapped Slave
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

  component stepmotor is port (
    clk   : in std_logic;   
    en    : in std_logic;
    dir   : in std_logic;
    vel   : in std_logic_vector(1 downto 0);
    fases : out std_logic_vector(3 downto 0));
  end component;

begin

  process(clk)
  begin
    if (rising_edge(clk)) then
      if  (rst = '1') then
        reg_setting <= (others => '0');
        reg_vel <= (others => '0');
      else
        if (avs_write = '1') then
          case avs_address is
            when "000" => reg_setting <= avs_writedata;
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
  end process;

  stepmotor_en  <= reg_settings(0);
  stepmotor_dir <= reg_settings(1);
  stepmotor_vel <= reg_vel(1 downto 0);

  u0 : component MotorPasso
    port map (
      chaves_export => CONNECTED_TO_chaves_export, -- chaves.export
      clk_clk       => CONNECTED_TO_clk_clk,       --    clk.clk
      leds_name     => CONNECTED_TO_leds_name,     --   leds.name
      reset_reset_n => CONNECTED_TO_reset_reset_n  --  reset.reset_n
end rtl;
