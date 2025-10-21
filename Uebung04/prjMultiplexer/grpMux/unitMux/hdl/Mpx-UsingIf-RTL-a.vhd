-------------------------------------------------------------------------------
-- Title      : Architekure of Multiplexer using If else statement
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture UsingIf of Mpx is
begin 
    -- make sure only supportet lengths are selcted
    assert (gN=8 or gN=12) report "Length not supported" severity error;

    -- generate the corrosponding process for selecting the input
MPX: if gN=8 generate
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
else generate
    process (iA,iSel) is 
    begin
        if   (iSel = "0000") then oY <= iA(0);
        elsif(iSel = "0001") then oY <= iA(1);
        elsif(iSel = "0010") then oY <= iA(2);
        elsif(iSel = "0011") then oY <= iA(3);
        elsif(iSel = "0100") then oY <= iA(4);
        elsif(iSel = "0101") then oY <= iA(5);
        elsif(iSel = "0110") then oY <= iA(6);
        elsif(iSel = "0111") then oY <= iA(7);
        elsif(iSel = "1000") then oY <= iA(8);
        elsif(iSel = "1001") then oY <= iA(9);
        elsif(iSel = "1010") then oY <= iA(10);
        elsif(iSel = "1011") then oY <= iA(11);
        else oY <= 'X';
        end if;
    end process;
end generate;




end UsingIf;

