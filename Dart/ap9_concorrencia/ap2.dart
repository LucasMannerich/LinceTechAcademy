Future<void> main() async {
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];

  await baixarImagens(urls);
}

Future<void> baixarImagens(List<String> urls) async {
  print('Baixando imagens...');

  for (var url in urls) {
    try {
      await _baixarImagem(url);
      print('Imagem $url baixada com sucesso!');
    } catch (e) {
      print('Erro ao baixar a imagem $url: $e');
    }
  }

  print('Download concluído!');
}

Future<void> _baixarImagem(String url) async {
  await Future.delayed(Duration(seconds: 1));
}