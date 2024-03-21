void main() {

  List <double> notas = [7.0, 8.0, 5.3, 9.7];
  double somaNotas = 0.0;
  double media = 0.0;

  for(int i=0; i < 4; i++){
    somaNotas += notas[i];
  }

  media = somaNotas / notas.length;

  print('A média do aluno é: $media');
}