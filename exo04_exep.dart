import 'dart:io';

class MotdepasseCourtException implements Exception {
  @override
  String toString() => "Mot de passe trop court (minimum 6 caractères)";
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException();
  }
  print("Mot de passe valide");
}

void main() {
  print("Entrez un mot de passe :");
  String saisie = stdin.readLineSync()!;

  try {
    verifierMotdepasse(saisie);
  } on MotdepasseCourtException catch (e) {
    print("Erreur : $e");
  }
}