-------------------------------------------------------------------------------
-- Title      : Architekure of Multiplexer with Prime Implicants
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture UsingIf of Mpx is
begin 

process (iA,iB,iSel) is 
begin

    if (iSel = '0') then
        oY <= iA;
    elsif (iSel = 'L') then 
        oY <= iA;
    elsif (iSel = '1') then 
        oY <= iB;
    elsif (iSel = 'H') then 
        oY <= iB;
    elsif (iSel = 'U') then 
        oY <= 'U';
    else
        oY <= 'X';
    end if;

end process;

end UsingIf;
