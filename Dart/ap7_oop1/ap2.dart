class Retangulo {
  var largura;
  var altura;

  Retangulo(this.largura, this.altura);

  double calcularArea() {
    if (largura > -1 && altura > -1) {
      var area = largura * altura;
      print('Área calculada');
      return area;
    }else{
      print('Valores inválidos');
      return 0.0;
    }
  }
}

void main() {
  Retangulo retangulo = Retangulo(10.0, 5.0);
  
  double area = retangulo.calcularArea();
    print('Área do retângulo: ${area.toStringAsFixed(9)}');
}