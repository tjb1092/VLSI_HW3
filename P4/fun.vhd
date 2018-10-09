library ieee;
use ieee.std_logic_1164.all;

entity fun is
 generic(
 n : integer
 );
 port(
 A, B : in std_logic_vector((n-1) downto 0);
 C : out std_logic_vector((n-1) downto 0)
 );
end entity fun;


architecture fun_behave of fun is

 component bit_slice is
  port(
  a, b, pin, min : in std_logic;
  pout, mout, fout : out std_logic
  );

 end component;

 signal P, M: std_logic_vector((n-1) downto 0);

 begin

  GEN_SLICES : for i in 0 to (n-1) generate
   
   UPPER_BIT: if i = (n-1) generate
    MS: bit_slice port map (A(i), B(i), P(i-1), P(i), P(i), M(i), C(i) );
   end generate UPPER_BIT; 

   LOWER_BIT: if i=0 generate
    LS: bit_slice port map (A(i), B(i), '1', M(i+1), P(i), M(i), C(i));
   end generate LOWER_BIT;

   OTHER_BITS: if (i<(n-1)) and (i>0) generate
    OTHER: bit_slice port map (A(i), B(i), P(i-1), M(i+1), P(i), M(i), C(i));
   end generate OTHER_BITS;

  end generate GEN_SLICES;


end fun_behave;
