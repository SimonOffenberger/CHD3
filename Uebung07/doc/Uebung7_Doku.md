# Übung 7 Simon Offenberger S2410306027  
## Aufgabe 1 FSM Lauflicht
### Architecture TwoProcessHandmade

>```vhdl
>>architecture TwoProcessHandmade of RunningLight is
> signal NextState : std_ulogic_vector(2 downto 0);
> constant cStateAllOff : std_ulogic_vector(2 downto 0) := "000";
>begin
>
>process (iClk,inResetAsync) is 
>begin
>  if(inResetAsync = not('1'))then
>    oState <= cStateAllOff;
>  elsif(rising_edge(iClk)) then
>    oState <= NextState;
>  end if;
>
>end process;
>
>NextStateLogic: process (oState) is
>begin
>
>  NextState(2) <= (not oState(2) and not oState(1) and not oState(0)) or 
>                  (not oState(2) and     oState(1) and     oState(0));
>  
>  NextState(1) <= (    oState(2) and not oState(1) and not oState(0)) or
>                  (not oState(2) and               oState(0));
>
>  NextState(0) <= (not oState(2) and     oState(1)) or 
>                  (not oState(2) and     oState(0));
>
>end process;
>
>end architecture TwoProcessHandmade;


In dieser Architektur wurde das Lauflicht aus der Vorlesung mittels 2 Processes und der Zustandsüberführungsfunktion aus den KV-Diagramm realisiert.
Der oberste Process stellt hier das Stateregister dar.
Der untere Process ist ein rein kombinatorischer Process und dient zur Berechnung des nächsten States.

### Architecture TwoProcessWithCase

>```vhdl
>architecture TwoProcessWithCase of RunningLight is
>  signal NextState : std_ulogic_vector(2 downto 0);
>  constant cStateAllOff : std_ulogic_vector(2 downto 0) := "000";
>begin
>
>process (iClk,inResetAsync) is 
>begin
>  if(inResetAsync = not('1'))then
>    oState <= cStateAllOff;
>  elsif(rising_edge(iClk)) then
>    oState <= NextState;
>  end if;
>end process;
>
>
>NextStateLogic: process (oState) is
>begin
>  case oState is 
>    when "000" => NextState <= "100";
>    when "100" => NextState <= "010";
>    when "010" => NextState <= "001";
>    when "001" => NextState <= "011";
>    when "011" => NextState <= "111";
>    when "111" => NextState <= "000";
>    when others => NextState <= "XXX";
>  end case;
>end process;
>
>end architecture TwoProcessWithCase;

Hier ist der erste Process gleich wie bei der andern Beschreibung.
Die Kombinatorik für die Berechnung des nächsten States wurde hier mittels eines Case Statement realisiert.

### Architektur OneProcessWithCase

