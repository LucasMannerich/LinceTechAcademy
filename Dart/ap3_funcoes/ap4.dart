import 'dart:math';

void main() {

  final random = Random();

  List<int> listaNumero = [];
  for(int i = 0; i < 15; i++) {
    listaNumero.add(random.nextInt(5001));
  }

   imprimirConversoes(listaNumero);
}

void imprimirConversoes(List<int> listaNumero) {
  listaNumero.sort();

  listaNumero.forEach((numero) {
    String raioDecimal = numero.toString();
    String raioBinario = decimalBinario(numero);
    String raioOctal = decimalOctal(numero);
    String raioHexadecimal = decimalHexadecimal(numero);

    print("Raio: $raioDecimal, binário: $raioBinario, octal: $raioOctal, hexadecimal: $raioHexadecimal");
  });
}

String decimalBinario(int numero) {
                // ⬇ converte um número inteiro para uma string de acordo com a base especificada
  return numero.toRadixString(2);
}

String decimalOctal(int numero) {
  return numero.toRadixString(8);
}

String decimalHexadecimal(int numero) {
  return numero.toRadixString(16);
}