import 'dart:math';

void main () {
  final random = Random();
  List<int> numAleatorio = [];

  for(int i = 0; i < 10; i++) {
    numAleatorio.add(random.nextInt(101));
  }

  for(int i = 0; i < 10; i++) {
    print('Posição $i: ${numAleatorio[i]}');
  }
}