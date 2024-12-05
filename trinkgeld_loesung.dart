import 'dart:io';

void main() {
  // Frage den Benutzer nach der Zahlsumme 
  print("Bitte geben Sie die Zahlsumme ein.");
  // und speichere diese.
  String eingabe = stdin.readLineSync()!; // Eingabe als String einlesen
  double zahlsumme = double.parse(eingabe); // Eingabe in ein double umwandeln, damit wir damit rechnen können

  // Frage den Benutzer nach dem Trinkgeld-Prozentsatz
  print("Wie viel Prozent Trinkgeld möchten Sie geben (z.B. 5, 10, 15)");
  // und speichere diesen.
  double prozentsatz = double.parse(stdin.readLineSync()!);

  // Berechne das Trinkgeld basierend auf der Zahlsumme 
  // und dem Prozentsatz.
  // Formel: Trinkgeld = (Zahlsumme * Prozentsatz) / 100
  double trinkgeld = (zahlsumme * prozentsatz) / 100;

  // Berechne die Gesamtsumme, indem du das Trinkgeld 
  // zur Zahlsumme addierst.
  double gesamtsumme = zahlsumme + trinkgeld;

  // Gib die berechnete Gesamtsumme inklusive Trinkgeld aus.
  // Tipp: Verwende print(), um das Ergebnis anzuzeigen.
  print("Gesamtsumme $gesamtsumme€");
}