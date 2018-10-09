library ieee;
use ieee.std_logic_1164.all;

entity slice is
port(
  aIn, bIn, parityIn, muxIn: in std_logic;
  fOut, parityOut, muxOut: out std_logic
);
end entity slice;

architecture slice_behave of slice is
begin
  slice_process: process (aIn, bIn, parityIn, muxIn)
  begin
    if (aIn = bIn) then
      parityOut <= parityIn;
    else
      parityOut <= not parityIn;
    end if;
    if (muxIn = '1') then
      fOut <= aIn;
    else
      fOut <= bIn;
    end if;
    muxOut <= muxIn;

  end process slice_process;
end slice_behave;