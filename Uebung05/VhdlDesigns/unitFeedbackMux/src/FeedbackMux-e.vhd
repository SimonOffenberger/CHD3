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
-- Several descriptions of an asynchronous sequential circuit (example: latch).
-- Shows that funcionality depends on timing.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity FeedbackMux is
  
  port (
    -- Date input of latch, latch is transparent when iEn
    iD  : in  std_ulogic;
    -- iEn: latch transparent, not(iEn): latch opaque
    iEn : in  std_ulogic;
    oQ  : out std_ulogic);              

end entity FeedbackMux;
