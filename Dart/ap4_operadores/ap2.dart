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

  List<int> listaConvertida = listaParaNumeros(listaStrings);

  print('Lista convertida: ${listaConvertida.join(', ')}');
  
}

List<int> listaParaNumeros(List<String> listaStrings) {

  return listaStrings.map((str) => int.tryParse(str) ?? 0).toList();

}