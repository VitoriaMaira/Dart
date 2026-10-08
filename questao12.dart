import 'dart:io';

void main() {
  print('Digite um número:');
  String numero = stdin.readLineSync()!;

  String invertido = '';

  // vai pegando os char do final pra o começo
  for (int cont = numero.length - 1; cont >= 0; cont--) {
    invertido += numero[cont];
  }

  print('Número invertido: $invertido');
}