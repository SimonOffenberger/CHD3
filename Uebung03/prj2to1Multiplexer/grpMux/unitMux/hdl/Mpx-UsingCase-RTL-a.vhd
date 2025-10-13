-------------------------------------------------------------------------------
-- Title      : Architekure of Multiplexer with Prime Implicants
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture UsingCase of Mpx is
begin 

process (iA,iB,iSel) is 
begin
    case(iSel) is
        when '0' =>
            oY <= iA;
        when 'L' =>
            oY <= iA;
        when '1' =>
            oY <= iB;
        when 'H' =>
            oY <= iB;
        when 'U' =>
            oY <= 'U';
        when others =>
            oY <= 'X';
    end case;

end process;

end UsingCase;
