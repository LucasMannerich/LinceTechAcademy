void main(List<String> args) {
  final String operacao = args[0];
  final int n1 = int.parse(args[1]);
  final int n2 = int.parse(args[2]);

  switch (operacao) {
    case 'soma':
      soma(n1, n2);
      continue mult;
    case 'sub':
      sub(n1, n2);
      break;
    case 'div':
      div(n1, n2);
      break;
    mult:
    case 'mult':
      mult(n1, n2);
      break;
    default:
      print('Operação inválida');
  }
}

  void soma(int n1, int n2) => print('Resultado: ${n1 + n2}');
  void mult(int n1, int n2) => print('Resultado: ${n1 * n2}');
  void div(int n1, int n2) => print('Resultado: ${n1 / n2}');
  void sub(int n1, int n2) => print('Resultado: ${n1 - n2}');