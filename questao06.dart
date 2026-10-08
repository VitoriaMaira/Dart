import 'dart:io';
import 'dart:math';

void main() {
  int numero = Random().nextInt(100) + 1;
  int menor = 0;
  int maior = 100;
  int chute = 0;

  while (chute != numero) {
    print("Digite um numero entre $menor e $maior:");
    chute = int.parse(stdin.readLineSync()!);

    if (chute < numero) {
      menor = chute;
      print("O numero esta entre $menor e $maior");
    } else if (chute > numero) {
      maior = chute;
      print("O numero esta entre $menor e $maior");
    } else {
      print("Boa!!");
    }
  }
}
