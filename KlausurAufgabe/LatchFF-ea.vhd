library ieee;
use ieee.std_logic_1164.ALL;

entity latch_or_ff is
    Port (
        iclk  : in  std_ulogic;
        id    : in  std_ulogic;
        iq    : out std_ulogic
    );
end latch_or_ff;

architecture rtl of latch_or_ff is
begin

process(iclk)
    begin
        case iclk is
            when '1' =>
                iq <= id; 
            when others =>
                null;
        end case;
    end process;
end rtl;