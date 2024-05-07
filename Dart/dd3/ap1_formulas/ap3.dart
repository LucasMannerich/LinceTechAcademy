import 'dart:math';

void main() {
  FormulaDeBhaskara(2, -6, 0);
}

void FormulaDeBhaskara(double a, double b, double c) {
  double delta = b * b - 4  * a * c;
  double x1 = (- b + sqrt(delta)) / (2*a);
  double x2 = (- b - sqrt(delta)) / (2*a);
  return print('S = (${x1}, ${x2})');
}