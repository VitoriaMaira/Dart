import 'dart:io';

void main() {
  String codigo;
  String curso;
  String nome;
  String sexo;
  int pontos;

  int total = 0;
  int masculino = 0;
  int feminino = 0;

  int menorPontuacaoMasculina = 5001;
  String nomeMenorMasculino = "";

  int maiorPontuacaoSI = -1;
  String codigoMaiorSI = "";

  print("Digite o codigo do candidato:");
  codigo = stdin.readLineSync()!;

  while (codigo != "0000") {
    print("Digite o curso (CC ou SI):");
    curso = stdin.readLineSync()!.toUpperCase();

    print("Digite o nome:");
    nome = stdin.readLineSync()!;

    print("Digite o sexo (M ou F):");
    sexo = stdin.readLineSync()!.toUpperCase();

    print("Digite a pontuacao:");
    pontos = int.parse(stdin.readLineSync()!);

    total = total + 1;

    if (curso == "CC" && pontos > 2500) {
      print("Codigo: $codigo");
      print("Nome: $nome");
      print("Pontuacao: $pontos");
    }

    if (sexo == "M") {
      masculino = masculino + 1;

      if (pontos < menorPontuacaoMasculina) {
        menorPontuacaoMasculina = pontos;
        nomeMenorMasculino = nome;
      }

      if (curso == "SI" && pontos > maiorPontuacaoSI) {
        maiorPontuacaoSI = pontos;
        codigoMaiorSI = codigo;
      }
    }

    if (sexo == "F") {
      feminino = feminino + 1;
    }

    print("Digite o codigo do proximo candidato:");
    codigo = stdin.readLineSync()!;
  }

  print("RESULTADOS");

  if (nomeMenorMasculino != "") {
    print("Homem com menor pontuacao: $nomeMenorMasculino");
  }

  if (codigoMaiorSI != "") {
    print("Codigo do homem com maior pontuacao em SI: $codigoMaiorSI");
  }

  if (total > 0) {
    double percentualM = (masculino * 100) / total;
    double percentualF = (feminino * 100) / total;

    print("Percentual masculino: ${percentualM.toStringAsFixed(1)}%");
    print("Percentual feminino: ${percentualF.toStringAsFixed(1)}%");
  }
}
