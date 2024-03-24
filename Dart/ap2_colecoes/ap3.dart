import 'dart:math';

void main () {
  final random = Random();
  List<int> listaAleatoria = [];

  for(int i = 0; i <= 50; i++) {
    listaAleatoria.add(random.nextInt(12) + 10);
  }
  
  List<int> listaUnica = listaAleatoria.toSet().toList();
  
  print('Lista original: ${listaAleatoria}');
  print('Itens únicos: ${listaUnica}');
}