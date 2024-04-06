void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  
  print('for: ${somaComFor(numeros)}');
  print('while: ${somaComWhile(numeros)}');
  print('recursão: ${somaComRecursiva(numeros, 0)}');
  print('lista: ${somaComLista(numeros)}');
}

int somaComFor(List<int> numeros) {
  int soma = 0;
  for (int i = 0; i < numeros.length; i++) {
    soma += numeros[i];
  }
  return soma;
}

int somaComWhile(List<int> numeros) {
  int soma = 0;
  int i = 0;
  while (i < numeros.length) {
    soma += numeros[i];
    i++;
  }
  return soma;
}

int somaComRecursiva(List<int> numeros, int indice) {
  if (indice == numeros.length) {
    return 0;
  }
  return numeros[indice] + somaComRecursiva(numeros, indice + 1);
}

int somaComLista(List<int> numeros) {
  return numeros.reduce((valorAtual, numero)
  => valorAtual + numero);
}