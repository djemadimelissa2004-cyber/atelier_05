void verifierMotdepasse(String mp){
  if ( mp.length<6){
    throw Exception("Mot de passe trop court faut saisir 6 caracteres ou plus");
  }
  print("mdp valide great job !");
}

void main(){
  try {
    verifierMotdepasse('meli');
} catch (e) {
  print("erreur : $e");
} 
}