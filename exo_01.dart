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

// test protocole beta

//Inverser la lettre
print("Votre lettre inversé donne : ");
print(protocoleBeta(lettre));

// remplacer agent par espion
print("Le remplacement de agent par espion donne: ");
print(remplacerAgentParEspion(lettre));

// test protocole gamma

// verifier que la lettre commence par cher
//verifierQueLeMessageCommenceParCher(lettre);
}




int protocoleAlpha(String lettre){
  return lettre.length;
}

List decomposerMessage(String lettre){
  List<dynamic> lettres = lettre.split(" ");
  return lettres;
}

String protocoleBeta(String lettre){
  String lettreInverse = new String.fromCharCodes(lettre.runes.toList().reversed);
  return lettreInverse;
}

String remplacerAgentParEspion(String lettre){
  //List<dynamic> lettres = decomposerMessage(lettre);
  String lettreRemplacement = lettre.replaceAll("agent", "espion");
  return lettreRemplacement;
}

/*void verifierQueLeMessageCommenceParCher(String lettre){
  List<dynamic> lettres = decomposerMessage(lettre);
  for(int i=0;i<lettres.length;){
    if(lettres[0] == "Cher"){
      print("Votre lettre commence bien par cher");
    }else{
      print("Ceci ne débute pas par cher");
    }
  }
}*/