-------------------------------------------------------------------------------
-- Title      : Entity and Architekture of a Testbench for Analysing static Hazards
-- Project    : Uebung05 - VHDL Designs
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

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
variable vtransition : string(1 to 2); 
begin

    D   <= '1';
    En  <= '1';
    wait for 30 ns;  

    for t in -10 to 10 loop

        t_delay <= t * 1 ns;
        vtransition := "00";
        D  <= '0' after (10 ns + 1 ns * t);
        En <= '0' after  10 ns;
        wait for 50 ns;
        vtransition := "01";
        D  <= '0' after (10 ns + 1 ns * t);
        En <= '1' after  10 ns;
        wait for 50 ns;
        vtransition := "10";
        D  <= '1' after (10 ns + 1 ns * t);
        En <= '0' after  10 ns;
        wait for 50 ns;
        vtransition := "11";
        D  <= '1' after (10 ns + 1 ns * t);
        En <= '1' after  10 ns;
        wait for 50 ns;
        vtransition := "10";
        D  <= '1' after (10 ns + 1 ns * t);
        En <= '0' after  10 ns;
        wait for 50 ns;
        vtransition := "01";
        D  <= '0' after (10 ns + 1 ns * t);
        En <= '1' after  10 ns;
        wait for 50 ns;
        vtransition := "00";
        D  <= '0' after (10 ns + 1 ns * t);
        En <= '0' after  10 ns;
        wait for 50 ns;
        vtransition := "11";
        D  <= '1' after (10 ns + 1 ns * t);
        En <= '1' after  10 ns;
        wait for 50 ns;

    end loop;

    wait;
end process stimul;


verify: process is
    variable vexpected : std_ulogic := '0';
    variable vYc : std_ulogic := '0';
    variable vcheck : string(1 to 3) := "OK ";
    begin

    vexpected := (En and D) or (vYc and (not En));

    if(vexpected = Q_Hfree) then 
        vcheck := "OK!";
    else                    
        vcheck := "NOK";
    end if;

    vYc := vexpected;
    wait for 1 ns;
end process verify;

end testMultiInputSwitch;
