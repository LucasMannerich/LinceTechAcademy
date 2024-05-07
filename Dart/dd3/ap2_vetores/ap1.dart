import 'dart:io';
import 'dart:math';

void main() {

  List<int> listaDeNumeros = [];
  stdout.write ('Escolha um número');

  String? numeroEscolhidoString = stdin.readLineSync();
  int numeroEscolhido = int.parse(numeroEscolhidoString!);

  for(int i = 0; i < numeroEscolhido; i++) {
    listaDeNumeros.add(Random().nextInt(10));
  }

  print('${listaDeNumeros}');
}