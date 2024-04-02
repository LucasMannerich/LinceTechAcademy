import 'dart:math';

class Pessoa {
  var _nome;
  var _idade;
  var _altura;

  String get nome => _nome;
  int get idade => _idade;
  double get altura => _altura;

  set idade(int value) {
    if (value >= 0) {
      _idade = value;
    } else {
      throw ArgumentError('Idade inválida');
    }
  }

  Pessoa(String nome, int idade, double altura) {
    _nome = nome;
    this.idade = idade;
    _altura = altura;
  }
}

void main() {
  Random random = Random();

  int idadeAleatoria = random.nextInt(100) + 1;
  double alturaAleatoria = (random.nextDouble() * (2.3 - 1.0)) + 1.0;

  Pessoa pessoa = Pessoa('José', idadeAleatoria, alturaAleatoria);

  print('Nome: ${pessoa.nome}');
  print('Idade: ${pessoa.idade}');
  print('Altura: ${pessoa.altura.toStringAsFixed(2)}');

}