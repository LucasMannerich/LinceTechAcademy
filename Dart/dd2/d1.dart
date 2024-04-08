// NAO PODE SER MODIFICADO
// -------------------------------------------------------------
import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}

// -------------------------------------------------------------
// ADICIONAR IMPLEMENTACAO RESTANTE ABAIXO DESSA LINHA
// -------------------------------------------------------------
abstract class MeioDeComunicacao{
  void fazerLigacao(String contato);
}

class Telefone extends MeioDeComunicacao {
  @override
  void fazerLigacao(String contato) {
    print('[TELEFONE] ligando para $contato...');
  }
}

class Celular extends MeioDeComunicacao {
  @override
  void fazerLigacao(String contato) {
    print('[CELULAR] ligando para $contato...');
  }
}

class Orelhao extends MeioDeComunicacao {
  @override
  void fazerLigacao(String contato) {
    print('[ORELHÃO] ligando para $contato...');
  }
}
// ...
