architecture UsingForLoop of Multiplier is
  type   tPP is array (0 to gArgRange - 1) of unsigned(oProduct'range);

begin  -- UsingForLoop

  process (iMultiplicand, iMultiplier, PP)
  variable vPP : tPP;
  
  -- ------------------
  -- add your code here
  -- ------------------

  begin
   
  -- ------------------
  -- add your code here
  -- ------------------
    
  end process;
  
end UsingForLoop;

-------------------------------------------------------------------------------
-- Architecture UsingForGenerate
-------------------------------------------------------------------------------
                            
architecture UsingForGenerate of Multiplier is  
  type   tPP is array (0 to gArgRange - 1) of unsigned(oProduct'range);
  signal PP : tPP;
  
  -- ------------------
  -- add your code here
  -- ------------------

begin  -- UsingForGenerate
  
  -- ------------------
  -- add your code here
  -- ------------------

end UsingForGenerate;


-------------------------------------------------------------------------------
-- Architecture UsingOperator
-------------------------------------------------------------------------------

architecture UsingOperator of Multiplier is

begin  -- UsingOperator

  oProduct <= to_unsigned(to_integer(iMultiplier)*
                          to_integer(iMultiplicand),oProduct'length);
  
end UsingOperator;
