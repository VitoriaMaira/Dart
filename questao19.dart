import 'dart:io';

void main() {
  List<String> jogo = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '];

  String vez = 'X';
  int jogadas = 0;

  while (true) {
    print('\n');
    print('${jogo[0]} | ${jogo[1]} | ${jogo[2]}');
    print('---------');
    print('${jogo[3]} | ${jogo[4]} | ${jogo[5]}');
    print('---------');
    print('${jogo[6]} | ${jogo[7]} | ${jogo[8]}');

    print('\nJogador $vez, escolha uma posição de 1 a 9:');
    int escolha = int.parse(stdin.readLineSync()!);

    // confere se a posição existe
    if (escolha < 1 || escolha > 9) {
      print('Posição inválida.');
      continue;
    }

    int lugar = escolha - 1;

    // confere se o lugar esta vazio
    if (jogo[lugar] != ' ') {
      print('Essa posição já está ocupada.');
      continue;
    }

    jogo[lugar] = vez;
    jogadas++;

    // verifica se alguem ganhou
    if (ganhou(jogo, vez)) {
      print('\n$vez venceu!');
      break;
    }

    // se estiver cheio empata
    if (jogadas == 9) {
      print('\nEmpate!');
      break;
    }

    // troca a vez do jogador
    if (vez == 'X') {
      vez = 'O';
    } else {
      vez = 'X';
    }
  }
}

bool ganhou(List<String> jogo, String jogador) {
  // Linhas
  if (jogo[0] == jogador && jogo[1] == jogador && jogo[2] == jogador) {
    return true;
  }

  if (jogo[3] == jogador && jogo[4] == jogador && jogo[5] == jogador) {
    return true;
  }

  if (jogo[6] == jogador && jogo[7] == jogador && jogo[8] == jogador) {
    return true;
  }

  // Colunas
  if (jogo[0] == jogador && jogo[3] == jogador && jogo[6] == jogador) {
    return true;
  }

  if (jogo[1] == jogador && jogo[4] == jogador && jogo[7] == jogador) {
    return true;
  }

  if (jogo[2] == jogador && jogo[5] == jogador && jogo[8] == jogador) {
    return true;
  }

  // Diagonais
  if (jogo[0] == jogador && jogo[4] == jogador && jogo[8] == jogador) {
    return true;
  }

  if (jogo[2] == jogador && jogo[4] == jogador && jogo[6] == jogador) {
    return true;
  }

  return false;
}
