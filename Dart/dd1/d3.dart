import 'dart:core';

void main() {
  String paragrafo =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.';
  print('Parágrafo: $paragrafo');
  print('Número de palavras: ${contarPalavras(paragrafo)}');
  print('Tamanho do texto: ${paragrafo.length}');
  print('Número de frases: ${contarFrases(paragrafo)}');
  print('Número de vogais: ${contarVogais(paragrafo)}');
  print('Consoantes encontradas: ${obterConsoantes(paragrafo)}');
}

int contarPalavras(String texto) {
  return texto.split(RegExp(r'\s+')).length;
}

int contarFrases(String texto) {
  return texto.split(RegExp(r'[.!?]+')).length - 1;
}

int contarVogais(String texto) {
  return RegExp(r'[aeiou]').allMatches(texto.toLowerCase()).length;
}

String obterConsoantes(String texto) {
  List<String?> consoantes = RegExp(r'[bcdfghjklmnpqrstvwxyz]')
      .allMatches(texto.toLowerCase())
      .map((match) => match.group(0))
      .toSet()
      .toList();
  consoantes.sort();
  return consoantes.join(', ');
}