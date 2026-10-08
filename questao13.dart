import 'dart:io';

main() {
  print('quantos numeros vai ter?');

  int n = int.parse(stdin.readLineSync()!);

  List<int> vetor = [];
  int i = 0;

  while (i < n) {
    print('digite um numero:');
    int num = int.parse(stdin.readLineSync()!);

    vetor.add(num);
    i = i + 1;
  }

  print('Resultado:');

  i = 0;

  while (i < n) {
    int quantidade = 0;
    bool repetido = false;

    int j = 0;
    while (j < i) {
      if (vetor[i] == vetor[j]) {
        repetido = true;
      }
      j = j + 1;
    }

    if (repetido == false) {
      j = 0;

      while (j < n) {
        if (vetor[i] == vetor[j]) {
          quantidade = quantidade + 1;
        }
        j = j + 1;
      }

      print('${vetor[i]} - $quantidade');
    }

    i = i + 1;
  }
}
