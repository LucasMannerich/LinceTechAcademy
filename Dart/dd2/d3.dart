class Musica {
  final String titulo;
  final String artista;
  final String album;
  final int duracao;

  Musica(this.titulo, this.artista, this.album, this.duracao);

  @override
  String toString() {
    return '$titulo - $artista ($album) - ${duracao ~/ 60}:${duracao % 60}';
  }
}

class BibliotecaDeMusicas {
  final List<Musica> _musicas;

  BibliotecaDeMusicas(this._musicas);

  void imprimirBiblioteca() {
    print('--- Biblioteca de Músicas ---');
    _musicas.forEach((musica) => print(musica));
  }

  void buscarPorTitulo(String titulo) {
    final encontradas = _musicas.where((musica) => musica.titulo == titulo);
    _imprimirResultados(encontradas, 'Título: $titulo');
  }

  void buscarPorArtista(String artista) {
    final encontradas = _musicas.where((musica) => musica.artista == artista);
    _imprimirResultados(encontradas, 'Artista: $artista');
  }

  void buscarPorAlbum(String album) {
    final encontradas = _musicas.where((musica) => musica.album == album);
    _imprimirResultados(encontradas, 'Álbum: $album');
  }

  void _imprimirResultados(Iterable<Musica> musicas, String mensagem) {
    print('--- Resultados da busca por $mensagem ---');
    if (musicas.isEmpty) {
      print('Nenhuma música encontrada.');
    } else {
      musicas.forEach((musica) => print(musica));
      final totalSegundos = musicas.map((musica) => musica.duracao).reduce((a, b) => a + b);
      final totalHoras = totalSegundos ~/ 3600;
      final totalMinutos = (totalSegundos % 3600) ~/ 60;
      print('Total de músicas encontradas: ${musicas.length}');
      print('Tempo total: $totalHoras:$totalMinutos');
    }
  }
}

void main() {
  final biblioteca = BibliotecaDeMusicas([
    Musica('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', 355),
    Musica('Imagine', 'John Lennon', 'Imagine', 185),
    Musica('Stairway to Heaven', 'Led Zeppelin', 'Led Zeppelin IV', 482),
    Musica('Hotel California', 'Eagles', 'Hotel California', 391),
    Musica('Smells Like Teen Spirit', 'Nirvana', 'Nevermind', 301),
  ]);

  biblioteca.imprimirBiblioteca();
  biblioteca.buscarPorTitulo('Imagine');
  biblioteca.buscarPorArtista('Queen');
  biblioteca.buscarPorAlbum('Nevermind');
}

// Estudar e refazer