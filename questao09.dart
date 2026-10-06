void main() {
  for (int numero = 1000; numero <= 9999; numero++) {

    int frente = numero ~/ 100;
    int tras = numero % 100;

    int soma = frente + tras;

     if (soma * soma == numero) {
      print(numero);
    }
  }
}