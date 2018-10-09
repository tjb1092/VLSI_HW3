library ieee;
use ieee.std_logic_1164.all;

entity mux is
 port(
  abar, bbar, min, minbar: in std_logic;
  mout, f : out std_logic
 );
end entity mux;

architecture mux_behave of mux is
-- A select bit of 1 picks A, else B.
-- 
begin

 mux_process: process (abar, bbar, min, minbar)
 begin
  f <= not ((abar or minbar) and (bbar or min)) after 492 ps;
  mout <= min;
 end process mux_process;


end mux_behave;
