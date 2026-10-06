import 'dart:io';

void main() {
  print('Quantos recem-nascidos?');
  int n = int.parse(stdin.readLineSync()!);

  // contadores de cada classificacao
  int baixoPeso = 0;
  int normal = 0;
  int altoPeso = 0;

  // guarda a menina mais pesada
  String nomeMaisPesada = '';
  double maiorPeso = 0;

  for (int i = 1; i <= n; i++) {
    print('\nNome:');
    String nome = stdin.readLineSync()!;
    print('Sexo (M ou F):');
    String sexo = stdin.readLineSync()!.toUpperCase();
    print('Peso (kg):');
    double peso = double.parse(stdin.readLineSync()!);

    // tabela: ate 2kg baixo, de 2 a 4 normal, acima de 4 alto
    String classificacao;
    if (peso <= 2) {
      classificacao = 'Baixo Peso';
      baixoPeso++;
    } else if (peso <= 4) {
      classificacao = 'Normal';
      normal++;
    } else {
      classificacao = 'Alto Peso';
      altoPeso++;
    }

    print('$nome - $sexo - $classificacao');

    // se for menina e pesar mais que a mais pesada ate agora, troca
    if (sexo == 'F' && peso > maiorPeso) {
      maiorPeso = peso;
      nomeMaisPesada = nome;
    }
  }

  print('\nMenina com maior peso: $nomeMaisPesada');

  // percentual = quantidade * 100 / total
  print('Baixo Peso: ${baixoPeso * 100 / n}%');
  print('Normal: ${normal * 100 / n}%');
  print('Alto Peso: ${altoPeso * 100 / n}%');
}