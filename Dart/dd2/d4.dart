import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas
  final comparador = ComparadorFormasGeometricas();

  // Definindo as formas geometricas
  final circuloA = Circulo('Circulo A', 3);
  final circuloB = Circulo('Circulo B', 8);
  final retanguloA = Retangulo('Retângulo A', 4, 3);
  final retanguloB = Retangulo('Retângulo B', 19, 11);
  final quadradoA = Quadrado('Quadrado A', 5);
  final trianguloEquilateroA = TrianguloEquilatero('Triângulo Equilátero A', 4);
  final trianguloRetanguloA = TrianguloRetangulo('Triângulo Retângulo A', 3, 4, 5);
  final pentagonoRegularA = PentagonoRegular('Pentágono Regular A', 5);
  final hexagonoRegularA = HexagonoRegular('Hexágono Regular A', 4);

  // Comparando formas geométricas
  final maiorArea = comparador.deMaiorArea([circuloA, circuloB, retanguloA, retanguloB, quadradoA, trianguloEquilateroA, trianguloRetanguloA, pentagonoRegularA, hexagonoRegularA]);
  final maiorPerimetro = comparador.deMaiorPerimetro([circuloA, circuloB, retanguloA, retanguloB, quadradoA, trianguloEquilateroA, trianguloRetanguloA, pentagonoRegularA, hexagonoRegularA]);

  print('A maior área pertence a ${maiorArea.nome} com área de ${maiorArea.area().toStringAsFixed(2)}');
  print('O maior perímetro pertence a ${maiorPerimetro.nome} com perímetro de ${maiorPerimetro.perimetro().toStringAsFixed(2)}');
}

abstract class FormaGeometrica {
  final String nome;

  FormaGeometrica(this.nome);

  double area();
  double perimetro();
}

/// Representa a forma geometrica "círculo"
class Circulo extends FormaGeometrica{
  /// Construtor padrao, recebe o [raio] do círculo.
  Circulo(String nome, this.raio) : super(nome);

  final double raio;

  /// Retorna a area desse círculo
  @override
  double area() => math.pi * math.pow(raio, 2);

  /// Retorna o perímetro desse círculo
  double perimetro() => 2 * math.pi * raio;
}

/// Representa a forma geometrica "retângulo", forma geometrica de quatro lados
/// e angulos retos (90 graus).
class Retangulo extends FormaGeometrica{
  /// Construtor padrao, recebe a [altura] e [largura] do retângulo
  Retangulo(String nome, this.altura, this.largura) : super(nome);

  final double largura;
  final double altura;

  /// Retorna a area desse círculo
  double area() => altura * largura;

  /// Retorna o perímetro desse círculo
  double perimetro() => (altura * 2) + (largura * 2);
}

/// Representa a forma geometrica "quadrado", que e um formato especial de
/// retângulo, onde todos os lados possuem o mesmo tamanho.
class Quadrado extends Retangulo{
  /// Construtor padrao, recebe o [lado] do quadrado
  Quadrado(String nome, double lado) : super(nome, lado, lado);
}

class TrianguloEquilatero extends FormaGeometrica{
  TrianguloEquilatero(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double area() => (math.sqrt(3) / 4) * math.pow(lado, 2);

  @override
  double perimetro() => 3 * lado;
}

class TrianguloRetangulo extends FormaGeometrica{
  TrianguloRetangulo(String nome, this.lado1, this.lado2, this.lado3) : super(nome);

  final double lado1;
  final double lado2;
  final double lado3;

  @override
  double area() => (lado1 * lado2) / 2;

  @override
  double perimetro() => lado1 + lado2 + lado3;
}

class PentagonoRegular extends FormaGeometrica {
  PentagonoRegular(String nome, this.lado) :super(nome);

  final double lado;

  @override
  double area() => 0.25 * math.sqrt(5 * (5 + 2 * math.sqrt(5))) * math.pow(lado, 2);

  @override
  double perimetro() => 5 * lado;
}

class HexagonoRegular extends FormaGeometrica {
  HexagonoRegular(String nome, this.lado) : super(nome);
  
  final double lado;

  @override
  double area() => (3 * math.sqrt(3) * math.pow(lado, 2)) / 2;

  @override
  double perimetro() => 6 * lado;
}

/// Compara caracteristicas de formas geometricas
class ComparadorFormasGeometricas {
  // Recebe formas geometricas e retorna a de maior area
  FormaGeometrica deMaiorArea(List<FormaGeometrica> formas) {
    return formas.reduce((a, b) => a.area() > b.area() ? a : b);
  }
  // Recebe formas geometricas e retorna a de maior perimetro
  FormaGeometrica deMaiorPerimetro(List<FormaGeometrica> formas) {
    return formas.reduce((a, b) => a.perimetro() > b.perimetro() ? a : b);
  }
}