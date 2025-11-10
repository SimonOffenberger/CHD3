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

--------------------------------------------------------------------------------
-- Architecure RTL 
--------------------------------------------------------------------------------
architecture Rtl of FfOrLatch is

  signal E, F, G, H, I : std_ulogic;
 
begin  -- architecture Rtl

--------------------------------------------------------------------------------
-- Version RTL_A:
--------------------------------------------------------------------------------
  FF_or_Latch_A : process (iClk) is
  begin
    if (iClk = '1') then
      oQ_A <= iD;
    end if;
  end process FF_or_Latch_A; 
  
--------------------------------------------------------------------------------
-- Version RTL_B:
--------------------------------------------------------------------------------
  
  FF_or_Latch_B : process (iClk, iD) is
  begin
    if (iClk = '1') then
      oQ_B  <= not iD;
    end if;
  end process FF_or_Latch_B; 
  
--------------------------------------------------------------------------------
-- Version RTL_C: 
--------------------------------------------------------------------------------

  FF_or_Latch_C : process (iClk) is
  begin
    if rising_edge(iClk) then
      oQ_C  <= not iD;
    end if;
  end process FF_or_Latch_C; 
  
--------------------------------------------------------------------------------
-- Version RTL_D:
--------------------------------------------------------------------------------

  FF_or_Latch_D : process (iClk) is
  begin
    if (iClk'event and iClk = '1') then
      oQ_D  <= not iD;
    end if;
  end process FF_or_Latch_D; 
  
--------------------------------------------------------------------------------
-- Version RTL_E: 
--------------------------------------------------------------------------------
  FF_or_Latch_E : process (iClk, iD) is
    
  begin
    if (iClk = '1') then
      E <= not iD;
    end if;
    oQ_E  <= E;
  end process FF_or_Latch_E; 
  
--------------------------------------------------------------------------------
-- Version RTL_F: 
--------------------------------------------------------------------------------
  FF_or_Latch_F : process (iClk) is
    
  begin
    if (iClk = '1') then
      oQ_F    <= F;
      F <= not iD;
    end if;
  end process FF_or_Latch_F; 

--------------------------------------------------------------------------------
-- Version RTL_G:
--------------------------------------------------------------------------------
  FF_or_Latch_G : process (iClk, iD) is
    
  begin
    if (iClk = '1') then
      G <= not iD;
      oQ_G    <= G;
    end if;
  end process FF_or_Latch_G; 
  
--------------------------------------------------------------------------------
-- Version RTL_H:
--------------------------------------------------------------------------------
  FF_or_Latch_H : process (iClk) is
    
  begin
    if (iClk'event and iClk = '1') then
      H <= not iD;
      oQ_H    <= H;
    end if;
  end process FF_or_Latch_H; 
  
--------------------------------------------------------------------------------
-- Version RTL_I:
--------------------------------------------------------------------------------
  FF_or_Latch_I : process (iClk) is
    
  begin
    if (iClk = '1') then
      oQ_I <= not iD;
    elsif (iClk = '0') then
      null;
    end if;
  end process FF_or_Latch_I; 
  
end architecture Rtl;
