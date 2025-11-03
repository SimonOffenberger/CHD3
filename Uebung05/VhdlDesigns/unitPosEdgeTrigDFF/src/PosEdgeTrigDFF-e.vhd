-------------------------------------------------------------------------------
-- Title : PosEdgeTrigDFF
-- Project : Chip Design 2012
-------------------------------------------------------------------------------
-- File : PosEdgeTrigDFF-e.vhd
-- Author : friedrich.seebacher@fh-hagenberg.at
--          markus.pfaff@fh-hagenberg.at 
-- Created : 2006-11-05
-- Last update: 2012-11-21
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2006-2012
-------------------------------------------------------------------------------
-- Subversion entries:
-- $Id: $
-------------------------------------------------------------------------------
-- Description:
-- Implementation of a positive edge triggered D-FF based on trational 
-- NAND gates.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity PosEdgeTrigDFF is
  
  generic (
  	gRejectDuration1   : time := 2 ns;
    gPropagationDelay1 : time := 9 ns;
  	gRejectDuration2   : time := 2 ns;
    gPropagationDelay2 : time := 9 ns;
  	gRejectDuration3   : time := 2 ns;
    gPropagationDelay3 : time := 9 ns;
  	gRejectDuration4   : time := 2 ns;
    gPropagationDelay4 : time := 9 ns;
  	gRejectDuration5   : time := 2 ns;
    gPropagationDelay5 : time := 9 ns;
  	gRejectDuration6   : time := 2 ns;
    gPropagationDelay6 : time := 9 ns);
  port (
    iD     : in  std_ulogic;   -- Data Input
    iC     : in  std_ulogic;   -- Clock Input
    inClr  : in  std_ulogic;   -- Asynchronous clear Input
    oQ     : out std_ulogic;   -- Data Output
    onQ    : out std_ulogic);  -- Inverted Data Output

end entity PosEdgeTrigDFF;
