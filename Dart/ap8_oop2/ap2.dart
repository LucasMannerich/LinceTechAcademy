class Animal{
  void comer() {
    print('O animal está comendo');
  }
  void beber() {
    print('O animal está bebendo');
  }
}

class Cachorro extends Animal {

  void latir() {
    print('O cachorro está latindo');
  }
}

void main() {
 Cachorro cachorro = Cachorro();
 Animal animal = Animal();
  
  animal.beber();
  animal.comer();
  cachorro.latir();
}