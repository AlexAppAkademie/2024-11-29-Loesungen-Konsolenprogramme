import 'dart:io';

void main() {
  // Erstelle eine leere Datenstruktur, um Benutzerinformationen zu speichern.
  Map<String, String> benutzerDaten = {};

  // Fordere den Benutzer auf, seine Registrierungsdaten einzugeben (Email, Passwort).
  print("Registrierung:");
  print("Geben Sie Ihre Email ein: ");
  String email = stdin.readLineSync()!; // ! um zu sagen, dass definitiv etwas eingegeben wird

  print("Geben Sie Ihr Passwort ein: ");
  String passwort = stdin.readLineSync()!; // ! um zu sagen, dass definitiv etwas eingegeben wird

  // Speichere die Email und das Passwort in der Map.
  benutzerDaten[email] = passwort;

  print("Registrierung abgeschlossen! Sie können sich jetzt einloggen.");

  // Fordere den Benutzer auf, sich mit seiner Email und Passwort einzuloggen.
  print("Login:");
  print("Email: ");
  String? loginEmail = stdin.readLineSync();

  print("Passwort: ");
  String? loginPasswort = stdin.readLineSync();

  // Überprüfe, ob das eingegebene Passwort mit dem gespeicherten Passwort übereinstimmt.
  if (benutzerDaten.containsKey(loginEmail) && benutzerDaten[loginEmail] == loginPasswort) {
    // Wenn korrekt, gib eine Willkommensnachricht aus.
    print("Willkommen zurück, $loginEmail!");
  } else {
    // Andernfalls gib eine Fehlermeldung aus.
    print("Fehler: Ungültige Email oder Passwort.");
  }
}