Future<void> contagemRegressiva(int segundos) async {
  for (int i = segundos; i > 0; i--) {
    print('${i}s para o lançamento');
    await Future.delayed(Duration(seconds: 1));
  }
}

void main() async {
  print('Iniciando lançamento');

  await contagemRegressiva(5);

  print('Foguete lançado!');
}