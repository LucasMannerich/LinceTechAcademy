import 'dart:math';

void main() {
  final listaDeCompras = ListaDeCompras();

  listaDeCompras.adicionarItem('Pacote de feijão', 2);
  listaDeCompras.adicionarItem('Pacote de arroz', 2);
  listaDeCompras.adicionarItem('Pão', 6);
  listaDeCompras.adicionarItem('Coca-cola', 2);

  listaDeCompras.mostrarItensDesejados();

  listaDeCompras.marcarComoComprado('Pacote de feijão');
  listaDeCompras.marcarComoComprado('Pão');

  listaDeCompras.marcarSemEstoque('Coca-cola');

  listaDeCompras.escolherItemAleatorio();

  listaDeCompras.mostrarProgresso();
}

class ListaDeCompras {
  int itemComprado = 0;
  int itemDesejado = 0;
  final Map<String, int> itensDesejados={};

  void adicionarItem(String item, int quantidade) {
    itensDesejados[item] = quantidade;
    itemDesejado ++;
  }

  void marcarComoComprado(String item){
    if(itensDesejados.containsKey(item)) {
      itensDesejados.remove(item);
      itemComprado ++;
    }
  }

  void marcarSemEstoque(String item) {
    if(itensDesejados.containsKey(item)){
      itensDesejados[item] = 0;
    }
  }

  void mostrarItensDesejados() {
    print('Itens desejados:');
    itensDesejados.forEach((item, quantidade) { 
      print('$item: $quantidade');
    });
  }

  void escolherItemAleatorio() {
    final itemPendente = itensDesejados.keys.where((item) => itensDesejados[item] != 0).toList(); 
      if(itemPendente.isNotEmpty) {
        final random = Random();
        final itemEscolhido = itemPendente[random.nextInt(itemPendente.length)];
        itemComprado ++;
        print('Item pendente escolhido: $itemEscolhido');
    }else{
      print('Não tem nenhum item pendente');
    }
  }

 void mostrarProgresso() {
    print('Progresso: $itemComprado/$itemDesejado');
  }
}
