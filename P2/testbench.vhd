library ieee;
use ieee.std_logic_1164.all;

entity tb_fun is
end tb_fun;

architecture tb_behave of tb_fun is

  component fun is
  generic(
    n: integer := 3);
  port(
    inA, inB: in std_logic_vector((n-1) downto 0);
    outC: out std_logic_vector((n-1) downto 0)
  );
  end component fun;

  constant n: integer := 3;
  signal t_inA, t_inB, t_outC: std_logic_vector((n-1) downto 0);

begin

  U1: fun
    generic map (n)
    port map (t_inA, t_inB, t_outC);
  
  test_process: process
  begin
    t_inA <= "000";
    t_inb <= "000";
    wait for 20ns;

    t_inA <= "111";
    t_inb <= "001";
    wait for 20ns;

    t_inA <= "100";
    t_inb <= "011";
    wait for 20ns;

    t_inA <= "111";
    t_inb <= "101";
    wait for 20ns;

    wait;
  end process test_process;

end tb_behave;