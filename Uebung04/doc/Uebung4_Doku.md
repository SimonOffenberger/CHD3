# Übung 4 Simon Offenberger S2410306027  
## Aufgabe 1 Hierachie im Entwurf
### Design Partition
??
??
### Warum gibt es diese Feature nur in der Standardversion?
### Incremental Compile
Hierzu wurde im Internet auf der Webseite von Intel (Altera) nach dem Schlüsselwort **Incremental Compile** gesucht.
Hier wurde folgendes gefunden.
>In addition, the Intel® Quartus® Prime incremental compilation feature and the Intel® Quartus® Prime incremental routing feature allow for a fast turnaround time for your programming file, increasing productivity and enabling fast debugging closure. 

Dies lässt darauf schließen, dass diese Feature bei großen Designs einen Zeitvorteil beim Synthetisieren verschafft. Hier müssen nur die Teile des Design die verändert wurden neu synthetisiert werden und nicht das gesamte Projekt.  

### Logic Lock

> Logic Lock regions are floorplan location constraints. When you assign instances or nodes to a Logic Lock region, you direct the Fitter to place those instances or nodes within the region. A floorplan can contain multiple Logic Lock regions. 

Durch die Recherche wird klar, dass sich mit diesen Feature das Layout des Designs im Chip steuern lässt. Hier kann z.B. vorgegeben werden in welchem Bereich des Chips sich welche Komponenten des Designs befinden.

Dies könnte von nutzen sein um sicherzustellen, dass Teile des Designs über mehrere Iterationen, also während des Designprozesses, sich an der gleichen stelle befinden.

Hier vermute ich, dass dies für die Fixierung von Timings vonnöten sein kann. 
Die Timings während meiner Meinung auch vom Layout im Chip beeinflusst.

## Functionality Sharing bei einem Multiplexer

