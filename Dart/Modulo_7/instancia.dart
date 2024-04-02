class Cliente {
  late final String nome;
  late final String email;
}

void main() {
  var cliente = Cliente();
  cliente.nome = "José Augusto";
  cliente.email = "jose@gmail.com";
  print(cliente.nome);
  print(cliente.email);
}