import 'dart:io';

void main() {
  String nome;
  String sexo;
  String experiencia;
  int idade;

  int homens = 0;
  int mulheres = 0;

  int somaIdadeHomens = 0;
  int homensExperiencia = 0;
  int homensMais45 = 0;
  int mulheresMenos30 = 0;

  int menorIdade = 999;
  String nomeMenorIdade = "";

  print("Digite o nome:");
  nome = stdin.readLineSync()!;

  while (nome.toUpperCase() != "FIM") {
    print("Digite o sexo (M ou F):");
    sexo = stdin.readLineSync()!.toUpperCase();

    print("Digite a idade:");
    idade = int.parse(stdin.readLineSync()!);

    print("Tem experiencia? (S ou N):");
    experiencia = stdin.readLineSync()!.toUpperCase();

    if (sexo == "M") {
      homens = homens + 1;

      if (experiencia == "S") {
        somaIdadeHomens = somaIdadeHomens + idade;
        homensExperiencia = homensExperiencia + 1;
      }

      if (idade > 45) {
        homensMais45 = homensMais45 + 1;
      }
    }

    if (sexo == "F") {
      mulheres = mulheres + 1;

      if (idade < 30 && experiencia == "S") {
        mulheresMenos30 = mulheresMenos30 + 1;
      }

      if (experiencia == "S" && idade < menorIdade) {
        menorIdade = idade;
        nomeMenorIdade = nome;
      }
    }

    print("Digite o nome do proximo candidato:");
    nome = stdin.readLineSync()!;
  }

  print("\nResultados:");
  print("Quantidade de homens: $homens");
  print("Quantidade de mulheres: $mulheres");

  if (homensExperiencia > 0) {
    double media = somaIdadeHomens / homensExperiencia;
    print(
      "Media de idade dos homens com experiencia: ${media.toStringAsFixed(1)}",
    );
  }

  if (homens > 0) {
    double porcentagem = (homensMais45 * 100) / homens;
    print("Homens com mais de 45 anos: ${porcentagem.toStringAsFixed(1)}%");
  }

  print("Mulheres com menos de 30 anos e experiencia: $mulheresMenos30");

  if (nomeMenorIdade != "") {
    print("Mulher mais nova com experiencia: $nomeMenorIdade");
  }
}
