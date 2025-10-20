-------------------------------------------------------------------------------
-- Title      : Architekure of Multiplexer with Prime Implicants
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture UsingCase of Mpx is
begin 

    assert (n=8 or n=12) report "Length not supported" severity error;

process (iA,iSel) is 
begin
    
    case(iSel) is
        when "000" => oY <= iA(0);
        when "001" => oY <= iA(1);
        when "010" => oY <= iA(2);
        when "011" => oY <= iA(3);
        when "100" => oY <= iA(4);
        when "101" => oY <= iA(5);
        when "110" => oY <= iA(6);
        when "111" => oY <= iA(7);
        -- when "1000" => oY <= iA(8);
        -- when "1001" => oY <= iA(9);
        -- when "1010" => oY <= iA(10);
        -- when "1011" => oY <= iA(11);
        -- when "1100" => oY <= iA(12);
        when others => oY <= 'X';
    end case;
    
    --oY <= iA(to_integer(unsigned(iSel)));

end process;

end UsingCase;
