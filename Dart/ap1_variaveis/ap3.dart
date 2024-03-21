import 'dart:math';

void main() {
  final random = Random();
  int numAleatorio1 = random.nextInt(100);
  int numAleatorio2 = random.nextInt(100);

  print('Foram sorteados os seguintes números: $numAleatorio1 e $numAleatorio2');

  final inversao = numAleatorio1;
  numAleatorio1 = numAleatorio2;
  numAleatorio2 = inversao;

  print('Após a inversão os números ficaram na seguinte ordem: $numAleatorio1 e $numAleatorio2');
}