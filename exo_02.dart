import 'dart:io';
import 'dart:math';
void main(){
  print("Entrez une distance");
  int distance = int.parse(stdin.readLineSync()!);
  calculTrajet(distance);
}
void calculTrajet(int distance){
  identificationRoute(distance);
  print("Le nombre total de recharge pour cette distance est de : ${pointDeRecharge(distance)}");
  print("L'estimation de la consommation energétique donne ${estimationConsommation(distance)} unité energétique");
  num reserveEnergetique = estimationConsommation(distance);
  if(distance > 50){
    reserveEnergetique = reserveEnergetique*0.8 ;
  }else{
     reserveEnergetique;
  }

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
num estimationConsommation(int distance){
  return pow(distance, 2);
}

/*num applicationBoost(int distance){


}*/