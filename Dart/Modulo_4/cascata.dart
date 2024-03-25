void main() {
  // ignore: unused_local_variable
  final conteiner = getContainer()
    ?..cor = 'preto'
    ..altura = 2.0
    ..largura = 90;

}

Container? getContainer() {
  return Container();
}

class Container {
  late String cor;
  late double altura;
  late double largura;
}