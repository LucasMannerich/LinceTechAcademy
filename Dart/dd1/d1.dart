import 'dart:math';

void main() {
  List<double> raios = [5, 8, 12, 7.3, 18, 2, 25];

  for(var raio in raios){
    double area = calcularArea(raio);
    double perimetro = calcularPerimetro(raio);
    print('Raio: $raio, área: ${area.toStringAsFixed(2)}, perímetro: ${perimetro.toStringAsFixed(2)}');
  }
}

double calcularArea(double raio){
  return pi * raio * raio;
}

double calcularPerimetro(double raio){
  return 2 * pi * raio;
}