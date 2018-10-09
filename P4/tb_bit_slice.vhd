library ieee;
use ieee.std_logic_1164.all;

entity tb_bit_slice is
end tb_bit_slice;

architecture tb_behave of tb_bit_slice is
 component bit_slice is
  port(
   a, b, pin, min : in std_logic;
   pout, mout, fout : out std_logic
  );
 end component;
 
 signal t_a, t_b, t_pin, t_min, t_pout, t_mout, t_fout : std_logic;

 begin
  U1 : bit_slice port map(t_a, t_b, t_pin, t_min, t_pout, t_mout, t_fout);
  test_process : process
  begin

   t_pin <= '0';
   t_min <= '0';
   t_a <= '0';
   t_b <= '0';
   wait for 3 ns;

   t_pin <= '0';
   t_min <= '0';
   t_a <= '0';
   t_b <= '1';
   wait for 3 ns;

   t_pin <= '0';
   t_min <= '0';
   t_a <= '1';
   t_b <= '0';
   wait for 3 ns;

   t_pin <= '0';
   t_min <= '0';
   t_a <= '1';
   t_b <= '1';
   wait for 3 ns;

   t_pin <= '1';
   t_min <= '1';
   t_a <= '0';
   t_b <= '0';
   wait for 3 ns;

   t_pin <= '1';
   t_min <= '1';
   t_a <= '0';
   t_b <= '1';
   wait for 3 ns;

   t_pin <= '1';
   t_min <= '1';
   t_a <= '1';
   t_b <= '0';
   wait for 3 ns;

   t_pin <= '1';
   t_min <= '1';
   t_a <= '1';
   t_b <= '1';
   wait for 3 ns;
   wait;
  end process;
end tb_behave;