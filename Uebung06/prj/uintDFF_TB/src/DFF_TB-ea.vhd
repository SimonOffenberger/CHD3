-------------------------------------------------------------------------------
-- Title : Testbench for D-FlipFlop
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

entity DFF_TB is
end DFF_TB;

architecture Testbench of DFF_TB is
    signal D, nResetAsync,Set,Enable,Q,nQ : std_ulogic;
    signal Clk : std_ulogic := '0';
begin

Entity_DFF : entity work.D_FF(Rtl)
port map (
    iD           => D,
    iClk         => Clk,
    inResetAsync => nResetAsync,
    iSet         => Set,
    iEnable      => Enable,
    oQ           => Q,
    onQ          =>nQ

);


clkgen: clk <= not clk after 5 ns;
  

-- generate every possible combination of inputs and also every possible transition
stimul: process is 
    variable from_vec, to_vec : std_logic_vector(3 downto 0);
begin
    for i in 0 to 15 loop          
        from_vec := std_logic_vector(to_unsigned(i, 4));
        D            <= from_vec(3);
        nResetAsync  <= from_vec(2);
        Set          <= from_vec(1);
        Enable       <= from_vec(0);
        wait for 20 ns;
        for j in 0 to 15 loop      
            to_vec := std_logic_vector(to_unsigned(j, 4));
            D            <= to_vec(3);
            nResetAsync  <= to_vec(2);
            Set          <= to_vec(1);
            Enable       <= to_vec(0);
            wait for 20 ns;
        end loop;
    end loop;
    wait;
end process stimul;

verify: postponed process is 
    variable vcheck : string(3 downto 1) := "OK!";
    variable vQPrev : std_ulogic := '0';
    variable vClkPrev : std_ulogic := '0';
begin

    vcheck := "OK!";

    -- Check Async Reset
    if(nResetAsync = not('1') and Q = '1') then
        vcheck := "NOK";
    end if;

    -- check if nQ is the oppsite of Q
    if(Q /= not(nQ)) then
        vcheck := "NOK";
    end if;

    if(nResetAsync = not('0')) then
        if(vClkPrev = '0' and Clk = '1') then
            -- check sync Set
            if(Set = '1' and Q /= '1') then
                vcheck := "NOK";
            end if;
            -- check Sync ID at oQ
            if(Q /= D and Set = '0' and Enable = '1') then
                vcheck := "NOK";
            end if;
            
            -- check if the value of Q is preserved when 
            -- set is 0 and enable is 0
            if(Enable = '0' and Set = '0' and vQPrev /= Q) then
                vcheck := "NOK";
            end if;
        end if;
    else 
        -- check reset    
        if(Q /= '0') then
            vcheck := "NOK";
            end if;
    end if;
    
    -- store values for next check
    vQPrev := Q;
    vClkPrev := Clk;

    wait for 1 ns;
end process verify;

end Testbench;