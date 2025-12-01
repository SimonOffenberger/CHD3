-------------------------------------------------------------------------------
-- Title      : Top Level Entity/ Board Adapter
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity StrobeOnPCBDe1Soc is
    port (
    CLOCK_50 : in std_ulogic;
    KEY      : in std_ulogic_vector(0 downto 0);
    LEDR     : out std_ulogic_vector(0 downto 0)   
    );  
end StrobeOnPCBDe1Soc;
