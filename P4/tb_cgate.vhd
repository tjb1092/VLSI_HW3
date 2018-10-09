library ieee;
use ieee.std_logic_1164.all;

entity tb_cgate is
end entity tb_cgate;

architecture tb_behave of tb_cgate is

 component cgate
 port(
  a, abar, b, bbar, pin, pinbar : in std_logic;
  pout : out std_logic
 );
 end component;
 
 signal t_a, t_abar, t_b, t_bbar, t_pin, t_pinbar, t_pout : std_logic;
 
 begin
  U1 : cgate port map (t_a, t_abar, t_b, t_bbar, t_pin, t_pinbar, t_pout);

  test_process : process
  begin
   t_pin <= '0';
   t_pinbar <= '1';
   t_a <= '0';
   t_abar <= '1';
   t_b <= '0';
   t_bbar <= '1';
   wait for 2 ns;

   t_pin <= '0';
   t_pinbar <= '1';
   t_a <= '0';
   t_abar <= '1';
   t_b <= '1';
   t_bbar <= '0';
   wait for 2 ns;

   t_pin <= '0';
   t_pinbar <= '1';
   t_a <= '1';
   t_abar <= '0';
   t_b <= '0';
   t_bbar <= '1';
   wait for 2 ns;

   t_pin <= '0';
   t_pinbar <= '1';
   t_a <= '1';
   t_abar <= '0';
   t_b <= '1';
   t_bbar <= '0';
   wait for 2 ns;

   t_pin <= '1';
   t_pinbar <= '0';
   t_a <= '0';
   t_abar <= '1';
   t_b <= '0';
   t_bbar <= '1';
   wait for 2 ns;

   t_pin <= '1';
   t_pinbar <= '0';
   t_a <= '0';
   t_abar <= '1';
   t_b <= '1';
   t_bbar <= '0';
   wait for 2 ns;

   t_pin <= '1';
   t_pinbar <= '0';
   t_a <= '1';
   t_abar <= '0';
   t_b <= '0';
   t_bbar <= '1';
   wait for 2 ns;

   t_pin <= '1';
   t_pinbar <= '0';
   t_a <= '1';
   t_abar <= '0';
   t_b <= '1';
   t_bbar <= '0';
   wait for 2 ns;
   wait;

  end process;

end tb_behave;
