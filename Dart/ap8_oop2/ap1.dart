import 'dart:math';

enum generosMusicais {
  reggae,
  rock,
  sertanejo,
}

String formatarGenero(generosMusicais genero){
  switch (genero) {
    case generosMusicais.reggae:
      return 'Reggae';
    case generosMusicais.rock:
      return 'Rock';
    case generosMusicais.sertanejo:
      return 'Sertanejo';
    default:
      return 'Gosto peculiar';
  }
}

void main() {
  final random = Random();

  List<generosMusicais> generos = generosMusicais.values;

  generosMusicais generoAleatorio = generos[random.nextInt(generos.length)];

  print('Meu gênero musical preferido é o ${formatarGenero(generoAleatorio)}');
}