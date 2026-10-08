void main() {
  const precos = {'ovos': 5.5, 'chocolate': 7.5, 'cenoura': 6.5};

  const pedido = ['ovos', 'chocolate'];

  double valorTotal = 0;

  // verifica cada bolo 
  for (String bolo in pedido) {
    if (precos.containsKey(bolo)) {
      valorTotal += precos[bolo]!;
    } else {
      print('$bolo não está no cardápio');
    }
  }

  print('Total = $valorTotal');
}
