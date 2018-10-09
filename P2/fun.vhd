library ieee;
use ieee.std_logic_1164.all;

entity fun is
generic(
  n: integer := 3);
port(
  inA, inB: in std_logic_vector((n-1) downto 0);
  outC: out std_logic_vector((n-1) downto 0)
);
end entity fun;

architecture fun_behave of fun is

  component slice is
  port(
    aIn, bIn, parityIn, muxIn: in std_logic;
    fOut, parityOut, muxOut: out std_logic
  );
  end component slice;

  signal P: std_logic_vector((n-1) downto 0);
  signal M: std_logic_vector((n-1) downto 0);

begin
  
  GEN_SLICES: for i in 0 to (n-1) generate

    UPPER_BIT: if i=(n-1) generate
      MS: slice port map (inA(i), inB(i), P(i-1), P(i), outC(i), P(i), M(i));
    end generate UPPER_BIT;

    LOWER_BIT: if i=0 generate
      LS: slice port map (inA(i), inB(i), '1', M(i+1), outC(i), P(i), M(i));
    end generate LOWER_BIT;

    OTHER_BITS: if (i<(n-1)) and (i>0) generate
      OTHER: slice port map (inA(i), inB(i), P(i-1), M(i+1), outC(i), P(i), M(i));
    end generate OTHER_BITS;

  end generate GEN_SLICES;

end fun_behave;
