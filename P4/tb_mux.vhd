library ieee;
use ieee.std_logic_1164.all;

entity tb_mux is
end entity tb_mux;

architecture tb_behave of tb_mux is
 component mux
  port(
   abar, bbar, min, minbar : in std_logic;
   mout, f : out std_logic
  );
 end component;

 signal t_abar, t_bbar, t_min, t_minbar, t_mout, t_f : std_logic;
 
 begin 
  U1 : mux port map (t_abar, t_bbar, t_min, t_minbar, t_mout, t_f);

  test_process: process
  begin
   
   t_min <='0';
   t_minbar <='1';
   t_abar <= '0';
   t_bbar <= '0';
   wait for 600 ps;

   t_min <='0';
   t_minbar <='1';
   t_abar <= '0';
   t_bbar <= '1';
   wait for 600 ps;

   t_min <='0';
   t_minbar <='1';
   t_abar <= '1';
   t_bbar <= '0';
   wait for 600 ps;

   t_min <='0';
   t_minbar <='1';
   t_abar <= '1';
   t_bbar <= '1';
   wait for 600 ps;
  
   t_min <='1';
   t_minbar <='0';
   t_abar <= '0';
   t_bbar <= '0';
   wait for 600 ps;

   t_min <='1';
   t_minbar <='0';
   t_abar <= '0';
   t_bbar <= '1';
   wait for 600 ps;

   t_min <='1';
   t_minbar <='0';
   t_abar <= '1';
   t_bbar <= '0';
   wait for 600 ps;

   t_min <='1';
   t_minbar <='0';
   t_abar <= '1';
   t_bbar <= '1';
   wait for 600 ps;  
 
   wait;
  end process;

end tb_behave;
