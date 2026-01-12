-------------------------------------------------------------------------------
-- Title : Edge Detection Entity
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : simon Offenberger
-- Created : 2025-12-1
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description: Edge Detection Entity to detect rising edges on a sync signal
-------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Entity 
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity EdgeDetection is
  port (
    iClk : in std_ulogic;
    inResetAsync : in std_ulogic;
    iEnable : in std_ulogic;
    iSync : in std_ulogic;
    oEdge : out std_ulogic);
end EdgeDetection;