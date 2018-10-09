library ieee;
use ieee.std_logic_1164.all;

entity bit_slice is
 port(
 a, b, pin, min : in std_logic;
 pout, mout, fout : out std_logic
 );
end entity bit_slice;


architecture bit_slice_structure of bit_slice is
 
 component inverter
  port(
   i : in std_logic;
   ibar : out std_logic
  );
 end component;
 
 component mux
  port(
  abar, bbar, min, minbar : in std_logic;
  mout, f : out std_logic
  );
 end component;

 component cgate
  port(
  a, abar, b, bbar, pin, pinbar : in std_logic;
  pout : out std_logic
  );
 end component;

 signal iabar, ibbar, iminbar, ipinbar : std_logic;

 begin
 
  InvA : inverter port map(
   i => a,
   ibar => iabar);

  InvB : inverter port map(
   i => b,
   ibar => ibbar);

  InvPin : inverter port map(
   i => pin,
   ibar => ipinbar);

  InvMin : inverter port map(
   i => min,
   ibar => iminbar);
  
  U1 : cgate port map(
   a => a,
   abar => iabar,
   b => b,
   bbar => ibbar,
  pin => pin,
   pinbar => ipinbar,
   pout => pout);

  U2 : mux port map(
   abar => iabar,
   bbar => ibbar,
   min => min,
   minbar => iminbar,
   mout => mout,
   f => fout);
  
end bit_slice_structure;