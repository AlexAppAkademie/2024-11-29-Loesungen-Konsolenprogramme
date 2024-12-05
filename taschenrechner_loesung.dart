import 'dart:io';

void main() {
  // Fordere den Benutzer auf, die erste Zahl einzugeben 
  print('Geben Sie die erste Zahl ein.');
  // Lies die Eingabe als String ein
  String eingabe = stdin.readLineSync()!; // ! um zu sagen, dass da definitiv etwas eingegeben wird (also auf gar keinen Fall null kommt)
  // Wandel die Eingabe in ein double um, um damit rechnen zu können
  double zahl1 = double.parse(eingabe);

  // Fordere den Benutzer auf, die gewünschte Rechenart einzugeben (+, -, *, /).
  print('Geben Sie die gewünschte Rechenart ein (+, -, *, /)');
  String rechenart = stdin.readLineSync()!;

  // Fordere den Benutzer auf, die zweite Zahl einzugeben
  print('Geben Sie die zweite Zahl ein.');
  // Speicher die Eingabe direkt als double
  double zahl2 = double.parse(stdin.readLineSync()!); // Kurzfassung von Zeile 7 & 9

  // Führe die entsprechende Berechnung basierend auf der Eingabe des Benutzers durch.
  double ergebnis = 0;
  if (rechenart == '+') {
    ergebnis = zahl1 + zahl2;
  }
  else if (rechenart == '-') {
    ergebnis = zahl1 - zahl2;
  }
  else if (rechenart == '*') {
    ergebnis = zahl1 * zahl2;
  }
  else if (rechenart == '/') {
    ergebnis = zahl1 / zahl2;
  }

  // Gib das Ergebnis der Berechnung aus.
  print('Das Ergebnis von $zahl1 $rechenart $zahl2 ist: $ergebnis');
}