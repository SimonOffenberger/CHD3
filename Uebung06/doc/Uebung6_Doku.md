# Übung 6 Simon Offenberger S2410306027  
## Aufgabe 1 Latches and Flip Flops
### Architektur A
>```vhdl
>  FF_or_Latch_A : process (iClk) is
>  begin
>    if (iClk = '1') then
>      oQ_A <= iD;
>    end if;
>  end process FF_or_Latch_A; 

#### RTL Viewer
![RTL Viewer](./images/ArchA/RTL.png)

#### Technologie Map
![Tech Map Viewer](./images/ArchA/TechMap.png)

Hier ist im der Technologie Map als auch im RTL-Viewer ein FlipFlop entstanden.
In der Beschreibung ist dies auch verdeutlicht. Da der Process auf iClk sensitiv ist, wird dieser nur bei einem Event auf iClock aktiv. 
Mit der Abfrage nach iClk = '1' wird die Steigende Flanke auf Clock dargestellt. Innerhalb vom IF wird nun der Wert von D nach Q übernommen. Aus diesen Gründen entsteht in der Synthese ein FlipFlop.

### Architektur B
>```vhdl
>  FF_or_Latch_B : process (iClk, iD) is
>  begin
>    if (iClk = '1') then
>      oQ_B  <= not iD;
>    end if;
>  end process FF_or_Latch_B; 

#### RTL Viewer
![RTL Viewer](./images/ArchB/RTL.png)

#### Technologie Map
![Tech Map Viewer](./images/ArchB/TechMap.png)

Hier ist ein Latch entstanden.
Der Grund dafür liegt in der Sensitivity Liste des Processes.
Dieser ist auf iClk und iD sensitiv.
Somit wird der Process aktiv bei Event auf iClk und iD.
Weil hier wiederum in der IF Anweisung nicht auf Clk'event geprüft wird entsteht ein Latch.
Denn in der Beschreibung wird auch der Wert von D übernommen wenn der Takt statisch 1 ist und D sich ändert.
Somit stellt der Takteingang den Enable-Eingang des Latches dar.

