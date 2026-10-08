import 'dart:io';

void main() {
  double somaMedias = 0;
  int totalAlunos = 0;
  int aprovados = 0;

  double somaMulheres = 0;
  int totalMulheres = 0;

  double maiorMediaHomem = 0;
  double maiorMediaMulher = 0;

  String matHomem = '';
  String matMulher = '';

  while (true) {
    print('\nDigite a matrícula:');
    String mat = stdin.readLineSync()!;

    //  encerra 
    if (mat == '00000') {
      break;
    }

    print('Digite o nome:');
    String nome = stdin.readLineSync()!;

    print('Digite o sexo (M/F):');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Digite a primeira nota:');
    double notaA = double.parse(stdin.readLineSync()!);

    print('Digite a segunda nota:');
    double notaB = double.parse(stdin.readLineSync()!);

    print('Digite a terceira nota:');
    double notaC = double.parse(stdin.readLineSync()!);

    print('Digite o número de faltas:');
    int faltas = int.parse(stdin.readLineSync()!);

    double media = (notaA + notaB + notaC) / 3;

    totalAlunos++;
    somaMedias += media;

    // verifica se foi aprovado
    if (media >= 7 && faltas <= 18) {
      aprovados++;
    }

    if (sexo == 'F') {
      totalMulheres++;
      somaMulheres += media;

      // procura a mulher aprovada com maior média
      if (media >= 7 && faltas <= 18) {
        if (media > maiorMediaMulher) {
          maiorMediaMulher = media;
          matMulher = mat;
        }
      }
    }

    if (sexo == 'M') {
      // procura o homem aprovado com maior média
      if (media >= 7 && faltas <= 18) {
        if (media > maiorMediaHomem) {
          maiorMediaHomem = media;
          matHomem = mat;
        }
      }
    }
  }

  if (totalAlunos > 0) {
    double mediaTurma = somaMedias / totalAlunos;
    double porcentagemAprovados = (aprovados * 100) / totalAlunos;

    print('\n--- RESULTADOS ---');
    print('Média da turma: $mediaTurma');
    print('Percentual de aprovados: $porcentagemAprovados%');

    if (matHomem != '') {
      print('Matrícula do homem com maior média: $matHomem');
    } else {
      print('Nenhum homem aprovado foi encontrado.');
    }

    if (matMulher != '') {
      print('Matrícula da mulher com maior média: $matMulher');
    } else {
      print('Nenhuma mulher aprovada foi encontrada.');
    }

    if (totalMulheres > 0) {
      double mediaMulheres = somaMulheres / totalMulheres;
      print('Média das alunas: $mediaMulheres');
    } else {
      print('Nenhuma aluna foi informada.');
    }
  }
}
