void main() {

final listaNomes = ['Felipe', 'Ana', 'Pedro'];
 // for(var indice = 0; indice <= listaNomes.length; indice ++){
 //   final nome = listaNomes[indice];
 //   print('Nome: $nome');
 // }

 // for(var nome in listaNomes) {
 //   print(nome);
 // }

 listaNomes.forEach(imprimirValor);
}

void imprimirValor(String valor) {
  print('Minha função: $valor');
}