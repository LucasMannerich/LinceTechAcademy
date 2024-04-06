import 'dart:math';

void main() {
  List<String> nomes = ['Ana', 'Francisco', 'Joao', 'Pedro', 'Gabriel',
                        'Rafaela', 'Marcio', 'Jose', 'Carlos', 'Patricia',
                        'Helena', 'Camila', 'Mateus', 'Gabriel', 'Maria', 'Samuel', 
                        'Karina', 'Antonio', 'Daniel', 'Joel', 'Cristiana', 'Sebastião', 'Paula'];
  List<String> sobrenomes = ['Silva', 'Ferreira', 'Almeida', 'Azevedo', 'Braga', 
                             'Barros', 'Campos', 'Cardoso', 'Teixeira', 'Costa', 
                             'Santos', 'Rodrigues', 'Souza', 'Alves', 'Pereira', 
                             'Lima', 'Gomes', 'Ribeiro', 'Carvalho', 'Lopes', 'Barbosa'];

  String nomeEscolhido = geradorDeNomes(nomes);
  String sobrenomeEscolhido = geradorDeNomes(sobrenomes);

  print('Nome: $nomeEscolhido $sobrenomeEscolhido');
}

String geradorDeNomes(List<String> listaEscolhida) {
  Random random = Random();
  int numeroRandom = random.nextInt(listaEscolhida.length);
  return listaEscolhida[numeroRandom];
}