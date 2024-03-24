import 'dart:math';

void main() {

  int funcaoAcomB = funcaoA(funcaoB);
  int funcaoAcomC = funcaoA(funcaoC);

  print('$funcaoAcomB');
  print('$funcaoAcomC');
}

funcaoA (Function) {
  int num1 = Random().nextInt(101);
  int num2 = Random().nextInt(101);

  int resultado1 = Function(num1);
  int resultado2 = Function(num2);

   return resultado1 + resultado2;
}

funcaoB (num) {
  return num * 2;
}

funcaoC (num) {
  return num * 2;
}