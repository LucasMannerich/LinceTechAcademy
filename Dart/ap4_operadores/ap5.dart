void main() {
  Map<String, int?> idadePessoas = {
    'Nelson': null,
    'Jane': null,
    'Jack': 16,
    'Rupert': 37,
    'Andy': 13,
    'Kim': 27,
    'Robert': 31,
  };

  idadePessoas.forEach((nome, idade) => print('$nome - ${idade ?? 'idade nao informada'}'));
}