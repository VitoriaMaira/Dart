import 'dart:io';

void main() {
  print('Digite o tamanho do primeiro vetor:');
  int tamA = int.parse(stdin.readLineSync()!);

  List<int> vetorA = [];

  print('Digite os números do primeiro vetor em ordem:');

  for (int cont = 0; cont < tamA; cont++) {
    int num = int.parse(stdin.readLineSync()!);
    vetorA.add(num);
  }

  print('Digite o tamanho do segundo vetor:');
  int tamB = int.parse(stdin.readLineSync()!);

  List<int> vetorB = [];

  print('Digite os números do segundo vetor em ordem:');

  for (int cont = 0; cont < tamB; cont++) {
    int num = int.parse(stdin.readLineSync()!);
    vetorB.add(num);
  }

  List<int> result = [];

  int posA = 0;
  int posB = 0;

  // compara os dois vetores
  while (posA < vetorA.length && posB < vetorB.length) {
    if (vetorA[posA] <= vetorB[posB]) {
      result.add(vetorA[posA]);
      posA++;
    } else {
      result.add(vetorB[posB]);
      posB++;
    }
  }

  // coloca o que sobrou do primeiro vetor
  while (posA < vetorA.length) {
    result.add(vetorA[posA]);
    posA++;
  }

  // coloca o que sobrou do segundo vetor
  while (posB < vetorB.length) {
    result.add(vetorB[posB]);
    posB++;
  }

  print('Terceiro vetor:');
  print(result);
}
