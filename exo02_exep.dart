import 'dart:io';
void main (){
  print("veuillez saisir votre age :");
  String saisie = stdin.readLineSync()!;
  try{
  var age = int.parse(saisie);
  print("votre age est $age");
} on FormatException catch (e) {
  print("format invalide!");
}finally{
  print("fin d'operation");
}
}