-------------------------------------------------------------------------------
-- Title : Testbench for the Running Light
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : simon Offenberger
-- Created : 2025-11-18
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

entity RunningLight_TB is
end RunningLight_TB;

architecture Testbench of RunningLight_TB is
    signal Clk           : std_ulogic := '0';
    signal State_Case2P  : std_ulogic_vector(2 downto 0);
    signal nResetAsync   : std_ulogic;
    signal StrobeSignal  : std_ulogic;
begin

Entity_RunningLight1 : entity work.RunningLight(RTL)
port map (
    iClk         => Clk,
    inResetAsync => nResetAsync,
    iEnable      => StrobeSignal,
    oState       => State_Case2P
);

EntityStrobeGen : entity work.StrobeGen(RTL)
generic map (
    gNrClkCycles => 10
)
port map (
    iClk          => Clk,         
    inResetAsync  => nResetAsync,            
    oStrobe       => StrobeSignal
);


clkgen: clk <= not clk after 10 ns;
  
stimul: process is 
begin
    nResetAsync <= '0';
    wait for 10 ns;
    nResetAsync <= '1';
    wait;
end process;


verify_RST: postponed process (nResetAsync) is
begin

    if(nResetAsync = '0') then
        assert(State_Case2P   = "000") report "Failed Reset in Arch: TwoProcessCase!" severity failure;
    end if;
    
end process;


verify_Case2P: postponed process (State_Case2P) is
    variable prevState : std_ulogic_vector(2 downto 0) := "000";
begin

    if(nResetAsync = not('0')) then
        case prevState is
            when "000"  =>  assert(State_Case2P = "100") report "Wrong State in Arch: TwoProcessCase!" severity failure;
            when "100"  =>  assert(State_Case2P = "010") report "Wrong State in Arch: TwoProcessCase!" severity failure;
            when "010"  =>  assert(State_Case2P = "001") report "Wrong State in Arch: TwoProcessCase!" severity failure;
            when "001"  =>  assert(State_Case2P = "011") report "Wrong State in Arch: TwoProcessCase!" severity failure;
            when "011"  =>  assert(State_Case2P = "111") report "Wrong State in Arch: TwoProcessCase!" severity failure;
            when others => null;
        end case;
    end if;

    prevState := State_Case2P;

end process;

end Testbench;