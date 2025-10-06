-------------------------------------------------------------------------------
-- Title      : Synthesis efficient architecture of SwellLed
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture NandOnly of Mpx is
begin 

oY <= '1' when (((iSel = cInactivated) nand (iA = cActivated)) nand 
                ((iSel = cActivated) nand (iB = cActivated))) 
          else '0';

end NandOnly;
