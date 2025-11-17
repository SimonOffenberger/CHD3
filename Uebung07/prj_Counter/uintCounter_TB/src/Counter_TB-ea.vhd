-------------------------------------------------------------------------------
-- Title : Testbench for the Shiftregister
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

entity Counter_TB is
end Counter_TB;

architecture Testbench of Counter_TB is
    constant cBitWidth   : natural := 8;
    signal Clk           : std_ulogic := '0';
    signal nResetAsync   : std_ulogic;
    signal Counter    : unsigned(cBitWidth downto 0);
begin

Entity_Counter : entity work.Counter(RTL)
generic map (
    gCountBitWidth => cBitWidth
)
port map (
    iClk         => Clk,
    inResetAsync => nResetAsync,
    oCount     => Counter
);

clkgen: clk <= not clk after 2 ns;
  
stimul: process is 
begin
    nResetAsync <= '0';
    wait for 10 ns;
    nResetAsync <= '1';
    wait;
end process;

-- verify_RST: postponed process (nResetAsync) is
-- begin

--     if(nResetAsync = '0') then
--         assert(State_Hand   = (others => '0')) report "Failed Reset in Arch: TwoProcessHandmade!" severity failure;
--     end if;
    
-- end process;

-- verify_Hand: postponed process (State_Hand) is
--     variable prevState : std_ulogic_vector(2 downto 0) := "000";
-- begin

--     if(nResetAsync = not('0')) then
--         case prevState is
--             when "000"  =>  assert(State_Hand = "100") report "Failed Reset in Arch: TwoProcessHandmade!" severity failure;
--             when "100"  =>  assert(State_Hand = "010") report "Failed Reset in Arch: TwoProcessHandmade!" severity failure;
--             when "010"  =>  assert(State_Hand = "001") report "Failed Reset in Arch: TwoProcessHandmade!" severity failure;
--             when "001"  =>  assert(State_Hand = "011") report "Failed Reset in Arch: TwoProcessHandmade!" severity failure;
--             when "011"  =>  assert(State_Hand = "111") report "Failed Reset in Arch: TwoProcessHandmade!" severity failure;
--             when others => null;
--         end case;
--     end if;
--     prevState := State_Hand;

-- end process;

end Testbench;