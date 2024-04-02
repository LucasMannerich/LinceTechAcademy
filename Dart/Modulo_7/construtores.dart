class Funcionario {
  final String nome;

  Funcionario(this.nome);

  factory Funcionario.criarInstancia(String nome, String tipo) {
    if (tipo == 'G') return Gerente(nome);
    if (tipo == 'E') return Engenheiro(nome);
    return Funcionario(nome);
  }
}

class Gerente extends Funcionario {
  Gerente(String nome) : super(nome);
}

class Engenheiro extends Funcionario {
  Engenheiro(String nome) : super(nome);
}
void main() {
  
}