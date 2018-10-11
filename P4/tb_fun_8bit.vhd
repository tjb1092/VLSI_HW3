library ieee;
use ieee.std_logic_1164.all;

entity tb_fun_8bit is 
end entity tb_fun_8bit;

architecture tb_behave of tb_fun_8bit is
 component fun is
  generic(
   n : integer
  );
  port(
   A, B : in std_logic_vector((n-1) downto 0);
   C : out std_logic_vector((n-1) downto 0)
  );
 end component;

 constant n : integer := 8;
 signal t_A, t_B, t_C : std_logic_vector((n-1) downto 0);

 begin
  U1 : fun 
   generic map (n)
   port map (t_A, t_B, t_C);

 test_process : process
 
  begin

   t_A <= "00000000";
   t_B <= "00000000";
   wait for 20 ns;

   t_A <= "11111111";
   t_B <= "00000000";
   wait for 20 ns;
   
   t_A <= "00000000";
   t_B <= "11111111";
   wait for 20 ns;
   
   t_A <= "00000000";
   t_B <= "10101010";
   wait for 20 ns;

   t_A <= "00000000";
   t_B <= "01010101";
   wait for 20 ns;
   
   t_A <= "11111111";
   t_B <= "10101010";
   wait for 20 ns;
   
   t_A <= "11111111";
   t_B <= "01010101";
   wait for 20 ns;
   
   t_A <= "10101010";
   t_B <= "00000000";
   wait for 20 ns;
   
   t_A <= "01010101";
   t_B <= "00000000";
   wait for 20 ns;
   
   t_A <= "10101010";
   t_B <= "11111111";
   wait for 20 ns;
   
   t_A <= "01010101";
   t_B <= "11111111";
   wait for 20 ns;
   
   t_A <= "10101010";
   t_B <= "10101010";
   wait for 20 ns;

   t_A <= "10101010";
   t_B <= "01010101";
   wait for 20 ns;

   t_A <= "01010101";
   t_B <= "10101010";
   wait for 20 ns;

   t_A <= "01010101";
   t_B <= "01010101";
   wait for 20 ns;

   t_A <= "00000001";
   t_B <= "00000000";
   wait for 20 ns;
   
   t_A <= "00000010";
   t_B <= "00000000";
   wait for 20 ns;

   t_A <= "00000100";
   t_B <= "00000000";
   wait for 20 ns;

   t_A <= "00001000";
   t_B <= "00000000";
   wait for 20 ns;

   t_A <= "00010000";
   t_B <= "00000000";
   wait for 20 ns;

   t_A <= "00100000";
   t_B <= "00000000";
   wait for 20 ns;

   t_A <= "01000000";
   t_B <= "00000000";
   wait for 20 ns;

   t_A <= "10000000";
   t_B <= "00000000";
   wait for 20 ns;

   t_A <= "00000000";
   t_B <= "00000001";
   wait for 20 ns;

   t_A <= "00000000";
   t_B <= "00000010";
   wait for 20 ns;

   t_A <= "00000000";
   t_B <= "00000100";
   wait for 20 ns;

   t_A <= "00000000";
   t_B <= "00001000";
   wait for 20 ns;

   t_A <= "00000000";
   t_B <= "00010000";
   wait for 20 ns;

   t_A <= "00000000";
   t_B <= "00100000";
   wait for 20 ns;

   t_A <= "00000000";
   t_B <= "01000000";
   wait for 20 ns;

   t_A <= "00000000";
   t_B <= "10000000";
   wait for 20 ns;

   t_A <= "00000001";
   t_B <= "00000000";
   wait for 20 ns;

   t_A <= "00000010";
   t_B <= "00000001";
   wait for 20 ns;

   t_A <= "00000100";
   t_B <= "00000010";
   wait for 20 ns;

   t_A <= "00001000";
   t_B <= "00000100";
   wait for 20 ns;

   t_A <= "00010000";
   t_B <= "00001000";
   wait for 20 ns;

   t_A <= "00100000";
   t_B <= "00010000";
   wait for 20 ns;

   t_A <= "01000000";
   t_B <= "00100000";
   wait for 20 ns;

   t_A <= "10000000";
   t_B <= "01000000";
   wait for 20 ns;

   t_A <= "00000000";
   t_B <= "10000000";
   wait for 20 ns;

   t_A <= "00000011";
   t_B <= "00000000";
   wait for 20 ns;

   t_A <= "00000110";
   t_B <= "00000001";
   wait for 20 ns;

   t_A <= "00001100";
   t_B <= "00000010";
   wait for 20 ns;

   t_A <= "00011000";
   t_B <= "00000100";
   wait for 20 ns;

   t_A <= "00110000";
   t_B <= "00001000";
   wait for 20 ns;

   t_A <= "01100000";
   t_B <= "00010000";
   wait for 20 ns;

   t_A <= "11000000";
   t_B <= "00100000";
   wait for 20 ns;

   t_A <= "00000000";
   t_B <= "01000000";
   wait for 20 ns;
   wait;
 
 end process;

end tb_behave;
