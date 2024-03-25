// ignore_for_file: dead_code

void main() {
  // !exp
  // ||
  // &&

  var valor = false; // idade > 18 ... salario >= 1800
  print(!valor);

  var camisetaBranca = true;
  var calcaAzul = false;

  if(camisetaBranca && calcaAzul) {
    print('Pode entrar na festa');
  } else {
    print('Não pode entrar na festa');
  }
}