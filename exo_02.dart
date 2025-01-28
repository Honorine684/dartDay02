import 'dart:io';
void main(){
  print("Entrez une distance");
  int distance = int.parse(stdin.readLineSync()!);
  calculTrajet(distance);
}
void calculTrajet(int distance){
  identificationRoute(distance);
  print("Le nombre total de recharge pour cette distance est de : ${pointDeRecharge(distance)}");
}

void identificationRoute(int distance){
  if((distance % 2) == 0){
    print("Activation mode Route rapide");
  }else{
    print("Activation mode Route Eco");
  }
}

num pointDeRecharge(int distance){
  return distance/10;
}