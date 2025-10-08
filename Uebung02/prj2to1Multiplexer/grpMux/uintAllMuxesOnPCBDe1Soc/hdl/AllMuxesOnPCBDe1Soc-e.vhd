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

use work.Global.all;


entity AllMuxesOnPCBDe1Soc is
    port (
    KEY   : in std_ulogic_vector(1 downto 0);    -- input A
    SW    : in std_ulogic;    -- input B
    LEDR   : out std_ulogic_vector(2 downto 0)  -- output Y of Minterm Mux
    );  
end AllMuxesOnPCBDe1Soc;
