-------------------------------------------------------------------------------
-- Title : Testbench for the Counter with Asynchronous Zero Reset
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : simon Offenberger
-- Created : 2025-11-11
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description:
-------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Entity 
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Global.all;

entity GenReg is
  port (
    iClk         : in std_ulogic;
    inResetAsync : in std_ulogic;

    iD : in  std_ulogic_vector(7 downto 0);
    oQ : out std_ulogic_vector(15 downto 0));
end entity GenReg;
--------------------------------------------------------------------------------
architecture Rtl of GenReg is

begin

  A : process (iClk) is
  begin
    if (iClk = '1') then
      oQ(15 downto 8) <= iD(3 downto 0) & iD(7 downto 4);
    end if;
  end process;

  B : process (iClk, iD) is
  begin
    if (iClk = '1') then
      oQ(7 downto 6) <= not iD(1 downto 0);
    end if;
  end process;

  C : process (iClk, inResetAsync) is
  begin
    if inResetAsync = not('1') then
      oQ(3 downto 2) <= (others => '1');
    elsif falling_edge(iClk) then
      oQ(3 downto 2) <= not iD(iD'left downto iD'left-1);
    end if;
  end process;

  oQ(1 downto 0) <= iD(7 downto 6);
end architecture Rtl;