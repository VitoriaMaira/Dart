import 'dart:io';

// le um vetor (funcao pra nao repetir o codigo 4 vezes)
List<int> lerVetor(int numero) {
  print('\nTamanho do vetor $numero:');
  int tamanho = int.parse(stdin.readLineSync()!);

  List<int> vetor = [];
  for (int i = 1; i <= tamanho; i++) {
    print('Elemento $i:');
    vetor.add(int.parse(stdin.readLineSync()!));
  }
  return vetor;
}

void main() {
  List<int> v1 = lerVetor(1);
  List<int> v2 = lerVetor(2);
  List<int> v3 = lerVetor(3);
  List<int> v4 = lerVetor(4);

  // a) junta tudo no quinto vetor e ordena
  List<int> v5 = [];
  v5.addAll(v1);
  v5.addAll(v2);
  v5.addAll(v3);
  v5.addAll(v4);
  v5.sort();
  print('\na) Vetor ordenado: $v5');

  // b) pega cada elemento do v1 e ve se ele tambem esta no v2, v3 e v4
  // o ultimo contains e pra nao adicionar o mesmo numero duas vezes
  List<int> intersecao = [];
  for (int x in v1) {
    if (v2.contains(x) && v3.contains(x) && v4.contains(x) && !intersecao.contains(x)) {
      intersecao.add(x);
    }
  }
  print('b) Intersecao: $intersecao');
}