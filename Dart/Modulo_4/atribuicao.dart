void main() {
  // =
  // +=
  // -=
  // *=
  // /=
  // %=
  // ~/=
  // ??=

  var numero = getNumero();

  // numero = numero + 10;
  // numero += 10;

  numero ??= 50;

  print(numero);
}

int? getNumero() => null;