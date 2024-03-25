void main() {
  //break
  //continue

  final candidatos = [
    Candidato(nome: 'Ana Silva', anoDeExperiencia: 5),
    Candidato(nome: 'Lucas Mendes', anoDeExperiencia: 6),
    Candidato(nome: 'Daniel Martins', anoDeExperiencia: 3),
  ];

  candidatos
  .where((candidato) => candidato.anoDeExperiencia >= 5)
  .forEach((candidato) => candidato.imprimirNome());
}

class Candidato {
  final String nome;
  final int anoDeExperiencia;

  Candidato({
    required this.nome,
    required this.anoDeExperiencia
  });

  void imprimirNome() {
    print(nome);
  }
}