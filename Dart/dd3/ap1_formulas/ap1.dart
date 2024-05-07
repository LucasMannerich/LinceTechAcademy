import 'dart:math';

void main() {
  print(TeoremaDePitagoras(4, 5).toStringAsFixed(2));
}

double TeoremaDePitagoras(double ladoA, double ladoB) {
  double hipotenusa = sqrt(ladoA*ladoA + ladoB*ladoB) ;
  return hipotenusa;
}