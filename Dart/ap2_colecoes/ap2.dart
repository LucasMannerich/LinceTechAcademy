import 'dart:math';

void main () {
  final random = Random();
  List<int> listaAleatoria = [];

  for(int i = 0; i <= 50; i++) {
    listaAleatoria.add(random.nextInt(16));
  }
  
  print('Lista original: ${listaAleatoria}');
  
  listaAleatoria.removeWhere((Number) => (Number % 2 == 0));

  print('Lista atualizada: ${listaAleatoria}');
}