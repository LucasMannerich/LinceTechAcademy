import 'dart:math';

void main() {

  final random = Random();
  int numAleatorio1 = random.nextInt(100);
  int numAleatorio2 = random.nextInt(100);
  final divisao = numAleatorio1/numAleatorio2;
  final divInteira = divisao.toInt();
  final divDecimal = divisao - divInteira;

  print('A parte inteira da divisão é: $divInteira');
  print('A parte decimal da divisão é: $divDecimal');
}