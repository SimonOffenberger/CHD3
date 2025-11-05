-------------------------------------------------------------------------------
-- Title      : Entity and Architekture of the Testbench from the 2 to 1 Mux
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

-- Hinweis 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all; -- library for math functions
use ieee.std_logic_textio.all;  -- oder ieee.numeric_std_unsigned, wenn nötig

entity FeedbackMuxTB is
end FeedbackMuxTB;


architecture testOnInputSwitch of FeedbackMuxTB is
    signal En : std_ulogic := '0';
    signal Q : std_ulogic := '0';
    signal Q_Hfree : std_ulogic := '0';
    signal D : std_ulogic := '0';
begin 

-- Mux with logic hazard
FBMux : entity work.FeedbackMux(PrimImp)
port map (
    iEn      => En,
    iD       => D,
    oQ       => Q);

-- Hazardfree Mux
FBMuxHfree : entity work.FeedbackMux(Hazardfree)
port map (
    iEn      => En,
    iD       => D,
    oQ       => Q_Hfree);


stimul: process is
begin

    wait for 30 ns;
    D <= '1';
    wait for 30 ns;  
    En <= '1';
    wait for 30 ns;  
    En <= '0';
    wait for 30 ns;
    En <= '1';
    wait for 30 ns;
    En <= '0';
    wait for 30 ns;
    En <= '1';

    wait;

end process stimul;


end testOnInputSwitch;



architecture testMultiInputSwitch of FeedbackMuxTB is
    signal En : std_ulogic := '0';
    signal Q : std_ulogic := '0';
    signal Q_Hfree : std_ulogic := '0';
    signal D : std_ulogic := '0';
    signal t_delay : time := 0 ns;
    begin 
    
    
-- Mux with logic hazard
FBMux : entity work.FeedbackMux(PrimImp)
port map (
    iEn      => En,
    iD       => D,
    oQ       => Q);

-- Hazardfree Mux
FBMuxHfree : entity work.FeedbackMux(Hazardfree)
port map (
    iEn      => En,
    iD       => D,
    oQ       => Q_Hfree);



stimul: process is
variable transition : string(1 to 2); 
begin

    D   <= '1';
    En  <= '1';
    wait for 30 ns;  

    for t in -10 to 10 loop

        t_delay <= t * 1 ns;
        transition := "00";
        D  <= '0' after (10 ns + 1 ns * t);
        En <= '0' after  10 ns;
        wait for 50 ns;
        transition := "01";
        D  <= '0' after (10 ns + 1 ns * t);
        En <= '1' after  10 ns;
        wait for 50 ns;
        transition := "10";
        D  <= '1' after (10 ns + 1 ns * t);
        En <= '0' after  10 ns;
        wait for 50 ns;
        transition := "11";
        D  <= '1' after (10 ns + 1 ns * t);
        En <= '1' after  10 ns;
        wait for 50 ns;
        transition := "10";
        D  <= '1' after (10 ns + 1 ns * t);
        En <= '0' after  10 ns;
        wait for 50 ns;
        transition := "01";
        D  <= '0' after (10 ns + 1 ns * t);
        En <= '1' after  10 ns;
        wait for 50 ns;
        transition := "00";
        D  <= '0' after (10 ns + 1 ns * t);
        En <= '0' after  10 ns;
        wait for 50 ns;
        transition := "11";
        D  <= '1' after (10 ns + 1 ns * t);
        En <= '1' after  10 ns;
        wait for 50 ns;

    end loop;

    wait;
end process stimul;


verify: process is
    variable expected : std_ulogic := '0';
    variable Yc : std_ulogic := '0';
    variable check : string(1 to 3) := "OK ";
    begin

    expected := (En and D) or (Yc and (not En));

    if(expected = Q_Hfree) then 
        check := "OK!";
    else                    
        check := "NOK";
    end if;

    Yc := expected;
    wait for 1 ns;
end process verify;

end testMultiInputSwitch;
