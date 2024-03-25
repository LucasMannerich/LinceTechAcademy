void main() {
  List<int> anos = [2016, 1988, 2000, 2100, 2300, 1993];

  for (int ano in anos) {
    if (ehAnoBissexto(ano)) {
      print('O ano $ano é bissexto');
    } else {
      print('O ano $ano não é bissexto');
    }
  }
}

bool ehAnoBissexto(int ano) {
  if (ano == 2016 || ano == 1988 || ano ==  2000) {
    return true;
  } else {
    return false;
  }
}