>```vhdl
>architecture OneProcessWithCase of RunningLight is
>  signal NextState : std_ulogic_vector(2 downto 0);
>  constant cStateAllOff : std_ulogic_vector(2 downto 0) := "000";
>begin
>
>process (iClk,inResetAsync,oState) is 
>begin
>
>  if(inResetAsync = not('1'))then
>    oState <= cStateAllOff;
>  elsif(rising_edge(iClk)) then
>    oState <= NextState;
>  end if;
>
>  case oState is 
>    when "000"  => NextState <= "100";
>    when "100"  => NextState <= "010";
>    when "010"  => NextState <= "001";
>    when "001"  => NextState <= "011";
>    when "011"  => NextState <= "111";
>    when "111"  => NextState <= "000";
>    when others => NextState <= "XXX";
>  end case;
>
>end process;
>
>end architecture OneProcessWithCase;

Hier wurde die Kombinatorik für die Stateüberführung in den Process des StateRegisters gegeben.
Dies ist zulässig da NextState kein Output Port der Entity darstellt.
Hier muss der Process allerdings auch auf oState Sensitiv sein, damit sobald eine Änderung von oState vorliegt, der neue Zustand berechnet wird.
Persönlich finde ich die Beschreibung WithCase2Process am saubersten. 
Da hier Stateregister un Kombinatorik klar getrennt sind.

### Simulation und Verifikation

Die Funktionalität der beschriebenen FSMs wurde mittels einer automatischen Testbench nachgewiesen.

>```vhdl
>entity RunningLight_TB is
>end RunningLight_TB;
>
>architecture Testbench of RunningLight_TB is
>    signal Clk           : std_ulogic := '0';
>    signal State_Hand    : std_ulogic_vector(2 downto 0);
>    signal State_Case1P  : std_ulogic_vector(2 downto 0);
>    signal State_Case2P  : std_ulogic_vector(2 downto 0);
>    signal nResetAsync   : std_ulogic;
>begin
>
>Entity_RunningLight1 : entity work.RunningLight(TwoProcessHandmade)
>port map (
>    iClk         => Clk,
>    inResetAsync => nResetAsync,
>    oState       => State_Hand
>);
>
>Entity_RunningLight2 : entity work.RunningLight(TwoProcessWithCase)
>port map (
>    iClk         => Clk,
>    inResetAsync => nResetAsync,
>    oState       => State_Case2P
>);
>
>Entity_RunningLight3 : entity work.RunningLight(OneProcessWithCase)
>port map (
>    iClk         => Clk,
>    inResetAsync => nResetAsync,
>    oState       => State_Case1P
>);
>
>clkgen: clk <= not clk after 2 ns;
>  
>stimul: process is 
>begin
>    nResetAsync <= '0';
>    wait for 10 ns;
>    nResetAsync <= '1';
>    wait;
>end process;
>
>
>verify_RST: postponed process (nResetAsync) is
>begin
>
>    if(nResetAsync = '0') then
>        assert(State_Hand   = "000") report   "Failed Reset in Arch: TwoProcessHandmade!" severity failure;
>        assert(State_Case1P   = "000") report "Failed Reset in Arch: OneProcessCase!" severity failure;
>        assert(State_Case2P   = "000") report "Failed Reset in Arch: >TwoProcessCase!" severity failure;
>    end if;
>    
>end process;
>
>verify_Hand: postponed process (State_Hand) is
>    variable prevState : std_ulogic_vector(2 downto 0) := "000";
>begin
>
>    if(nResetAsync = not('0')) then
>        case prevState is
>            when "000"  =>  assert(State_Hand = "100") report "Wrong State in Arch: TwoProcessHandmade!" severity failure;
>            when "100"  =>  assert(State_Hand = "010") report "Wrong State in Arch: TwoProcessHandmade!" severity failure;
>            when "010"  =>  assert(State_Hand = "001") report "Wrong State in Arch: TwoProcessHandmade!" severity failure;
>            when "001"  =>  assert(State_Hand = "011") report "Wrong State in Arch: TwoProcessHandmade!" severity failure;
>            when "011"  =>  assert(State_Hand = "111") report "Wrong State in Arch: TwoProcessHandmade!" severity failure;
>            when others => null;
>        end case;
>    end if;
>    prevState := State_Hand;
>
>end process;
>
>verify_Case2P: postponed process (State_Case2P) is
>    variable prevState : std_ulogic_vector(2 downto 0) := "000";
>begin
>
>    if(nResetAsync = not('0')) then
>        case prevState is
>            when "000"  =>  assert(State_Case2P = "100") report "Wrong State in Arch: TwoProcessCase!" severity failure;
>            when "100"  =>  assert(State_Case2P = "010") report "Wrong State in Arch: TwoProcessCase!" severity failure;
>            when "010"  =>  assert(State_Case2P = "001") report "Wrong State in Arch: TwoProcessCase!" severity failure;
>            when "001"  =>  assert(State_Case2P = "011") report "Wrong State in Arch: TwoProcessCase!" severity failure;
>            when "011"  =>  assert(State_Case2P = "111") report "Wrong State in Arch: TwoProcessCase!" severity failure;
>            when others => null;
>        end case;
>    end if;
>
>    prevState := State_Case2P;
>
>end process;
>
>verify_Case1P: postponed process (State_Case1P) is
>    variable prevState : std_ulogic_vector(2 downto 0) := "000";
>begin
>
>    if(nResetAsync = not('0')) then
>        case prevState is
>            when "000"  =>  assert(State_Case1P = "100") report "Wrong State in Arch: OneProcessCase!" severity failure;
>            when "100"  =>  assert(State_Case1P = "010") report "Wrong State in Arch: OneProcessCase!" severity failure;
>            when "010"  =>  assert(State_Case1P = "001") report "Wrong State in Arch: OneProcessCase!" severity failure;
>            when "001"  =>  assert(State_Case1P = "011") report "Wrong State in Arch: OneProcessCase!" severity failure;
>            when "011"  =>  assert(State_Case1P = "111") report "Wrong State in Arch: OneProcessCase!" severity failure;
>            when others => null;
>        end case;
>    end if;
>
>    prevState := State_Case1P;
>
>end process;
>
>end Testbench;

