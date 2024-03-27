void main() {

  List<int> listaNumeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<int> listaImpares = [];
  for(int i = 0; i < listaNumeros.length; i++) {
    if(i % 2 != 0){
      listaImpares.add(i);
    }
  }
  for (var impar in listaImpares) {
    print('Impar: $impar');
  }
}