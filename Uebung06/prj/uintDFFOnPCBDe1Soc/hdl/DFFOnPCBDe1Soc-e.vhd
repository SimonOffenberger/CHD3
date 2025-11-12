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


entity DFFOnPCBDe1Soc is
    port (
    KEY   : in std_ulogic_vector(0 downto 0);    
    SW    : in std_ulogic_vector(3 downto 0);   
    LEDR   : out std_ulogic_vector(1 downto 0)
    );  
end DFFOnPCBDe1Soc;