Hier wird das Ergebnis der einzelnen Statemachines durch die Verify Processes geprüft.
Falls eine Fehlfunktion festgestellt wird, wird mittels der Assertion mittels severity failure abgebrochen.

#### Waveform

![Wave](./images/Wave_FSM_RL.png)

Da die Testbench nicht abgebrochen hat ist die Funktion gegeben.
Im Vorhinein wurde die Funktion der Verify Processes überprüft.
Hier wurde ein Fehler erzwungen.

### Synthese TwoProcessHandmade

#### Boardadapter
>```vhdl
>architecture Struct of RunningLightHandmadeOnPCBDe1Soc is
>signal KeyPosLogic : std_ulogic_vector(KEY'range);   
>begin 
>
>-- Instantiate Entity
>EntityRunningLightHandmade : entity work.RunningLight(TwoProcessHandmade)
>port map (
>    iClk          => KeyPosLogic(0),         
>    inResetAsync  => KEY(1),                -- negativ Logic for Reset
>    oState        => LEDR
>);
>
>-- Convert Negative Logic from the board to pos logic
>KeyPosLogic <= not KEY;
>
>end Struct; 

Hier wird als Takteingang der Taster 1 verwendet. 
Für den Reset wird die negative Logik vom Taster beibehalten.
Somit befindet sich das Design solange im Reset solange der Taster nicht gedrückt ist.

#### Compilation Report

![Compilation Report Handmade](./images/Handmade/Summery.png)

Aus dem Compilation Report ist ersichtlich dass 3 Flipflops erzeugt wurden.
Die 3 Flipflop durch die 3 Bits des State Signals entstanden und bilden das Stateregister. 

#### RTL

![RTL](./images/Handmade/RTL.png)

#### Techmap

![TechMap](./images/Handmade/TechMap.png)

#### Warnings

![Warnings](./images/Handmade/Warnings.png)

Bei den Warnings fällt auf, dass Quartus meldet, dass das vorgegebene Timing nicht erreicht wird.
Dies ist auch klar denn als Takt wird ein Taster input verwendet. 
Hier entsteht auch die Warning dafür.

### Synthese TwoProcessCase

#### Boardadapter
>```vhdl
>architecture Struct of RunningLightCase2POnPCBDe1Soc is
>signal KeyPosLogic : std_ulogic_vector(KEY'range);   
>begin 
>
>-- Instantiate Entity
>EntityRunningLightCase2P : entity work.RunningLight(TwoProcessWithCase)
>port map (
>    iClk          => KeyPosLogic(0),         
>    inResetAsync  => KEY(1),                -- negativ Logic for Reset
>    oState        => LEDR
>);
>
>-- Convert Negative Logic from the board to pos logic
>KeyPosLogic <= not KEY;
>
>end Struct; 

#### Compilation Report

![Compilation Report Handmade](./images/2Case/Summery.png)

Auch hier sind 3 Register für den State entstanden

#### RTL

![RTL](./images/2Case/RTL.png)

#### Techmap

![TechMap](./images/2Case/TechMap.png)

#### Warnings

![Warnings](./images/2Case/Warnings.png)

### Synthese OneProcessCase

#### Boardadapter
>```vhdl
>architecture Struct of RunningLightCase1POnPCBDe1Soc is
>signal KeyPosLogic : std_ulogic_vector(KEY'range);   
>begin 
>
>-- Instantiate Entity
>EntityRunningLightCase2P : entity work.RunningLight(OneProcessWithCase)
>port map (
>    iClk          => KeyPosLogic(0),         
>    inResetAsync  => KEY(1),            -- negativ Logic for Reset
>    oState        => LEDR
>);
>
>-- Convert Negative Logic from the board to pos logic
>KeyPosLogic <= not KEY;
>
>end Struct; 

#### Compilation Report

![Compilation Report Handmade](./images/1Case/Summery.png)

Auch hier sind 3 Register für den State entstanden

#### RTL

![RTL](./images/1Case/RTL.png)

#### Techmap

![TechMap](./images/1Case/TechMap.png)

Auch hier entsteht die gleiche Hardware wie in den anderen Beschreibungen.

#### Warnings

![Warnings](./images/1Case/Warnings.png)

## Aufgabe 2 Speed of Light

### FMAX
![Warnings](./images/2Case/FMax.png)



