void main() {
  print(TransformarEmBinario(10));
  print(TransformarEmOctal(42));
  print(TransformarEmHexadecimal(255));
}

String TransformarEmBinario(int numeroDecimal) {
  String binario = numeroDecimal.toRadixString(2);
  return binario;
}

String TransformarEmOctal(int numeroDecimal) {
  String octal = numeroDecimal.toRadixString(8);
  return octal;
}

String TransformarEmHexadecimal(int numeroDecimal) {
  String hexadecimal = numeroDecimal.toRadixString(16);
  return hexadecimal;
}