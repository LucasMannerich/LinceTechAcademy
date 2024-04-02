class Produto {
  @override
  String toString() {
    return "Intancia de: ${this.runtimeType}";
  }
}

void main() {
  var produto = getInstance();

  print(produto is Produto);
}

Object getInstance() => Produto();