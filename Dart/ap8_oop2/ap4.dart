import 'dart:math';

abstract class Calculadora {
  static int dobro(int numero){
    return numero * 2;
  }
}

void main() {
  final random = Random();
  int numero = random.nextInt(11);
  int resultado = Calculadora.dobro(numero);

  print('O dobro do número $numero é: $resultado');
}