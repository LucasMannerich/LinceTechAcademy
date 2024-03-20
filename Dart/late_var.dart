void main() {
  //⬇ O resultado não está sendo utilizado, logo ele não chama a func, isso melhora o desempenho do código
  late double resultado = _getValorTotal();

  print('Chamando a dunc Main');
}

double _getValorTotal() {
  print('Chamando a func _getValorTotal');
  return 0.0;
}