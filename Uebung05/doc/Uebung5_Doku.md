# Übung 5 Simon Offenberger S2410306027  
## Aufgabe 1 

## Aufgabe 2 

## Aufgabe 3 Schaltplan DE1-SOC
### Aufteilung des FPGA Chips im Schaltplan
Der FPGA Chip ist im Schaltplan in folgende Gruppen aufgeteilt
- Clocks
- IO Banks 3-8
- GND Pins
- Power Pins
- HPS Power
- Configuration
Der FPGA Chip wurde in Funktionale Gruppen aufgeteilt. Dies bewirkt eine bessere Lesbarkeit der Schematic. Hier wurden zb. Alle Versorgungs- und Gnd Pins auf ein Blatt dargestellt.
Würde dies nicht gemacht werden wäre der Schaltplan unübersichtlich.

Aufgaben der Blöcke
- Bank 3A -> USB
- Bank 3B -> DRAM Interface
- Bank 4A -> GPIOs
- Bank 5A & 5B -> 7 Seg Anzeige
- Bank 6A & 6B -> HPS DDR3 Interface
- Bank 7 -> I2C, JTAG, Ethernet, SD-Interface,HPS USB
- Bank 8A -> VGA
- Clocks 
- Power & GND
- Configuration

### Welches Bauteil soll gekühlt werden?
Es muss sehr wahrscheinlich der FPGA Chip gekühlt werden, da dieser die Lüftergeschwindigkeit steuert.
Außerdem verfügt der FPGA Chip über die höchste Leistungsaufnahme an Board.

### Transil Diode SM2T3V3A
- Kennlinie Transil Diode:
![Transil Diode](./image/Suppressor-Diode-.png)
- Kennlinie Zener Diode:
![Transil Diode](./image/z-diode.jpg)
Unter der Betrachtung der beiden Kennlinien ist kein wesentlicher Unterschied der beiden Dioden zu erkennen. 
Ein Unterschied scheint durch die Betrachtung der ersten Kennlinie der Leckstrom zu sein.

**Unterschied zur Zenerdiode**
**Zweck**
- **Transil:** Schutz vor kurzzeitigen Überspannungs-Impulsen (ESD, EFT, Surge) (Pulse aus der EMV Prüfung); ausgelegt auf sehr schnelle Reaktion und hohe Pulsleistung.  
- **Zener:** Meist für Spannungsreferenz/-stabilisierung im Dauerbetrieb 

**Spezifikationen**
- **Transil:** Spezifiziert mit *V<sub>RM</sub>*, *V<sub>BR</sub>* (bei kleinem Prüfstrom) und *V<sub>CL</sub>* bei definiertem Pulsstrom/Pulsform. Ersichtlich aus den im Datenblatt angeführten Werten
- **Zener:** Spezifiziert mit Zenerspannung bei einem Teststrom (DC); nicht auf hohe Pulsleistungen ausgelegt.

### MOSFET FDV305N
Hierbei handelt es sich um einen N Kanal MOSFET.
Dieser übernimmt die Drehzahlsteuerung des Lüfters.
Diese Steuerung wird z.B Über PWM Ansteuerung des MOSFET realisiert.

### Steuerung der FAN_CTRL Leitung
![FAN CTRL](./image/FAN_CTRL.png)
Die Leitung wird vom FPGA gesteuert.
Die Temperaturmessung könnte über einen internen Temperatursensor im FPGA bzw. im HPS realisiert werden. Denn dies ist ja das zu kühlende Bauelement.
Weiters könnte noch ein Temperatursensor mittels FPGA ausgelesen werden. z.B. über anstecken an den GPIO Header.

### Problem beim Einstecken des Lüfters
Es könnte sein, dass beim Einstecken des Lüfters ein ESD Schlag von einem Aufgeladenen Benutzer auf den Connector überspringt.
Diese ESD-Impuls muss nun vom Board abgefangen werden um sensible Bauteile zu schützen. Z.B. durch Transil Diode die das MOSFET Gate schützt.

### DNI?
**Do not Install**
Das bedeutet, dass dieses Modul auf dem PCB nicht bestückt ist.
Also können auch keine ESD Events durch Einstecken des Lüfters entstehen.

### Configuration DIP-Switch
Im folgenden Bild ist die Default Konfiguration des Dip Switches abgebildet. Hier ist unterhabl auch die Schaltung zusehen.
![DIP Switch](./image/Config.png)
Durch Vergleich mit der Configuration am Board ist ersichtlich dass die Beschreibung am Schaltplan, **MSEL[4:0]=10010** nicht mit der am Board übereinstimmt. Die am Board eingestellte Stellung ist genau bitweise negiert! Dies impliziert, dass die Leitungen MSEL negative Logik haben, sie sind Low aktiv!
Aus diesem Grund wird auch durch ON Schalten des Dip Schalters eine logische '0' am Pin angelegt. Ansonsten wird der Pegel 'H' am Pin angelegt. 
Standard Config Werte an den Leitungen:
MSEL0: '0'
MSEL1: 'H'
MSEL2: '0' 
MSEL3: '0' 
MSEL4: 'H' 

### Widerstände R138 usw.
Diese Widerstände sind auch mit DNI versehen. Dies bedeutet diese sind unbestückt am Board.
Die Widerstände sind dazu gedacht, bei Nichtbestückung des Dipschalters die Konfiguration fix über diese Widerstände zu realisieren. 

### Konfiguration AS
![konfig](./image/As%20Mode.png)
Hier ist ein Auszug aus dem User Manual zur Konfiguration AS Mode.
Beschrieben ist hier, dass die Programmierung des FPGAs über das EPCS (Enhanced Programmable Configuration Serial Device) vollzogen wird bei der Einstellung MSEL[4:0]=10010.

### Konfigurations Pins
Auszug aus dem Cyclon V Handbook
![konfig Pins](./image/ConfPins.png)

CONF DONE
- Funktion: Statusausgang für den Konfigurationsprozess.

- Beschreibung: Während der Konfiguration wird CONF DONE auf low gezogen. Nach der Konfiguration wird CONF DONE auf high freigegeben. Dies signalisiert, dass die Konfiguration abgeschlossen ist und die Initialisierung beginnt.

NSTATUS

-Funktion: Statusausgang und -eingang für Fehlererkennung und Reset.

-Beschreibung: Nach dem Einschalten wird NSTATUS auf low gehalten, bis die Power-on-Reset-Phase abgeschlossen ist. Während der Konfiguration wird NSTATUS auf low gezogen, wenn ein Fehler auftritt. Ein externer low-Pegel an NSTATUS kann den Konfigurationsprozess neu starten. NSTATUS ist ebenfalls bidirektional und sollte mit einem externen 10-kΩ-Pull-up-Widerstand an VCCPGM verbunden werden.

NCONFIG

- Funktion: Eingang für das Starten oder Neustarten der Konfiguration.

- Beschreibung: Ein low-Pegel an NCONFIG startet den Konfigurationsprozess neu.

    
NCE

- Funktion: Chip Enable-Eingang.

- Beschreibung: Ein low-Pegel an NCE aktiviert das FPGA für die Konfiguration. In der Regel wird NCE auf low gehalten, um die Konfiguration zu ermöglichen.