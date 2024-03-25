void main() {
  // is
  // is!
  // as

  dynamic item = Item();
  print((item as Item).nome);
}

class Produto {
  final nome = 'Mouse';
}

class Item extends Produto {
  final nome = 'Teclado';
}