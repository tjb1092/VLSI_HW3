library ieee;
use ieee.std_logic_1164.all;

entity fun is
generic(
 n : integer := 3);
port(
 a, b: in std_logic_vector((n-1) downto 0);
 cout: out std_logic_vector((n-1) downto 0));

end entity fun;

architecture fun_behave of fun is

begin
 fun_process: process (a, b)
 variable pEq : std_logic;

 begin 
  pEq := '1';
  
  for i in 0 to (n-1) loop 
   if (a(i) /= b(i)) then pEq := not pEq;
   end if;
  end loop;

  for i in 0 to (n-1) loop
   if (pEq = '1') then
    cout(i) <= a(i);
   else
    cout(i) <= b(i);
   end if;
  end loop;

 end process fun_process;

end fun_behave;
