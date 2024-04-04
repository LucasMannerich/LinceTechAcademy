Future<void> buscarDados() async {
  print('Iniciando busca de dados');

  await Future.delayed(Duration(seconds: 2));
  print('Meio da busca de dados');

  await Future.delayed(Duration(seconds: 3));
  print('Fim da busca de dados');
}

void main() async {
  await buscarDados();
}