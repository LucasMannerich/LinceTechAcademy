void main() {
try {
    String nomeArquivo = 'arquivo.txt'; 
    ArquivoTexto arquivo = ArquivoTexto(nomeArquivo);
    arquivo.abrir();
  } catch (e) {
    rethrow;
  } finally {
    print('Fim do programa');
  }
}

abstract class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {

  String _nome;

  ArquivoTexto(this._nome,) {
    this._nome = _nome;
  }

  @override
  void abrir() {
    try {
      print('Arquivo $_nome aberto com sucesso');
    } catch (e) {
      throw Exception('Erro ao abrir o arquivo $_nome');
    }
  }
}
