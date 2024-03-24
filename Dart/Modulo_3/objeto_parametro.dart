void printElement(int element) => print(element);
var calcularElement = (int element) => print(element * 2);

void main() {
  var list = [1, 2, 3];

  list.forEach(calcularElement);
}