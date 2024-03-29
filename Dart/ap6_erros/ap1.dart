void main () {
   String numeroString = '9999';

   int numeroInt = conversor(numeroString);
   print('Numero digitado: $numeroInt');
}

int conversor(String numeroString) {
  try {
    return int.parse(numeroString);
  } catch (e) {
    print('Entrada invalida. Insira apenas números inteiros.');
    rethrow;
  }
}