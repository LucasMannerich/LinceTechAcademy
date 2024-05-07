import 'dart:io';
import 'dart:math';

void main() {

  List<int> listaDeNumeros = [];
  stdout.write ('Escolha um número');

  String? tamanhoEscolhidoString = stdin.readLineSync();
  int tamanhoEscolhido = int.parse(tamanhoEscolhidoString!);

  for(int i = 0; i < tamanhoEscolhido; i++) {
    stdout.write ('Escolha um número');
    String? numeroEscolhidoString = stdin.readLineSync();
    int numeroEscolhido = int.parse(numeroEscolhidoString!);

    listaDeNumeros.add(numeroEscolhido);
  }

  print('${listaDeNumeros}');
}