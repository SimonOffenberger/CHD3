Übung 1 Aufgabe 3:
Schaltplan: Tasten und LEDs

a)
LED:
Bei den LED ist im Schaltplan die Leuchtdiode abgebildet. Dadurch, dass die Kathode der LED
dauerhaft an GND angeschlossen ist, wird durch den '1' Pegel des Pins die LED eingeschalten.
Durch den '1' Pegel am Pin wird am Pin 3.3V ausgegeben wodurch die LED in Flussrichtung geschalten ist.

7Seg LED:
Hier ist nicht direkt aus dem Schaltplan ersichtlich wie die einzelnen Segmente der Anzeige verschalten sind.
Jedoch lässt sich aus den Pinbezeichnungen ihre Funktion ableiten. z.B. CA1 und CA2 stehen sehr wahrscheinlich für
Common Anode1 und Common Anode2. Genauere Informationen müssen hier dem Datenblatt der 7Seg Anzeige entnommen werden.
Im User Manual des DE1 SOC Board wurde die Antwort gefunden. Siehe Kommentar im User Manual.

b)
Strom durch die LEDS:
Aus User Manual kann der High Pegel des Pins mit 3.3V herausgefunden werden.
Spannung am Widerstand = 3.3V - 1.6V (Flussspannung der roten LED) = 1.7V
Strom durch Widerstand und LED = 1.7V / 330E (Aus Schaltplan der LEDs entnommen) = 5.15mA
Leistung am Widerstand= 1.7V * 5.15mA = 8.75mW
Leistung an der LED = 1.6V * 5.15mA = 8.24mW

Strom durch die Segmente der 7 Segment Anzeige:
Aus User Manual kann der Low Pegel des Pins mit 0V herausgefunden werden.
Die 7 Seg Anzeige hängt mit der Common Anode auf 3.3V durch Low Schalten fließt hier Strom.
Spannung am Widerstand = 3.3V - 1.6V (Flussspannung der roten LED 7Seg) = 1.7V
Strom durch Widerstand und LED = 1.7V / 1k (Aus Schaltplan der 7Seg entnommen) = 1.7mA
Leistung an einem Widerstand = 1.7V * 1.7mA = 2.89mW
Leistung an einem Segment    = 1.6V * 1.7mA = 1.72mW

c)
Durch Verwenden des Schalters als Output können hier Konflikte in den Pegel des Pins und der des Schalters erzeugt werden. 
Hier entsteht im Fehlerfall z.B. dass der Taster auf 3V3 geschalten ist und der Pin des FPGA auf GND. Somit liegt am Widerstand 3.3V an.
Strom durch den Widerstand: 3.3V / 120E (entnommen aus dem Schaltplan) = 27.5mA.
D.h. Im Fehlerfall können 27.5mA sinked oder sourced werden.

d) Aus dem Absolute Maximum Ratings des FPGA Chips vom Datenblatt kann entnommen werden,
dass ein Pin Maximal 25mA sinken und 40mA sourcen kann. 
Aus dieser Information lässt sich schließen dass im Fehlerfall, indem der Pin auf GND geschalten wird und der Schalter auf 3V3 hängt, der FPGA Chip zerstört wird. 
Wird jedoch der Pin auf 3V3 geschalten und der Schalter steht auf GND wird der FPGA nicht zerstört da der Strom unter der Maximalgrenze liegt. 

e)
Das Entprellen der Tasten basiert auf einem RC Tiefpassfilters. Dieser Schluckt die kurzen Pulse die durch das Prellen entstehen.
Der 74HC245 Bidirektionale Bus Tranceiver wird hier durch Beschaltung des DIR und OE Pins auf 
einen unidirektionalen Transmitter reduziert.
Um nun eine steile Flanke am FPGA Pin zu generieren wird diese langsame Flanke an den 74HC245 input angelegt. 
Der 74HC245 erzeugt nun eine steile Flanke für den FPGA.
Wichtig hierbei ist wichtig, dass die Zeitkonstante des RC-Glieds länger als die Prell-Zeit des Tasters ist.
Ansonsten werden die Prell Impulse von Taster nicht geschluckt und der 74HC245 gibt diese am Ausgang wieder.


