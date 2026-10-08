import 'dart:io';

void main() {
  print('Digite o valor de X:');
  double x = double.parse(stdin.readLineSync()!);

  print('Digite a quantidade de termos:');
  int qtd = int.parse(stdin.readLineSync()!);

  double result = 0;

  //  denominandores:
  List<int> ciclo = [1, 2, 3, 4, 3, 2];

  for (int cont = 0; cont < qtd; cont++) {
    int exp = cont + 2;

    // descobre qual número 
    int numFatorial = ciclo[cont % 6];

    // calcula expoente
    double potencia = 1;

    for (int i = 0; i < exp; i++) {
      potencia *= x;
    }

    // calcula o fatorial
    int fatorial = 1;

    for (int i = 1; i <= numFatorial; i++) {
      fatorial *= i;
    }

    result += potencia / fatorial;
  }

  print('S = $result');
}