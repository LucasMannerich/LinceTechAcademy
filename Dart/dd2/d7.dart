import 'dart:collection';
import 'dart:math';

//Estudar e refazer

class RandomNameGenerator {
  final List<String> _firstNames = ['Fulano', 'Beltrano', 'Ciclano', 'João', 'Maria', 'José', 'Ana', 'Pedro', 'Paulo', 'Luana'];
  final List<String> _lastNames = ['Silva', 'Santos', 'Oliveira', 'Souza', 'Pereira', 'Costa', 'Ferreira', 'Almeida', 'Rodrigues', 'Lima'];

  String generateRandomName() {
    final random = Random();
    final firstName = _firstNames[random.nextInt(_firstNames.length)];
    final lastName = _lastNames[random.nextInt(_lastNames.length)];
    return '$firstName $lastName';
  }
}

class MarketQueue {
  final Queue<String> _queue = Queue();
  final RandomNameGenerator _nameGenerator = RandomNameGenerator();

  void addPersonToQueue() {
    final name = _nameGenerator.generateRandomName();
    _queue.addLast(name);
    print('($name) entrou na fila');
  }

  void serveNextPerson() {
    if (_queue.isNotEmpty) {
      final name = _queue.removeFirst();
      print('($name) foi atendido(a)');
    } else {
      print('A fila está vazia.');
    }
  }
}

void main() {
  final marketQueue = MarketQueue();

  // Populando a fila com 10 pessoas
  for (var i = 0; i < 10; i++) {
    marketQueue.addPersonToQueue();
  }

  // Atendendo as pessoas conforme a ordem da fila
  while (marketQueue._queue.isNotEmpty) {
    marketQueue.serveNextPerson();
  }
}