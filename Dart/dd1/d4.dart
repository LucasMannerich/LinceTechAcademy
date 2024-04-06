void main() {
  DateTime dataAtual = DateTime.now();
  print('Data atual: ${formatarData(dataAtual)}');

  DateTime dataCalculada = somarData(dataAtual, 18);
  print('Data calculada: ${formatarData(dataCalculada)}');
}

String formatarData(DateTime data) {
  return '${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')}/${data.year}';
}

DateTime somarData(DateTime dataAtual, int numero) {
  int diasAdicionados = 0;

  while (diasAdicionados < numero) {
    dataAtual = dataAtual.add(Duration(days: 1));
    if (dataAtual.weekday != DateTime.saturday && dataAtual.weekday != DateTime.sunday) {
      diasAdicionados++;
    }
  }
  return dataAtual;
}