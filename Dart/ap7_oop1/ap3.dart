class Produto {
  var nome;
  var preco;

  Produto(this.nome, this.preco);

  double desconto(double valorPercentual) {
    if (preco > -1) {
      var desconto = preco * valorPercentual / 100;
      return preco - desconto;
    }else{
      print('Valores inválidos');
      return 0.0;
    }
  }
}

void main() {
  List<Produto> produtos = [
    Produto('Notebook', 3000.0),
    Produto('Smartphone', 1500.0),
    Produto('Fone de ouvido', 100.0),
    Produto('Monitor', 700.0),
    Produto('Câmera', 2000.0),
  ];

  for (var produto in produtos) {
    print('Preço do produto ${produto.nome} R\$ ${produto.preco.toStringAsFixed(2)}');
    double novoPreco = produto.desconto(10);
    print('Novo preço do produto ${produto.nome} R\$ ${novoPreco.toStringAsFixed(2)}');
  }
}