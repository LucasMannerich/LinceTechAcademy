void main() {
  const user = Usuario (
    'Lucas',
    'Mannerich',
    18,
    true,
    70.0,
    'brasileiro',
  );

  print(user.toString());
}

class Usuario {
  const Usuario(
    this.nome,
    this.sobrenome,
    this.idade,
    this.ativo,
    this.peso,
    this.nacionalidade,
  );
  final String nome;
  final String sobrenome;
  final int idade;
  final bool ativo;
  final double peso;
  final String? nacionalidade;


@override
String toString() {
  
  return  'Nome completo: $nome $sobrenome\n' +
          'Idade: $idade\n' +
          //⬇ Usei o operador ternário aqui, pois, ele é compativel com o método toString
          (idade >= 18 ? 'Usuário maior de idade\n' : 'Usuário menor de idade\n') +
          (ativo ? 'Usuário está ativo\n' : 'Usuário inativo\n') +
          'Peso: $peso\n' +
          'Nacionalidade: $nacionalidade';
  }
}