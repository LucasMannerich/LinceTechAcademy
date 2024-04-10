import 'dart:math';
//refazer
void main() {
  String numeroParaLetra(int numero) {

    return String.fromCharCode('A'.codeUnitAt(0) + numero - 1);
  }

  int geradorDeNumeros() {
    return Random().nextInt(26) + 1;
  }

  for (int i = 0; i < 5; i++) {
    int numero = geradorDeNumeros();
    String letra = numeroParaLetra(numero);
    print('Número $numero -> Letra $letra');
  }
}