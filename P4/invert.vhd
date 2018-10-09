library ieee;
use ieee.std_logic_1164.all;

entity inverter is
port(
 i : in std_logic;
 ibar : out std_logic
);
end entity inverter;

architecture invert_behav of inverter is
begin

 inverter_process: process (i)
 begin
  ibar <= not i after 192 ps;
 end process inverter_process;

end invert_behav;