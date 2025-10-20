-------------------------------------------------------------------------------
-- Title      : Architecture of a Nand with 2 Inputs
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture RTL of TheNand2 is
begin 

    oYNand <=   iANand nand iBNand;     

end RTL;
