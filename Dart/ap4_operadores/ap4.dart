void main() {
  double valorProduto = 10;
  double valorDesconto = 7;

  int descontoPercentual = calcularPercentual(valorProduto, valorDesconto);

  print('O produto custava R\$$valorProduto, foi vendido por R\$ $valorDesconto. O desconto dado foi $descontoPercentual%');
}

int calcularPercentual(double valorProduto, double valorDesconto) {
  return ((valorProduto - valorDesconto) / valorProduto * 100).toInt();
}