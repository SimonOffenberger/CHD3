# Übung 2 Simon Offenberger S2410306027  
## Aufgabe 1 Pimp your .qsf

### Rekonstruktion QSF
Durch die Rekonstruktion des QSF Datei durch Quartus hat sich diese in ihrem Aufbau verändert.
Die ist in den folgenden Abbildungen gezeigt. (links = vor der Rekonstruktion durch Quartus)
<p>
  <img src="images/U2_A1 (1).png" alt="Bild 1" width="45%">
  <img src="images/U2_A1 (3).png" alt="Bild 2" width="45%">
</p>
<p>
  <img src="images/U2_A1 (2).png" alt="Bild 1" width="50%">
  <img src="images/U2_A1 (4).png" alt="Bild 2" width="41%">
</p>

Hier wird festgestellt, dass sich der Text im Header der Datei ändert.
Da die QSF Datei ursprünglich mit Quartus II generiert wurde, wird dieser Text entsprechend angepasst.
Auch die Pin-Assignments werden angepasst und in Gruppen aufgeteilt.
Hier entstehen folgende Abschnitte in der QSF Datei:
- Pin & Location Assignments
- Classic Timing Assignments
- Analysis & Synthesis Assignments
- Fitter Assignments
- EDA Netlist Writer Assignments
- Power Estimation Assignments
- EDA_TOOL_SETTINGS(eda_simulation)

Nach diesen Abschnitten folgt noch ein Bereich der Top-Level-Entity (PCB Adapter).

In der QSF sind nun auch Informationen zur Maximalen und Minimalen Temperatur des FPGAs zu finden.
Auch die Information zur Top-Level Architektur und den verwendeten FPGA sind vorhanden.

### Warning in der QSF
In der QSF Datei ist folgende Warning von Altera/Intel vorhande:
> 2) Intel recommends that you do not modify this file. This
     file is updated automatically by the Quartus Prime software
     and any changes you make may be lost or overwritten.

### Assignment Editor nach Rekonstruktion
Im Assignment Editor wurde nun die Rekonstruierte QSF Datei sichtbar.
Hier ist für jeden Pin die Location, also der Pin des FPGA Chips und 
der Name des PCB-Adapters ersichtlich.
Hier ist aufgefallen, dass dies für jedes Element eines Vektors einzeln passieren muss.
Der Grund dafür liegt daran, dass jedes einzelne Element des Vektors an unterschiedlichen Ports ausgegeben werden muss!

### Wildcards
Diese können verwendet werden um in den Assignments eine Einstellung auf mehreren Ports zu übernehmen.
Hierbei werden die Zeichen * und ? verwendet.

Neben den Wildcards gibt es noch die Möglichkeit Einstellungen auf einen gesamten Vektor vorzunehmen.
Hier sieht der Syntax in der QSF Datei folgendermaßen aus:
>set_instance_assignment -name CURRENT_STRENGTH_NEW 16MA -to HEX4

Dieses Assignment wird auf alle Elemente des Vektors HEX4 angewandt.

###
