void main() {
  //⬇ O valor não pode mudar a sua atribuição, mas você pode gerenciar seus valores
  final listaDeLinguagens1 = ["Dart", "C#"];
  listaDeLinguagens1.add("Java");
  //⬇ O valor "congela" os valores, eles não podem ser modificados, não é possível add ou remover
  const listaDeLinguagens2 = ["Dart", "C#"];

  print(listaDeLinguagens1);
  print(listaDeLinguagens2);
}