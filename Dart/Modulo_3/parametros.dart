void main() {
  criarLogin('tonyStark@marvel.com.br', 'Homem-de-ferro');
  criarLogin('tonyStark@marvel.com.br');

  adicionarUsuario(
    'Manhattan',
    cpf: '0123.456.789-00',
    nome: 'Tony Stark', 
    email: 'tonyStark@marvel.com.br', 
    // idade: 35,
    );
}

void criarLogin(String email, [String? senha = '123456']) {
  print('=> : $email ${senha}');
}

void adicionarUsuario(
  String cidade, {
  required nome, 
  required String email, 
  int idade = 18, 
  required String cpf
  }) {
  print('Adicionar Usuário: $nome $email $idade $cpf');
}