### Architektur C
>```vhdl
>  FF_or_Latch_C : process (iClk) is
>  begin
>    if rising_edge(iClk) then
>      oQ_C  <= not iD;
>    end if;
>  end process FF_or_Latch_C; 

#### RTL Viewer
![RTL Viewer](./images/ArchC/RTL.png)

#### Technologie Map
![Tech Map Viewer](./images/ArchC/TechMap.png)

In der Architektur ist eine klassische Beschreibung eines FlipFlops zu sehen. 
Aus diesen Grund überrascht auch nicht, dass dieses auch so in Hardware ein Flipflop ergibt.
Denn es wird nur der Wert von D nach Q übernommen wenn eine Rising Edge am Takteingang vorliegt. Hier muss natürlich auch iClk in der Sensitivity Liste eingetragen sein.
### Architektur D
>```vhdl
>  FF_or_Latch_D : process (iClk) is
>  begin
>    if (iClk'event and iClk = '1') then
>      oQ_D  <= not iD;
>    end if;
>  end process FF_or_Latch_D; 

#### RTL Viewer
![RTL Viewer](./images/ArchD/RTL.png)

#### Technologie Map
![Tech Map Viewer](./images/ArchD/TechMap.png)

Hier ist im Grunde die gleiche Implementierung wie in der Architektur C beschrieben. Nur hier wird für die Flankenüberprüfung nicht rising edge verwendet sondern explizit auf Event und Zustand 1 abgefragt. Stellt aber in der Synthese das gleiche Verhalten dar.

### Architektur E
>```vhdl
>  FF_or_Latch_E : process (iClk, iD) is
>    
>  begin
>    if (iClk = '1') then
>      E <= not iD;
>    end if;
>    oQ_E  <= E;
>  end process FF_or_Latch_E; 

#### RTL Viewer
![RTL Viewer](./images/ArchE/RTL.png)

#### Technologie Map
![Tech Map Viewer](./images/ArchE/TechMap.png)

Hier entsteht ein Latch.
Da der Process auf iClk und iD sensitiv ist und in der IF Anweisung nur auf iClk = 1 geprüft wird.
Der Ausgang wird hier über den Umweg des Signals E an den Ausgang weitergegeben. Wobei der Wert von E auf Q erst bei dem nächsten Event auf Clk oder D übernommen wird.  Hier wird im Grunde die gleiche Funktionalität wie in der Architektur B beschrieben.
Dies wird durch den Technologie Map Viewer auch ersichtlich. Denn die Synthese hat dies erkannt und für beide Architekturen nur eine Implementierung in Hardware umgesetzt. Dies ist ersichtlich, da die Ausgänge LEDR[1] und LEDR[4] den geleichen Output des Latches oQ_B verwenden.
### Architektur F
>```vhdl
>  FF_or_Latch_F : process (iClk) is
>    
>  begin
>    if (iClk = '1') then
>      oQ_F    <= F;
>      F <= not iD;
>    end if;
>  end process FF_or_Latch_F; 

#### RTL Viewer
![RTL Viewer](./images/ArchF/RTL.png)

#### Technologie Map
![Tech Map Viewer](./images/ArchF/TechMap.png)

Hier entstehen 2 hintereinander geschaltete FlipFlops.
Durch die Analyse des VHDL Codes wird dies auch verdeutlicht.
Da in der Sensitivity Liste nur iClock vorhanden ist und in der If Anweisung auf IClk auf 1 geprüft wird deutet das auf ein Flipflop hin, denn das innerhalb der If wird nur ausgeführt wenn iclk ein event hat und der Wert 1 ist.
Weiters wird innerhalb der IF Anweisung zuerst der Ausgang auf den Wert von F gesetzt und danach D nach F geschrieben, dies deutet darauf hin, dass der Wert ID erst nach 2 Taktflanken am Ausgang Q erscheint. Außerdem wird das Signal iD noch negiert.
Dadurch entstehen hier 2 Flipflops.
### Architektur G
>```vhdl
>  FF_or_Latch_G : process (iClk, iD) is
>    
>  begin
>    if (iClk = '1') then
>      G <= not iD;
>      oQ_G    <= G;
>    end if;
>  end process FF_or_Latch_G; 

#### RTL Viewer
![RTL Viewer](./images/ArchG/RTL.png)

#### Technologie Map
![Tech Map Viewer](./images/ArchG/TechMap.png)

Hier entstehen 2 Latches hintereinander.
Im Technologie Map-Viewer ist hier Functionality Sharing zu beobachten. Denn für die Umsetzung der 2 Latches erzeugt die Synthese nur 1 zusätliches Latch und benutzt für das 2. Lacht das Latch der Architektur B.
Hier muss es sich um 2 Latches handeln, dann die beiden Zuweisungen D gets G und Q gets G sind nur aktiv wenn Clock = 1 ist, sprich das Enable beim Latch vorhanden ist. 
### Architektur H
>```vhdl
>  FF_or_Latch_H : process (iClk) is
>    
>  begin
>    if (iClk'event and iClk = '1') then
>      H <= not iD;
>      oQ_H    <= H;
>    end if;
>  end process FF_or_Latch_H; 
#### RTL Viewer
![RTL Viewer](./images/ArchH/RTL.png)

#### Technologie Map
![Tech Map Viewer](./images/ArchH/TechMap.png)

Hier ist in der Technologie Map wieder Functionality Sharing zu sehen. 
Es werden 2 FlipFlops umgesetzt.
Denn der Process ist nur auf Clock sensitiv und prüft in der IF nach einer Rising Edge am Clock.
Der Wert von iD erscheint erst nach 2 steigenden Flanken am Ausgang -> dies gibt einen Hinweis warum hier 2 Flipflops umgesetzt werden.
### Architektur I
>```vhdl
>  FF_or_Latch_I : process (iClk) is
>    
>  begin
>    if (iClk = '1') then
>      oQ_I <= not iD;
>    elsif (iClk = '0') then
>      null;
>    end if;
>  end process FF_or_Latch_I;  

#### RTL Viewer
![RTL Viewer](./images/ArchI/RTL.png)

#### Technologie Map
![Tech Map Viewer](./images/ArchI/TechMap.png)

Null bedeutet in VHDL "nichts tun"!
Somit hat der elseIf Zweig in der Beschreibung keine Auswirkung.
In der Synthese entsteht ein Flipflop mit Inverter am Eingang.
Weil process nur berechnet wenn iClock ein Event hat und der Wert 1 ist.
Somit wird der Code innerhalb der If nur aktiv wenn eine Rising Edge am Clock auftritt.
## Aufgabe 1 Warnings und Critical Warnings
![Warnings](./images/Warnings.png)
Durch Analyse der Warnings, fällt auf, dass Quartus davor warnt dass bei der Synthese Latches aus dem VHDL code erzeugt wurden.
>Warning (10631): VHDL Process Statement warning at FfOrLatch-Rtl-a.vhd(40): inferring latch(es) for signal or variable "oQ_B", which holds its previous value in one or more paths through the process

Auch vom Timing Analyser wird eine Warnung ausgegeben, dass in der Beschreibung eine kombinatorische Schleife entstanden ist.

>Warning (335093): The Timing Analyzer is analyzing 2 combinational loops as latches. For more details, run the Check Timing command in the Timing Analyzer or view the "User-Specified and Inferred Latches" table in the Analysis & Synthesis report.

## rising_edge()
Hier ist die Function rising edge aus den package std_logiv_1164 abgebildet.
Hier wird der type std u logic zu einem Typ X01 gewandelt. 
Hier wird geprüft ob der jetzige Wert 1 ist und ein event am Signal war und der letzte Wert des Signals 0 war.
Hier besteht schon der Unterschied zur Implementierung mittels signal'event and signal = '1', hier erfüllt jeder Übergang des signals zu dem Wert 1 die Bedingung zb. 'U' -> '1'.
Mit der Funktion rising_edge muss ein Übergang von '0' auf '1' geschehen um true zurückzugeben. 
>```vhdl
>  function rising_edge (signal s : STD_ULOGIC) return BOOLEAN is
>      -- Verific synthesizes this function from the native source code
>  begin
>    return (s'event and (To_X01(s) = '1') and
>            (To_X01(s'last_value) = '0'));
>  end function rising_edge;


>```vhdl
>  function To_X01 (s : STD_ULOGIC) return X01 is
>    VARIABLE result : X01 ;
>    ATTRIBUTE synthesis_return OF result:VARIABLE IS "FEED_THROUGH" ;
>  begin
>    result := (cvt_to_x01(s));
>    return result ;
>  end function To_X01;

>```vhdl
>  constant cvt_to_x01 : logic_x01_table := (
>    'X',                                -- 'U'
>    'X',                                -- 'X'
>    '0',                                -- '0'
>    '1',                                -- '1'
>    'X',                                -- 'Z'
>    'X',                                -- 'W'
>    '0',                                -- 'L'
>    '1',                                -- 'H'
>    'X'                                 -- '-'
>    );

>```vhdl
>  subtype X01 is resolved STD_ULOGIC range 'X' to '1';    -- ('X','0','1') 

Durch Betrachtung der Funktion **To_X01** wird klar, dass hier der Wertebereich von STD_ulogic eingegrenzt wird. Hier wird zb. ein 'U' in ein 'X' umgewandelt. Diese Umwandlung ist in der Definition der Konstante cvt_to_x01 ersichtlich.

## Aufgabe 2 D-FlipFlop

Hier wurde wie in der Aufgabe beschrieben ein D-FF in VHDL beschrieben.
>```vhdl
>process (iClk,inResetAsync) is 
>begin
>  if(inResetAsync = not('1'))then
>    oQ <= '0';
>    onQ <= '1';
>  elsif(iClk'event and iClk = '1') then
>    if(iSet = '1') then
>      oQ <= '1';
>      onQ <= '0';
>    elsif(iEnable = '1') then 
>      oQ <= iD;
>      onQ <= not(iD);
>    end if;
>  end if;
>end process;

Das gesamte D-FlipFlop wurde mittels eines Processes abgebildet.

Mittels einer Testbench die alle Eingangskombinationen und auch alle möglichen Übergänge am D-FF anliegt wurde dieses geprüft.
Speziell für die Prüfung wurde ein Verify Process in der Testbench implementiert.

#### Waveform mit allen Übergängen

![Wave](./images/DFF_Wave%20(1).png)

#### Waveform mit allen Zuständen

![Wave](./images/DFF_Wave%20(2).png)

Hier kann in der Waveform an der Variable vcheck abgelesen werden ob die Funktion erfüllt ist.
Dennoch muss die Waveform auch händisch nachgeprüft werden.

### Synthese Ergebnis
#### RTL Viewer
![RTL](./images/RTL.png)
#### Tech Map
![TechMap](./images/TechMap.png)

Im Synthese Ergebnis ist zu sehen, dass die Funktionalität mittels 2 FlipFlops umgesetzt wurde.
Wobei ein Flipflop den Q und das andere den nQ Ausgang bereitstellt.
In der Synthese wurde eigentlich erwartet nur ein FlipFlop zu sehen, wobei der nQ Ausgang mittels inverter bereitgestellt wird. 
Jedoch ist diese Umsetzung auch OK, denn hier wird durch die Kombinatorik sichergestellt, dass Q und nQ immer gegengleich beschaltet werden.

#### Umsetzung mit nur 1 Flipflop

Durch geschicktes umdesignen der Architektur kann das Verhalten mit nur einem FlipFlop abgebildet werden.
Hier muss die Gegengleichheit von oQ und onQ außerhalb der Flanke behandelt werden.
Ansonsten werden 2 FlipFlops in einem Process beschrieben.
>```vhdl
>process (iClk,inResetAsync) is 
>begin
>  if(inResetAsync = not('1'))then
>    oQ <= '0';
>    --onQ <= '1';
>  elsif(iClk'event and iClk = '1') then
>    if(iSet = '1') then
>      oQ <= '1';
>      --onQ <= '0';
>    elsif(iEnable = '1') then 
>      oQ <= iD;
>      --onQ <= not(iD);
>    end if;
>  end if;
>end process;
>
>onQ <= not(oQ);

Wird nun diese Beschreibung in die Synthese geschickt erhaltet man folgendes Ergebnis.

![TechMap](./images/DFF_mit_1FF.png)

Hier wird nun onQ mittels Inverter realisiert.

### Test am Board
![Board](./images/Board.jpg)

Das D-FlipFlop wurde nun mittels PCB Adapter am Board getestet.
Als Takteingang fungierte hier der Taster 0.
Der Taster musste invertiert werden um die Spezifikation in der Angabe zu erfüllen.
Steigende Flanke beim Drücken und Fallende Flanke beim Loslassen.

#### Maximale Taktfrequenz
Morgens:ca 6 Hz
Mittags:ca 8 Hz
Abends: ca 6 Hz

#### Umstellung auf Fallende Flanke
>```vhdl
> process (iClk,inResetAsync) is 
>begin
>  if(inResetAsync = not('1'))then
>    oQ <= '0';
>    onQ <= '1';
>  elsif(iClk'event and iClk = '0') then
>    if(iSet = '1') then
>      oQ <= '1';
>      onQ <= '0';
>    elsif(iEnable = '1') then 
>      oQ <= iD;
>      onQ <= not(iD);
>    end if;
>  end if;
>end process;

Hier wurde die Flankenerkennung auf die fallenden Flanke umgestellt.

Beim Test am Board wurde festgestellt, dass nun die Übernahme der Daten beim Loslassen des Tasters geschieht.

#### Kann mittels Takt von den Schaltern ein Prellen festgestellt werden.
Ja hier kann ein Prellen festgestellt werden.
Da die Schalter vorzugsweise beim Einschalten prellen wurde das D-FF auf die negative Flanke sensitiv gemacht. 
Nun kann der Ausgang des Flipflops gesetzt werden.
Jetzt werden die Eingänge folgendermaßen beschalten iD = '0' inReset'1' iSet='0'.
Wird nun der Schalter den den Takt erzeugt eingeschaltet sollte die LED weiter leuchten bleiben.
Da eine steigende Flanke an Takt nichts bewirken sollte. 
Hier wird aber ein Wechsel von Q beobachtet. 
Der Grund dafür liegt im prellen der Schalter.


## Aufgabe 3 Allflangengesteuertes D-FlipFlop
Zur Lösung dieser Aufgabe wurde das D-FlipFlop folgendermaßen umgebaut:
>```vhdl
>process (iClk,inResetAsync) is 
>begin
>  if(inResetAsync = not('1'))then
>    oQ <= '0';
>    onQ <= '1';
>  elsif(rising_edge(iClk) or falling_edge(iClk)) then
>    if(iSet = '1') then
>      oQ <= '1';
>      onQ <= '0';
>    elsif(iEnable = '1') then 
>      oQ <= iD;
>      onQ <= not(iD);
>    end if;
>  end if;
>end process;

Danach wurde dieses Design in die Synthese geschickt, hier wurde folgendes Ergebnis erreicht.

![ALLFFF](./images/AllFFF.png)

Hier wird ausgegeben, dass kein Register (Flipflop) dass auf 2 Taktflanken reagiert implementiert werden kann.

Es wurden auch andere Versionen der oben angeführten Implementierung versucht. 
Hier ändern sich nur die Fehlermeldungen die beim Synthetisieren ausgegeben werden.

## Schieberegister

Nun wurde die Architektur vom D-FlipFlop kopiert und erweitert damit dieses ein Shiftregister darstellt.
>```vhdl
>process (iClk,inResetAsync) is 
>begin
>  if(inResetAsync = not('1'))then
>    oQ <= (others => '0');
>  elsif(iClk'event and iClk = '1') then
>      oQ <= oQ(oQ'high -1 downto oQ'low) & iD;
>  end if;
>end process;

Hier wird bei jeder Taktflanke der Wert vom Vector oQ um 1 nach links geschoben und der neue Wert von ID dem untersten Bit des oQ Vectors zugewiesen.


### Simulation

![ShiftRegTB](./images/ShiftReg.png)

Hier ist die Simulation des Shiftregisters zu sehen.

### Synthese Ergebnis

![RTL](./images/RTLShift.png)
![TechMap](./images/TechMapShift.png)

Das Synthese Ergebnis zeigt im RTL Viewer eine Verschaltung von mehreren FlipFlops.
In der Technologie Map werden hier auch die 9 Flipflops dargestellt.

![BoardShiftReg](./images/Board_ShiftReg.jpg)

### Kann diese Schaltung mittels 9 Latches statt den FlipFlops realisiert werden?
Nein denn würden die Latches gleich wie die FlipFlops verdrahtet werden, dann würden für die High Dauer des Taktes alle Latches gleichzeitig transparent werden und der Wert von iD sehr schnell durch alle Latches durchrippeln.
Auch durch Veränderung der Verdrahtung würde man die Funktionalität mit Flipflops nicht erreichen.
Durch die Verwendung von 18 Latches wäre dies möglich, jedoch bilden dann 2 Latches miteinander ein DFlipFlop.






