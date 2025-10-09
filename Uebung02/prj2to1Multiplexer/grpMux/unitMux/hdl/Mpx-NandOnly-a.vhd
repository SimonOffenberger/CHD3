-------------------------------------------------------------------------------
-- Title      : Architekure of Multiplexer with Prime Implicants
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture NandOnly of Mpx is
begin 

oY <= ((iSel nand iSel) nand (iA )) nand 
      ((iSel)           nand (iB));

end NandOnly;
