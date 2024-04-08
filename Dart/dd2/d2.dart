import 'dart:math';

void main() {
  final pessoa = Pessoa();
  final fornecedores = <Fornecedor>[
    FornecedorDeBebidas(),
    FornecedorDeSanduiches(),
    FornecedorDeBolos(),
    FornecedorDeSaladas(),
    FornecedorDePetiscos(),
    FornecedorDeUltraCaloricos()
  ];

  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) {
    final random = Random();
    final fornecedor = fornecedores[random.nextInt(fornecedores.length)];
    pessoa.refeicao(fornecedor);
  }

  pessoa.definirCaloriasIniciais();

  pessoa.informacoes();
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

/// Escolhe um fornecedor para cada refeição
abstract class Fornecedor {
  Produto fornecer();
}

class FornecedorDeBebidas implements Fornecedor{
  final random = Random();
  final bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Cafe', 60),
    Produto('Cha', 35),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  @override
  Produto fornecer() {
    return bebidasDisponiveis[random.nextInt(bebidasDisponiveis.length)];
  }
}

class Pessoa {
  // Acumulador de calorias
  int caloriasConsumidas = 0;
  int numeroRefeicoes = 0;
  StatusCalorias statusCalorias = StatusCalorias.normal;

  /// Imprime as informacoes desse consumidor
  /// Imprimindo o número de refeções realizadas
  void informacoes() {
    print('Calorias consumidas: $caloriasConsumidas');
    print('Número de refeições realizadas: $numeroRefeicoes');
    print('Status do nível de calorias: ${statusCalorias.toString().split('.').last}');
    if(necessitaDeRefeicao() == true){
      print('Precisa de mais refeições');
    }else if(necessitaDeRefeicao() != true && caloriasConsumidas <= 2500){
      print('Já comeu o necessário');
    }else{
      print('Comeu mais que o necessário');
    }
  }

  /// Consome um produto e aumenta o número de calorias
  void refeicao(Fornecedor fornecedor) {
     final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    caloriasConsumidas += produto.calorias;
    numeroRefeicoes++;
    status();
  }

  /// Lógica para definir os status da pessoa
  void status() {
      if (caloriasConsumidas <= 500) {
      statusCalorias = StatusCalorias.deficitExtremo;
    } else if (caloriasConsumidas <= 1800) {
      statusCalorias = StatusCalorias.deficit;
    } else if (caloriasConsumidas <= 2500) {
      statusCalorias = StatusCalorias.normal;
    } else {
      statusCalorias = StatusCalorias.excesso;
    }
  }

  // Definindo calorias iniciais da pessoa
  void definirCaloriasIniciais() {
    final random = Random();
    caloriasConsumidas = random.nextInt(3000);
    status();
  }

  // Verificando se a pessoa precisa realizar mais refeições
  bool necessitaDeRefeicao() {
    return statusCalorias != StatusCalorias.normal;
  } 
}

enum StatusCalorias {
  deficitExtremo,
  deficit,
  normal,
  excesso,
}

/// Segue abaixo os novos fornecedores
class FornecedorDeSanduiches implements Fornecedor{
  final random = Random();
  final sanduichesDisponiveis = <Produto>[
    Produto('Sanduíche natural', 200),
    Produto('Sanduíche de frango', 300),
    Produto('Sanduíche de carne', 400),
  ];

  @override
  Produto fornecer() {
    return sanduichesDisponiveis[random.nextInt(sanduichesDisponiveis.length)];
  }
}

class FornecedorDeBolos implements Fornecedor{
  final random = Random();
  final bolosDisponiveis = <Produto>[
    Produto('Bolo de morango', 600),
    Produto('Bolo de fuba', 500),
    Produto('Bolo de chocolate', 700),
  ];

  @override
  Produto fornecer() {
    return bolosDisponiveis[random.nextInt(bolosDisponiveis.length)];
  }
}

class FornecedorDeSaladas implements Fornecedor{
  final random = Random();
  final saladasDisponiveis = <Produto>[
    Produto('Salada de frango', 80),
    Produto('Salada de batata', 70),
    Produto('Salada de tomate', 50),
  ];

  @override
  Produto fornecer() {
    return saladasDisponiveis[random.nextInt(saladasDisponiveis.length)];
  }
}

class FornecedorDePetiscos implements Fornecedor{
  final random = Random();
  final petiscosDisponiveis = <Produto>[
    Produto('Batata Frita', 400),
    Produto('Salgadinhos', 500),
    Produto('Linguicinha', 300),
  ];

  @override
  Produto fornecer() {
    return petiscosDisponiveis[random.nextInt(petiscosDisponiveis.length)];
  }
}

class FornecedorDeUltraCaloricos implements Fornecedor{
  final random = Random();
  final ultraCaloricosDisponiveis = <Produto>[
    Produto('Sorvete de creme', 600),
    Produto('Petit gâteau', 800),
    Produto('Milk-shake de chocolate', 1000),
  ];

  @override
  Produto fornecer() {
    return ultraCaloricosDisponiveis[random.nextInt(ultraCaloricosDisponiveis.length)];
  }
}