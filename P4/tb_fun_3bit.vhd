library ieee;
use ieee.std_logic_1164.all;

entity tb_fun_3bit is
end entity tb_fun_3bit;

architecture tb_behave of tb_fun_3bit is
 component fun is
 generic(
  n : integer
 );
 port(
 A, B : in std_logic_vector((n-1) downto 0);
 C : out std_logic_vector((n-1) downto 0)
 );
 end component;
 
 constant n: integer := 3;
 signal t_A, t_B, t_C : std_logic_vector((n-1) downto 0); 

 begin

  U1: fun
   generic map(n)
   port map(t_A, t_B, t_C);

 test_process : process 
 begin
  t_A <= "000";
  t_B <= "000";
  wait for 10 ns;

  t_A <= "111";
  t_B <= "000";
  wait for 10 ns;

  t_A <= "000";
  t_B <= "111";
  wait for 10 ns;

  t_A <= "101";
  t_B <= "000";
  wait for 10 ns;

  t_A <= "010";
  t_B <= "000";
  wait for 10 ns;

  t_A <= "101";
  t_B <= "111";
  wait for 10 ns;

  t_A <= "010";
  t_B <= "111";
  wait for  10 ns;

  t_A <= "000";
  t_B <= "101";
  wait for 10 ns;

  t_A <= "000";
  t_B <= "010";
  wait for 10 ns;
  
  t_A <= "111";
  t_B <= "101";
  wait for 10 ns;

  t_A <= "111";
  t_B <= "010";
  wait for 10 ns;

  t_A <= "101";
  t_B <= "101";
  wait for 10 ns;

  t_A <= "101";
  t_B <= "010";
  wait for 10 ns;

  t_A <= "010";
  t_B <= "101";
  wait for 10 ns;

  t_A <= "010";
  t_B <= "010";
  wait for 10 ns;

  t_A <= "001";
  t_B <= "001";
  wait for 10 ns;

  t_A <= "010";
  t_B <= "010";
  wait for 10 ns;

  t_A <= "100";
  t_B <= "100";
  wait for 10 ns;

  t_A <= "111";
  t_B <= "001";
  wait for 10 ns;
  
  t_A <= "100";
  t_B <= "011";
  wait for 10 ns;

  wait;

 end process;

end tb_behave;
