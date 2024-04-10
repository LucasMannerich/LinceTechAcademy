void main() {
//pensar melhor
  final listaNomes = [
    "Joao",
    "Maria",
    "Pedro",
    "Maria",
    "Ana",
    "Joao",
    "Maria",
    "Fernanda",
    "Carlos",
    "Maria"
  ];

  final nome = 'Ana';

  final quantidade = contaNome(listaNomes, nome);

  if (quantidade == 1) {
    print('O nome $nome foi encontrado 1 vez');
  } else if (quantidade > 0) {
    print('O nome $nome foi encontrado $quantidade vezes');
  } else {
    print('O nome nao foi encontrado');
  }
}

int contaNome(List<String> listaNomes, String nome) {
  int quantidade = 0;
  for (String nomeLista in listaNomes) {
    if (nomeLista == nome) {
      quantidade++;
    }
  }
  return quantidade;
}