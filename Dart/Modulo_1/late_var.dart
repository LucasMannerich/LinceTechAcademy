void main() {
  //⬇ Se resultado não está sendo utilizado, o late faz com que ele não chama a func, isso melhora o desempenho do código
  late double resultado = _getValorTotal();
  //⬇ Quando chamado o programa entende que a var está sendo utilizada e chama a func
  resultado.toInt();
  print('Chamando a func Main');
}

double _getValorTotal() {
  print('Chamando a func _getValorTotal');
  return 0.0;
}