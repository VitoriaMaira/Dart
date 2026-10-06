import 'dart:io';
import 'dart:math';


double fatorial(int numero) {
  double resultado = 1;
  for (int i = 1; i <= numero; i++) {
    resultado = resultado * i;
  }
  return resultado;
}

void main() {
  print('Digite o numero de termos:');
  int numeroTermos = int.parse(stdin.readLineSync()!);

  double soma = 0;

  // i e a posicao do termo (1 = primeiro, 2 = segundo...)
  for (int i = 1; i <= numeroTermos; i++) {
    int base = 2 * i + 1;              // i=1 -> 3, i=2 -> 5, i=3 -> 7...
    double expoente = fatorial(4 * i); // i=1 -> 4!, i=2 -> 8!, i=3 -> 12!...
    int denominador = 5 * i;           // i=1 -> 5, i=2 -> 10, i=3 -> 15...

    double termo = pow(base, expoente) / denominador;

    // Do quarto termo em diante, os de posicao par (4°, 6°, 8°....) sao negativos.
    // i % 2 == 0 verifica se a posicao e par.
    if (i >= 4 && i % 2 == 0) {
      soma = soma - termo;
    } else {
      soma = soma + termo;
    }
  }

  print('S = $soma');
}