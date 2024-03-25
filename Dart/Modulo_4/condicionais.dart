void main() {
  // condition ? expr1 : expr2
  // expr1 ?? expr2

  String? conteudo = getConteudo();

  final resultado = conteudo ?? 'Estudar mais Dart';

  print(resultado);
}

// String? getConteudo() => 'Dart';
String? getConteudo() => null;