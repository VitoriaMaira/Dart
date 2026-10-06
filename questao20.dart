import 'dart:io';

void main() {

  // cada linha vira uma lista de letras pra dar pra trocar o P de lugar
  List<List<String>> mapa = [
    '##########'.split(''),
    '#P...#...#'.split(''),
    '#.##.#.#.#'.split(''),
    '#.#..#.#.#'.split(''),
    '#.#.##.#.#'.split(''),
    '#...#..#.#'.split(''),
    '###.#.##.#'.split(''),
    '#.....#..#'.split(''),
    '#.###.#.S#'.split(''),
    '##########'.split(''),
  ];

  // posicao do jogador (linha 1, coluna 1 e onde esta o P..)
  int linha = 1;
  int coluna = 1;

  bool chegou = false;

  while (!chegou) {
    // desenha o mapa
    print('');
    for (List<String> l in mapa) {
      print(l.join());
    }

    print('Comando (w/a/s/d):');
    String comando = stdin.readLineSync()!.toLowerCase();

    // calcula pra onde o jogador quer ir
    int novaLinha = linha;
    int novaColuna = coluna;

    if (comando == 'w') {
      novaLinha--;
    } else if (comando == 's') {
      novaLinha++;
    } else if (comando == 'a') {
      novaColuna--;
    } else if (comando == 'd') {
      novaColuna++;
    } else {
      print('Comando invalido');
      continue;
    }

    // se for parede nao anda
    if (mapa[novaLinha][novaColuna] == '#') {
      print('Parede!');
      continue;
    }

    if (mapa[novaLinha][novaColuna] == 'S') {
      chegou = true;
    }

    // apaga o P da posicao antiga e coloca na nova
    mapa[linha][coluna] = '.';
    linha = novaLinha;
    coluna = novaColuna;
    mapa[linha][coluna] = 'P';
  }

  print('');
  for (List<String> l in mapa) {
    print(l.join());
  }
  print('Voce chegou na saida!');
}