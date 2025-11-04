-------------------------------------------------------------------------------
-- Title : FeedbackMux
-------------------------------------------------------------------------------
-- Author :  markus.pfaff@fh-hagenberg.at 
-- Created : 2015-11-05
-- Last update: 2015-11-10
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015 - Time of last update
-------------------------------------------------------------------------------
-- Description:
-- Feedback multiplexer (multiplexer latch) with models for delay for each 
-- single gate. Implementation of the multiplexer by prime implicands only.
-------------------------------------------------------------------------------

architecture Hazardfree of FeedbackMux is

  signal Yc, Yn                   : std_ulogic;
  signal nEn, Impl1, Impl2, Impl3 : std_ulogic;
  
begin 

  Yc <= Yn;

  -- Model this:
  --  Yn <= (Yc and not(iEn)) or
  --        (iEn and iD);
  -- like this:

  -- generate negated inputs
  nEn   <= not(iEn)       after 6 ns;
  -- prime implicands
  Impl1 <= iEn and iD     after 5 ns;
  Impl2 <= Yc and nEn     after 7 ns;

  -- additional Prime Implicant to avoid hazard
  Impl3 <= Yc and iD    after 5 ns;

  -- combine prime implicands
  Yn    <= Impl1 or Impl2 or Impl3 after 5 ns;

  oQ <= Yc;
  
end architecture Hazardfree;
