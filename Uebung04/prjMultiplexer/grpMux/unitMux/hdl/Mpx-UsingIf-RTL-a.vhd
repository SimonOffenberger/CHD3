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

    assert (n=8 or n=12) report "Length not supported" severity error;

process (iA,iSel) is 
begin

    if   (iSel = "000") then oY <= iA(0);
    elsif(iSel = "001") then oY <= iA(1);
    elsif(iSel = "010") then oY <= iA(2);
    elsif(iSel = "011") then oY <= iA(3);
    elsif(iSel = "100") then oY <= iA(4);
    elsif(iSel = "101") then oY <= iA(5);
    elsif(iSel = "110") then oY <= iA(6);
    elsif(iSel = "111") then oY <= iA(7);
    else oY <= 'X';
    end if;

end process;

end UsingIf;

