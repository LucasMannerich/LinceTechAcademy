void main() {
  Map<String, List<String>> livros = Map<String, List<String>>();

  livros['Java'] = ['Livro Java 1', 'Livro Java 2', 'Livro Java 3'];
  livros['Dart'] = ['Livro Dart 1', 'Livro Dart 2', 'Livro Dart 3'];
  livros['JavaScript'] = [
    'Livro JavaScript 1', 
    'Livro JavaScript 2', 
    'Livro JavaScript 3'
    ];

  livros.forEach((key, value) {
    print("""
      $key
        ${value}
      """);
  });

  //Map<String, List<String>>? teste = null;
  //var novosLivros = {...livros, ...?teste};
  //comentarios.forEach((key, value) {print('$key => $value');}); 
  //for(var entry in comentarios.entries) {print(entry.key);  print(entry.value); }
}