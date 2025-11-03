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


entity FeedbackMuxTB is
end FeedbackMuxTB;


architecture testOnInputSwitch of FeedbackMuxTB is
    signal En : std_ulogic := '0';
    signal Q : std_ulogic := '0';
    signal D : std_ulogic := '0';
begin 

-- Instantiate Three Mux entities with different Architekures
FBMux : entity work.FeedbackMux(PrimImp)
port map (
    iEn      => En,
    iD       => D,
    oQ       => Q);




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
begin 


end testMultiInputSwitch;
