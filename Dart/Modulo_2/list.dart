void main() {
  //var lista = [1, 2, 3];
  bool valorAtivo = false;
  List<int> lista1 = [1, 2, 3];
  List<int> lista2 = [4, 5, 6];

  var listaTotal = [0, ...lista1, ...lista2, (valorAtivo ? 7 : 8)];
  // listaTotal.addAll(lista1);

  print(listaTotal);
} 