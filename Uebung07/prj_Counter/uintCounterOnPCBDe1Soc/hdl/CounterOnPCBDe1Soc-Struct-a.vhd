-------------------------------------------------------------------------------
-- Title      :  PCB Adater for the Terasic De1 SOC Board
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Struct of CounterOnPCBDe1Soc is
    constant cCounterWidth : natural := 26;
    signal KeyPosLogic : std_ulogic_vector(KEY'range);   
    signal Counter : unsigned(cCounterWidth downto 1);
begin 

-- Instantiate Entity ShiftRegister
EntityCounter : entity work.Counter(RTL)
generic map (
    gCountBitWidth => cCounterWidth
)
port map (
    iClk          => CLOCK_50,         
    inResetAsync  => KeyPosLogic(0),   
    oCount        => Counter
);

LEDR <= std_ulogic_vector(Counter(cCounterWidth downto cCounterWidth-9));

-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end Struct; 
