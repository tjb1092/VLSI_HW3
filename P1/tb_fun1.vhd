library ieee;
use ieee.std_logic_1164.all;

entity tb_fun is
end tb_fun;

architecture tb_behave of tb_fun is 

 component fun
  generic(
  n : integer);
  port(
   a, b : in std_logic_vector((n-1) downto 0);
   cout : out std_logic_vector((n-1) downto 0));

 end component;
 
 constant n : integer := 3;
 signal t_inA, t_inB, t_outC : std_logic_vector((n-1) downto 0);

 begin

  U1 : fun 
   generic map (n)
   port map (t_inA, t_inB, t_outC);

  test_process: process
  begin
   t_inA <= "000";
   t_inB <= "000";
   wait for 20 ns;

   t_inA <= "111";
   t_inB <= "000";
   wait for 20 ns;

   t_inA <= "000";
   t_inB <= "111";
   wait for 20 ns;

   t_inA <= "101";
   t_inB <= "000";
   wait for 20 ns;

   t_inA <= "010";
   t_inB <= "000";
   wait for 20 ns;

   t_inA <= "101";
   t_inB <= "111";
   wait for 20 ns;

   t_inA <= "010";
   t_inB <= "111";
   wait for 20 ns;

   t_inA <= "000";
   t_inB <= "101";
   wait for 20 ns;

   t_inA <= "000";
   t_inB <= "010";
   wait for 20 ns;
   
   t_inA <= "111";
   t_inB <= "101";
   wait for 20 ns;

   t_inA <= "111";
   t_inB <= "010";
   wait for 20 ns;

   t_inA <= "101";
   t_inB <= "101";
   wait for 20 ns;

   t_inA <= "101";
   t_inB <= "010";
   wait for 20 ns;

   t_inA <= "010";
   t_inB <= "101";
   wait for 20 ns;

   t_inA <= "010";
   t_inB <= "010";
   wait for 20 ns;

   t_inA <= "001";
   t_inB <= "001";
   wait for 20 ns;

   t_inA <= "010";
   t_inB <= "010";
   wait for 20 ns;

   t_inA <= "100";
   t_inB <= "100";
   wait for 20 ns;


   t_inA <= "111";
   t_inB <= "001";
   wait for 20 ns;
   
   t_inA <= "100";
   t_inB <= "011";
   wait for 20 ns;



   wait;
      
  end process;

end tb_behave;
