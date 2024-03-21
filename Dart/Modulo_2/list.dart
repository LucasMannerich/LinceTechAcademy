void main() {
  //var lista = [1, 2, 3];
  bool valorAtivo = true;
  List<int> lista1 = [1, 2, 3];
  List<int> lista2 = [4, 5, 6];
  var lista3 = null;

  // ignore: dead_code
  var listaTotal = [0, ...lista1, ...lista2, ...?lista3, valorAtivo ? 7 : 8, ];
  // listaTotal.addAll(lista1);

  print(listaTotal);
} 