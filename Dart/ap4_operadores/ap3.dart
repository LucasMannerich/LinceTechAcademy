import 'dart:math';
//dar uma estudada
void main () {

  List<int>? listaNumeros = [1, 2, 3, 4, 5];

  int? numeroEscolhido = Random().nextInt(5) + 1;

  List<int> listaModificada = removeNumero(listaNumeros, numeroEscolhido);

  print('Lista modificada: $listaModificada');
}

List<int> removeNumero<int>(List<int>? listaNumeros, [int? numeroEscolhido]) {
  listaNumeros ??= [];
  listaNumeros.remove(numeroEscolhido);
  return listaNumeros;
}