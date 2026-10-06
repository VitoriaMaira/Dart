import 'dart:io';

void main() {
  // somas e contadores para a media de cada sexo
  double somaHomens = 0;
  int qtdHomens = 0;
  double somaMulheres = 0;
  int qtdMulheres = 0;

  while (true) {
    print('\nCodigo (9999 para sair):');
    String codigo = stdin.readLineSync()!;

    if (codigo == '9999') {
      break;
    }

    print('Nome:');
    String nome = stdin.readLineSync()!;
    print('Sexo (M ou F):');
    String sexo = stdin.readLineSync()!.toUpperCase();
    print('Horas de aula no mes:');
    int horas = int.parse(stdin.readLineSync()!);

    double bruto = horas * 12.30;
    double liquido;

    if (sexo == 'M') {
      liquido = bruto - bruto * 0.10;
      somaHomens = somaHomens + liquido;
      qtdHomens++;
    } else {
      liquido = bruto - bruto * 0.05;
      somaMulheres = somaMulheres + liquido;
      qtdMulheres++;
    }

    print('$codigo - $nome - bruto: ${bruto.toStringAsFixed(2)} - liquido: ${liquido.toStringAsFixed(2)}');
  }

  // media = soma / quantidade (so calcula se tiver pelo menos um )
  if (qtdHomens > 0) {
    print('\nMedia salario liquido homens: ${(somaHomens / qtdHomens).toStringAsFixed(2)}');
  }
  if (qtdMulheres > 0) {
    print('Media salario liquido mulheres: ${(somaMulheres / qtdMulheres).toStringAsFixed(2)}');
  }
}