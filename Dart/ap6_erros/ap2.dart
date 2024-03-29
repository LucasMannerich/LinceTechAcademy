void main () {
   int numero = 2;

   verificaPar(numero);
}

int verificaPar(int numero) {
  try {
    if (numero % 2 != 0) {
      throw Exception('Entrada inválida. Insira apenas números pares.');
    } else {
      print('Entrada correta, você inseriu um número par.');
    }
    return (numero);
  } catch (e) {
    print('Exception: ${e.toString()}');
    rethrow;
  }
}