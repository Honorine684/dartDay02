import 'dart:io';

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
if(verifierQueLeMessageCommenceParCher(lettre) == true){
  print("La lettre commence bien par cher");
}else{
  print("Ceci ne commence pas par cher");
}

// verifier que la lettre finit  par cordialement
if(verifierQueLeMessageFinitParCordialement(lettre) == true){
  print("La lettre finit bien par cordialement");
}else{
  print("Ceci ne finit pas par cordialement");
}

// nettoyer les espaces multiples 
print("La lettre sans tous ces espaces donne : ");
print(netoyerLesEspacesMultiples(lettre));

// nettoyer les espaces multiples 
print("La lettre sans les espaces en debut et fin donne : ");
print(netoyerLesEspacesDebutEtFin(lettre));

//protocole delta

// mettre le message en tout minuscule ou majuscule
int action ;
do {
  print("Taper 1 pour mettre en majuscule et 2 pour mettre en minuscule");
  action = int.parse(stdin.readLineSync()!);
} while (action > 2 || action <=0);
if(action == 1){
  print("La lettre en majuscule donne : ");
  print(mettreLettreEnMajuscule(lettre));
}
if(action == 2){
  print("La lettre en minuscule donne : ");
  print(mettreLettreEnMinuscule(lettre));
}

// extraire caractere 43

print("Le caractère 43 est :");
extraireMot43(lettre);


// protocole de securite

// verifier que le message est vide apres suppression des espaces
verifierQueLeMessageEstVideSansEspace(lettre);
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

bool verifierQueLeMessageCommenceParCher(String lettre){
  return lettre.toLowerCase().startsWith('cher');
  
}

bool verifierQueLeMessageFinitParCordialement(String lettre){
  return lettre.toLowerCase().endsWith('cordialement');
 
}

String netoyerLesEspacesMultiples(String lettre){
  return lettre.replaceAll(RegExp(r'\s+'), ' ').trim();
}

String netoyerLesEspacesDebutEtFin(String lettre){
  return lettre.trim();
}

String mettreLettreEnMajuscule(String lettre){
  return lettre.toUpperCase();
}

String mettreLettreEnMinuscule(String lettre){
  return lettre.toLowerCase();
}

void extraireMot43(String lettre){

  if(lettre.length >= 43){
    print(lettre[42]);
  }  
}

void verifierQueLeMessageEstVideSansEspace(String lettre){
  String lettreSain= netoyerLesEspacesMultiples(lettre);
  if(lettreSain.length == 0){
    print("Ce message est vide");
  }else{
    print("Le message a gardé ses caractères");
  }
}
  