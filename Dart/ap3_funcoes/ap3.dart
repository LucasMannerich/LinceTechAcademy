import 'dart:math';

void main() {

  final random = Random();

  List<int> listaRaios = [];
  for(int i = 0; i < 10; i++) {
    listaRaios.add(random.nextInt(101));
  }

  listaRaios.forEach((raio) {
    double area = calcularArea(raio);
    double perimetro = calcularPerimetro(raio);
    print("Raio: $raio, área: ${area.toStringAsFixed(2)}, perímetro: ${perimetro.toStringAsFixed(2)}");
  });
}

double calcularArea (int raio) {
  return pi * raio * raio;
}

double calcularPerimetro (int raio) {
  return 2 * pi * raio;
}