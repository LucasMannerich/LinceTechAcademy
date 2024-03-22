void main() {
  Map<String, List<String>> estadosCidades = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguaçu'],
    'SP': ['Sao Paulo', 'Guarulhos', 'Campinas'],
    'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda']
  };
  
  var cidadesMG = estadosCidades['MG']!;
  cidadesMG.sort();
  var cidadesPR = estadosCidades['PR']!;
  cidadesPR.sort();
  var cidadesSC = estadosCidades['SC']!;
  cidadesSC.sort();
  var cidadesSP = estadosCidades['SP']!;
  cidadesSP.sort();
  
  print('Estados: ${estadosCidades.keys.join(' ; ')}');
  print('Cidades de SC: ${cidadesSC.join(' ; ')}');
  print('${cidadesMG.join(' - MG\n')}');
  print('${cidadesPR.join(' - PR\n')}');
  print('${cidadesSC.join(' - SC\n')}');
  print('${cidadesSP.join(' - SP\n')}');
  
}