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


entity LargeMuxesOnPCBDe1Soc is
    port (
    GPIO_0   : in std_ulogic_vector(15 downto 0);    -- input A
    LEDR   : out std_ulogic_vector(2 downto 0)  -- output Y of Minterm Mux
    );  
end LargeMuxesOnPCBDe1Soc;
