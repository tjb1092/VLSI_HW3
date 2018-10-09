library ieee;
use ieee.std_logic_1164.all;

entity tb_inverter is
end tb_inverter;

architecture tb_behave of tb_inverter is
 component inverter
  port(
   i : in std_logic;
   ibar : out std_logic
  );
  end component;
  
  signal t_i, t_ibar : std_logic;

  begin
    U1: inverter port map (t_i, t_ibar);
    
    test_process: process
    begin
     t_i <= '0';
     wait for 500 ps;

     t_i <= '1';
     wait for 500 ps;
     
     wait;
    end process;

end tb_behave;

