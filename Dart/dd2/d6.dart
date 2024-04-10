import 'dart:collection';

//Estudar e refazer

class Card {
  final String rank;
  final String suit;

  Card(this.rank, this.suit);

  @override
  String toString() {
    return '$rank $suit';
  }
}

class Deck {
  final Queue<Card> _cards = Queue();

  void addCard(Card card) {
    _cards.addLast(card);
  }

  Card? removeCard() {
    return _cards.isNotEmpty ? _cards.removeLast() : null;
  }
}

void main() {
  var deck = Deck();

  // Incluir cartas no baralho
  deck.addCard(Card('A', '♣')); // paus - U+2663
  deck.addCard(Card('A', '♥')); // copas - U+2665
  deck.addCard(Card('A', '♠')); // espadas - U+2660
  deck.addCard(Card('A', '♦'));

  // Remover todas as cartas do baralho
  print('${deck._cards}');
  while (deck.removeCard() != null) {
    print('${deck._cards} Carta removida do topo do baralho.');
  }
}