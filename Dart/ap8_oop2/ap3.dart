abstract class Pessoa {
  void comer();
}

abstract class PessoaComSono {
  void dormir();
}

class Lucas extends Pessoa implements PessoaComSono {
  @override
  void comer() {
    print('Lucas está comendo');
  }

  @override
  void dormir() {
    print('Lucas está dormindo');
  }
}

void main() {
  Lucas eu = Lucas();
  
  eu.comer();
  eu.dormir();
}