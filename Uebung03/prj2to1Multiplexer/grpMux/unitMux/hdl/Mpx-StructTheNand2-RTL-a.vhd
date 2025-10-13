-------------------------------------------------------------------------------
-- Title      : Architekure of Multiplexer with Prime Implicants
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture StructTheNand2 of Mpx is
      signal notiSel       : std_ulogic;
      signal notiSelNandiA : std_ulogic;
      signal iSelNandiB  : std_ulogic;
begin 

Nand1 : entity work.TheNand2(RTL)
port map (
    iANand        => iSel,
    iBNand        => iSel,
    oYNand        => notiSel
);

Nand2 : entity work.TheNand2(RTL)
port map (
    iANand        => notiSel,
    iBNand        => iA,
    oYNand        => notiSelNandiA
);

Nand3 : entity work.TheNand2(RTL)
port map (
    iANand        => iSel,
    iBNand        => iB,
    oYNand        => iSelNandiB
);

Nand4 : entity work.TheNand2(RTL)
port map (
    iANand        => notiSelNandiA,
    iBNand        => iSelNandiB,
    oYNand        => oY
);

-- oY <= ((iSel nand iSel) nand (iA )) nand 
--      ((iSel)           nand (iB));

end StructTheNand2;
