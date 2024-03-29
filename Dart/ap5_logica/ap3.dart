import 'dart:math';

void main() {
  int somaPares(int numero) {
    int soma = 0;
    for (int i = 0; i <= numero; i += 2) {
      soma += i;
    }
    return soma;
  }

  int gerarNumeroAleatorio() {
    return Random().nextInt(901) + 100;
  }

  int numeroAleatorio = gerarNumeroAleatorio();

  int soma = somaPares(numeroAleatorio);

  print('A soma dos números pares entre 0 e $numeroAleatorio é $soma');
}