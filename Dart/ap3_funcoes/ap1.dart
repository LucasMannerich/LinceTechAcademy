import 'dart:math';

void main () {

  final random = Random();

  List<int> listaAleatoria1 = [];
  for(int i = 1; i < 5; i++) {
    listaAleatoria1.add(random.nextInt(101));
  }

  List<int> listaAleatoria2 = [];
  for(int i = 1; i < 5; i++) {
    listaAleatoria2.add(random.nextInt(101));
  }
  imprimirListaFormatada(listaAleatoria1);
  imprimirListaFormatada(listaAleatoria2);

  List<int> listaFinal = somarIndices(listaAleatoria1, listaAleatoria2);
  for (int i = 0; i < listaAleatoria1.length; i++) {
    print('${listaAleatoria1[i]}+${listaAleatoria2[i]}');
  }
    imprimirListaFormatada(listaFinal);
}

void imprimirListaFormatada(List<int> listaAleatoria) {
  if (listaAleatoria.isEmpty) {
    print("Lista vazia");
  } else {
    String listaFormatada = listaAleatoria.map((number) => number.toString()).join(", ");
    print("Lista: $listaFormatada");
  }
}

List<int> somarIndices(List<int> listaAleatoria1, List<int> listaAleatoria2) {
  if (listaAleatoria1.length == listaAleatoria2.length) {
    List<int> somaListas = [];
      for (int i = 0; i < listaAleatoria1.length; i++) {
        somaListas.add(listaAleatoria1[i] + listaAleatoria2[i]);
  }
  return somaListas;
} else {
  print("As listas têm tamanhos diferentes. Retornando lista vazia.");
  return [];
  }
}