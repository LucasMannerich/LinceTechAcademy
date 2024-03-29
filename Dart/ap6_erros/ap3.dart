import 'dart:math';

void main() {
  Random random = Random();
  double base = random.nextDouble() * 100;
  double altura = random.nextDouble() * 100;

  try {
    Retangulo retangulo = Retangulo(base, altura);
    double area = retangulo.calcularArea();
    print('Area do retângulo: ${area}');
  } catch (e) {
    print(e);
  }
}

abstract class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  double _base;
  double _altura;

  Retangulo(this._base, this._altura) {
    if (_base <= 0 || _altura <= 0) {
      throw Exception('Exception: Dimensões inválidas, informe apenas valores positivos maiores que zero');
    }
  }

  double calcularArea() {
    return _base * _altura;
  }
}
