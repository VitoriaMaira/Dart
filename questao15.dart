import 'dart:io';

void main() {
  print('Quantos bois?');
  int n = int.parse(stdin.readLineSync()!);

  // dois vetores: a posicao i guarda o numero e o peso do mesmo boi
  List<int> numeros = [];
  List<double> pesos = [];

  for (int i = 1; i <= n; i++) {
    print('\nNumero do boi $i:');
    numeros.add(int.parse(stdin.readLineSync()!));
    print('Peso do boi $i (kg):');
    pesos.add(double.parse(stdin.readLineSync()!));
  }

  // pesquisa repete enquanto a resposta for s
  String resposta = 's';
  while (resposta == 's') {
    print('\nPeso minimo:');
    double minimo = double.parse(stdin.readLineSync()!);
    print('Peso maximo:');
    double maximo = double.parse(stdin.readLineSync()!);

    print('Bois entre $minimo e $maximo kg:');
    for (int i = 0; i < n; i++) {
      if (pesos[i] >= minimo && pesos[i] <= maximo) {
        print('Boi ${numeros[i]} - ${pesos[i]} kg');
      }
    }

    print('\nOutra pesquisa? (s/n)');
    resposta = stdin.readLineSync()!.toLowerCase();
  }
}