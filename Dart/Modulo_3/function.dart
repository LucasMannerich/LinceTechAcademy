void main() {

  //void Function() minhaFuncao = () {
  //  print('Minha Função');
  //};

  //var minhaFuncao = () {
  //  print('Minha Função');
  //};

  void minhaFuncao() => print('Minha Função');

  //num Function(num, num) getSoma = (num v1, num v2) {
  //  return v1 + v2;
  //};

  //minhaFuncao();
  minhaFuncao.call();
  print(getSoma(2, 3));
}

num getSoma (num v1, num v2) => v1 + v2;