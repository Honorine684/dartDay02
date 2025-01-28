void main(){

  String lettre = """

  
Cher agent X,



J'ai aperçu le chat noir    au point de rendez-vous 7. L'agent Johnson était 

également présent.    Le code secret 42 a été activé.



Notre agent de liaison vous contactera à 23h.



    Cordialement  """;
 
// test protocole alpha

// taille du message
int tailleLettre = protocoleAlpha(lettre);
print("Votre message contient :  $tailleLettre caractères");

// decomposer la lettre
print("Votre lettre décomposé donne : ${decomposerMessage(lettre)}");
}


int protocoleAlpha(String lettre){
  return lettre.length;
}

List decomposerMessage(String lettre){
  List<dynamic> lettres = lettre.split(" ");
  return lettres;
}