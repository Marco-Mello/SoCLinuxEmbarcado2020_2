library IEEE;
use IEEE.std_logic_1164.all;

entity Entrega2_FPGA_NIOS is
	 generic ( numeroPassos : natural := 50000000 -- 2037 = 1 volta
);
    port (
        -- Gloabals
        fpga_clk_50   : in  std_logic;        

        -- In
        EN  : in std_logic;
		  DIR  : in std_logic;
		  VEL  : in std_logic_vector(1 downto 0);
		  
		 -- Out
		  PHASES : out std_logic_vector(3 downto 0)
  );
end entity Entrega2_FPGA_NIOS;

architecture rtl of Entrega2_FPGA_NIOS is

-- signal
TYPE STATE_TYPE IS (s0, s1, s2, s3);
SIGNAL state  : STATE_TYPE := s0;
signal enable : std_logic  := '0';
signal topCounter : integer range 0 to 50000000;
-- signal delay : integer range -50000000 to 50000000 := 50000000; --rampa

begin

 process(fpga_clk_50)
 
  variable passos : integer range 0 to 50000000 := numeroPassos; -- 2037 = 1 volta
  
  begin
    if (rising_edge(fpga_clk_50)) then
	 
      CASE state IS
      WHEN s0=>
			if (enable = '1' and EN = '1' and not(passos = 0)) then
				passos := passos -1 ;
				if(DIR = '1') then state <= s1;
				else state <= s3;
				end if;
			end if;
			
      WHEN s1=>
        if (enable = '1' and EN = '1' and not(passos = 0)) then
				passos := passos -1 ;
				if(DIR = '1') then state <= s2;
				else state <= s0;
				end if;
			end if;
			
      WHEN s2=>
        if (enable = '1' and EN = '1' and not(passos = 0)) then
				passos := passos -1 ;
				if(DIR = '1') then state <= s3;
				else  state <= s1;
				end if;
			end if;
			
      WHEN s3=>
        if (enable = '1' and EN = '1' and not(passos = 0)) then
		  passos := passos -1 ;
				if(DIR = '1') then state <= s0;
				else state <= s2;
				end if;
			end if;
			
      WHEN OTHERS=>
        state <= s0;
      END CASE;
		
    end if;
  end process;

  PROCESS (state)
   BEGIN
      CASE state IS
        WHEN s0 =>
          PHASES <= "0001";
        WHEN s1 =>
          PHASES <= "0010";
        WHEN s2 =>
          PHASES <= "0100";
        when s3 =>
          PHASES <= "1000";
        when others =>
          PHASES <= "0000";
      END CASE;
   END PROCESS;


  PROCESS (VEL)
     BEGIN
      CASE VEL IS
        WHEN "00" =>
          topCounter <= 5000000;
        WHEN "01" =>
          topCounter <= 2500000;
        WHEN "10" =>
          topCounter <= 1250000;
        WHEN "11" =>
          topCounter <= 100000;
			when others =>
         null ;
      END CASE;
   END PROCESS;


  process(fpga_clk_50)
    variable counter : integer range 0 to 50000000 := 0;

  begin
    if (rising_edge(fpga_clk_50)) then
      --if (counter < topCounter + delay) then --rampa
		  if (counter < topCounter) then
			counter := counter + 1;
			--if ( delay >= 0) then --rampa
			--delay <= delay - 10;	--rampa
			--end if;					--rampa
			enable  <= '0';
		else
		  --delay <= 50000000;		--rampa
        counter := 0;
        enable  <= '1';
	   end if;
    end if;
  end process;


end rtl;