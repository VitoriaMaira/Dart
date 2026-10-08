import 'dart:io';

void main() {
  print("Quantos termos voce quer mostrar?");

  int termos = int.parse(stdin.readLineSync()!);

  int seq1 = 1;

  int seq2 = 5;

  int seq3 = 100;

  for (int i = 1; i <= termos; i++) {
    if (i % 3 == 1) {
      stdout.write("$seq1 ");

      seq1 = seq1 * 2;
    } else if (i % 3 == 2) {
      stdout.write("$seq2 ");

      seq2 = seq2 + 5;
    } else {
      stdout.write("$seq3 ");

      seq3 = seq3 - 10;
    }
  }

  print("");
}
