void main() {
  Map<String, List<String>> estadosCidades = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguaçu'],
    'SP': ['Sao Paulo', 'Guarulhos', 'Campinas'],
    'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda']
  };
  
                                            // ⬇ serve para indicar que o item não será null
  List<String> cidadesSC = estadosCidades['SC']!;
  cidadesSC.sort();
  
  print('Estados: ${estadosCidades.keys.join(' ; ')}');

  print('Cidades de SC: ${cidadesSC.join(' ; ')}');
  
  List<String> todasCidades = [];
    estadosCidades.values.forEach(
    (cidades) => todasCidades.addAll(cidades)
  );

  todasCidades.sort();

  todasCidades.forEach((cidade) {
    for (String estado in estadosCidades.keys) {
      if (estadosCidades[estado]!.contains(cidade)) {
        print('$cidade - $estado');
        break;
      }
    }
  });
}