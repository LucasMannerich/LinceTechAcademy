main () {
  String nome = 'Lucas';
  String sobrenome = 'Mannerich';
  int idade = 18;
  bool ativo = true;
  double peso = 70.0;
  //String? nacionalidade = 'brasileiro';
  String? nacionalidade = null;

  print('Nome completo: $nome $sobrenome');

  if(idade >= 18){
    print('Usuário maior de idade');
  }else{
    print('Usuário menor de idade');
  }

  if(ativo == true){
    print('Usuário está ativo');
  }else{
    print('Usuário inativo');
  }

  print('Peso: $peso');

  if(nacionalidade != null){
    print('Nacionalidade: $nacionalidade');
  }else{
    print('Não informada');
  }
}