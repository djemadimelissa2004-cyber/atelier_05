import 'dart:io';

class NombreNegatifException implements Exception {
  @override
String toString() => "Le nombre ne doit pas etre negatif";
  }
  void main (){
  print("Entrez un nombre :");
  String saisie = stdin.readLineSync()!;
  try {
  int nombre = int.parse(saisie);
  if (nombre < 0) {
  throw NombreNegatifException();}
    print("Le carre de $nombre est ${nombre * nombre}");
  } on NombreNegatifException catch (e) {
    print("Erreur : $e");
  } on FormatException {
    print("Format invalide, entrez un nombre");
  } finally {
    print("Fin d'operation");}
  }
  
