import 'dart:io';

List<int> somar(List<int> v1, List<int> v2, int n) {
  List<int> v3 = [];

  int i = 0;
  while (i < n) {
    int soma = v1[i] + v2[i];
    v3.add(soma);
    i = i + 1;
  }
  return v3;
}

main() {
  print('quantos numeros vai ter?');
  int n = int.parse(stdin.readLineSync()!);

  List<int> v1 = [];
  List<int> v2 = [];

  int i = 0;

  print('digite os numeros do primeiro vetor:');

  while (i < n) {
    int num = int.parse(stdin.readLineSync()!);
    v1.add(num);
    i = i + 1;
  }

  print('digite os numeros do segundo vetor:');
  i = 0;

  while (i < n) {
    int num = int.parse(stdin.readLineSync()!);
    v2.add(num);
    i++;
  }

  List<int> v3 = somar(v1, v2, n);

  int total = 0;
  i = 0;

  while (i < n) {
    total = total + v3[i];
    i = i + 1;
  }

  print('terceiro vetor:');
  print(v3);

  print('soma total: $total');
}
