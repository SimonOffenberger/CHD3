library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

entity Multiplier is
  
  generic (
    gArgRange : integer := 4);
  port (
    iMultiplicand : in  unsigned(gArgRange-1 downto 0);
        iMultiplier   : in  unsigned(gArgRange-1 downto 0);
        oProduct      : out unsigned(??? downto 0));

end Multiplier;
