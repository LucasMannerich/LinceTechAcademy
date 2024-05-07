import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('--------MENU--------\n'
               '[1] Teorema de Pitágoras\n'
               '[2] Representações\n'
               '[3] Fórmula de Bhaskara');

  String? escolha = stdin.readLineSync();

  switch(escolha){
    case '1': TeoremaDePitagoras();
    case '2': Transformacoes();
    case '3': FormulaDeBhaskara();
  }
}

void TeoremaDePitagoras() {
  stdout.write('Informe o valor do lado A');
  String ladoAString = stdin.readLineSync()!;
  stdout.write('Informe o valor do lado B');
  String ladoBString = stdin.readLineSync()!;

  double ladoA = double.parse(ladoAString);
  double ladoB = double.parse(ladoBString);
  
  double hipotenusa = sqrt(ladoA*ladoA + ladoB*ladoB) ;
  return print('$hipotenusa');
}

void Transformacoes() {
  stdout.write('--------MENU--------\n'
               '[1] Transformar em binário\n'
               '[2] Transformar em octal\n'
               '[3] Transformar em hexadecimal');

  String? escolha = stdin.readLineSync();

void TransformarEmBinario() {
  stdout.write('Informe um número decimal');
  String valorString = stdin.readLineSync()!;

  int valor = int.parse(valorString);
  String binario = valor.toRadixString(2);
  print('${binario}');
}

void TransformarEmOctal() {
  stdout.write('Informe um número decimal');
  String valorString = stdin.readLineSync()!;

  int valor = int.parse(valorString);
  String octal = valor.toRadixString(8);
  print('${octal}');
}

void TransformarEmHexadecimal() {
  stdout.write('Informe um número decimal');
  String valorString = stdin.readLineSync()!;

  int valor = int.parse(valorString);
  String hexadecimal = valor.toRadixString(16);
  print('${hexadecimal}');
}

  switch(escolha){
    case'1': TransformarEmBinario();
    case'2': TransformarEmOctal();
    case'3': TransformarEmHexadecimal();
  }
}

void FormulaDeBhaskara() {
  stdout.write('Informe o valor de A');
  String aString = stdin.readLineSync()!;
  stdout.write('Informe o valor de B');
  String bString = stdin.readLineSync()!;
  stdout.write('Informe o valor de C');
  String cString = stdin.readLineSync()!;

  double a = double.parse(aString);
  double b = double.parse(bString);
  double c = double.parse(cString);

  double delta = b * b - 4  * a * c;
  double x1 = (- b + sqrt(delta)) / (2*a);
  double x2 = (- b - sqrt(delta)) / (2*a);
  return print('S = (${x1}, ${x2})');
}