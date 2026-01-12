-------------------------------------------------------------------------------
-- Title : Sync Stage
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : simon Offenberger
-- Created : 2025-12-1
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description: Sync Stage to synchronize asynchronous signals
-------------------------------------------------------------------------------
-- Entity 
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Sync is
  generic (
    gNumOfFFStages : natural := 2);
  port (
    iClk : in std_ulogic;
    inResetAsync : in std_ulogic;
    iAsync : in std_ulogic;
    oSync : out std_ulogic);
end Sync;