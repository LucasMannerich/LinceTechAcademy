class ContaBancaria {
  var titular;
  var saldo;

  ContaBancaria(this.titular, this.saldo);

  double sacar(double valorSaque) {
    if (valorSaque <= saldo) {
      saldo -= valorSaque;
      print('Saque realizado com sucesso');
      return saldo;
    }else{
      print('Saldo insuficiente');
      return saldo;
    }
  }

  double depositar(double valorDeposito) {
    if (valorDeposito > 0) {
      saldo += valorDeposito;
      print('Depósito realizado com sucesso');
      return saldo;
    }else{
      print('O valor do depósito deve ser maior que zero');
      return saldo;
    }
  }
}

void main() {
  ContaBancaria conta = ContaBancaria('José', 1000.0);
  
  conta.depositar(500.00);
    print('Saldo atual: R\$ ${conta.saldo.toStringAsFixed(2)}');
  conta.sacar(200.00);
    print('Saldo atual: R\$ ${conta.saldo.toStringAsFixed(2)}');
}