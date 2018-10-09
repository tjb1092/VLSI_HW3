library ieee;
use ieee.std_logic_1164.all;

entity cgate is
 port(
 a, abar, b, bbar, pin, pinbar : in std_logic;
 pout : out std_logic
 );
end entity cgate;

architecture cgate_behave of cgate is
begin

 cgate_process : process (a, abar, b, bbar, pin, pinbar)
 -- Included both a and abar etc. b/c of how delays affect when each line gets updated
 begin 
  pout <= not ((pinbar or (abar and b) or (a and bbar)) and (((a or bbar) and (abar or b)) or pin)) after 792 ps;
 end process;




end cgate_behave;
