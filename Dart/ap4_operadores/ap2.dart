void main() {
  List<String> listaStrings = [
    '10',
    '2XXL7',
    'JOJ0',
    '99',
    '381',
    'AD44',
    '47',
    '2B',
    '123',
    '78'
  ];

  List<int> listaConvertida = listaNumeros(listaStrings);

  print('Lista convertida: ${listaConvertida.join(', ')}');

}

List<int> listaNumeros(List<String> listaStrings) {

  return listaStrings.map((String) => int.tryParse(String) ?? 0).toList();

}