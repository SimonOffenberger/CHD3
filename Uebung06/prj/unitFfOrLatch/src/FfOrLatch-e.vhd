-------------------------------------------------------------------------------
-- Title : D-Latch and D-FlipFlop Inference Examples
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : friedrich.seebacher@fh-hagenberg.at, pfaff@fh-hagenberg.at
-- Created : 2009-11-24
-- Last update: 2017-11-27
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description:
-- Different D-Latch and D-FlipFlop Inference Examples. Can be used to find out
-- which synthesizer results you will get independent of slightly different 
-- VHDL descriptions for latches and flip-flops.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity FfOrLatch is
  port (
    iD   : in  std_ulogic;              -- Data Input
    iClk : in  std_ulogic;              -- Clock Input
    oQ_A : out std_ulogic;              -- Data Output A
    oQ_B : out std_ulogic;              -- Data Output B
    oQ_C : out std_ulogic;              -- Data Output C
    oQ_D : out std_ulogic;              -- Data Output D
    oQ_E : out std_ulogic;              -- Data Output E
    oQ_F : out std_ulogic;              -- Data Output F
    oQ_G : out std_ulogic;              -- Data Output G
    oQ_H : out std_ulogic;              -- Data Ouptut I
    oQ_I : out std_ulogic);             -- Data Output H
end entity FfOrLatch;
