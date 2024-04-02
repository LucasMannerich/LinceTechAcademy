void main() {
  Funcionario funcionario = Funcionario();
  print(funcionario.nome);
  print(funcionario.idade);
  print(funcionario.salario);
  print(funcionario.contaAtiva);

  funcionario.registrarPonto();
}

class Funcionario {
  String nome = "Lucas Mannerich";
  int idade = 23;
  double salario = 3000.12;
  bool contaAtiva = true;

  void registrarPonto() {
    print(DateTime.now());
  }
}