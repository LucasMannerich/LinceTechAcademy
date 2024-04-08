import 'dart:math';

void main() {
  final todasAsFigurinhas = [
    Figurinha('Bento', 1),
    Figurinha('Danilo', 2),
    Figurinha('Murilo', 3),
    Figurinha('Gleison Bremer', 4),
    Figurinha('Bruno Guimarães', 5),
    Figurinha('Wendell', 6),
    Figurinha('Vinícius Júnior', 7),
    Figurinha('Lucas Paquetá', 8),
    Figurinha('Richarlison', 9),
    Figurinha('Rodrygo', 10),
    Figurinha('Raphinha', 11),
    Figurinha('Rafael', 12),
    Figurinha('Yan Couto', 13),
    Figurinha('Fabrício Bruno', 14),
    Figurinha('João Gomes', 15),
    Figurinha('Pepê', 16),
    Figurinha('André', 17),
    Figurinha('Douglas Luiz', 18),
    Figurinha('Andreas Pereira', 19),
    Figurinha('Savinho', 20),
  ];

  final album = Album([]);
  var pacotinhosAbertos = 0;

  while (!album.albumCompleto()) {
    final pacotinho = PacoteDeFigurinhas(todasAsFigurinhas);
    album.adicionarPacote(pacotinho);
    pacotinhosAbertos++;
  }

  print('Número de pacotinhos abertos: $pacotinhosAbertos');
  print('Número de figurinhas repetidas: ${album.numeroDeFigurinhasRepetidas}');
  print('Figurinhas coladas no album:');
  album.imprimirAlbum();
}

class Figurinha {
  final String nome;
  final int codigo;

  Figurinha(this.nome, this.codigo);
}

class PacoteDeFigurinhas {
  final List<Figurinha> figurinhas;

  PacoteDeFigurinhas(List<Figurinha> todasAsFigurinhas) : figurinhas = gerarPacote(todasAsFigurinhas);

  static List<Figurinha> gerarPacote(List<Figurinha> todasAsFigurinhas) {
    final random = Random();
    final pacote = <Figurinha>[];
    while (pacote.length < 4) {
      final figurinha = todasAsFigurinhas[random.nextInt(todasAsFigurinhas.length)];
      if (!pacote.contains(figurinha)) {
        pacote.add(figurinha);
      }
    }
    return pacote;
  }

  List<Figurinha> get figurinha => List.unmodifiable(figurinhas);
}

class Album {
  final List<Figurinha> figurinhas;
  final List<Figurinha> figurinhasRepetidas = [];

  Album(this.figurinhas);

  void adicionarPacote(PacoteDeFigurinhas pacote) {
    for (var figurinha in pacote.figurinhas) {
      if(!figurinhas.contains(figurinha)) {
        figurinhas.add(figurinha);
      }else{
        figurinhasRepetidas.add(figurinha);
      }
    }
  }

  bool albumCompleto() {
    return figurinhas.length == 20;
  }

  void imprimirAlbum() {
    figurinhas.sort((a, b) => a.codigo.compareTo(b.codigo));
    for(var figurinha in figurinhas) {
      print('${figurinha.nome}: ${figurinha.codigo}');
    }
  }

  int get numeroDeFigurinhasRepetidas => figurinhasRepetidas.length;
}