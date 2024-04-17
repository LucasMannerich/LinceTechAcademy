import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const TelaHome(),
        '/cor': (context) => TelaDaCor(
          cor: ModalRoute.of(context)!.settings.arguments as Color,
        ),
      },
    );
  }
}

class VariaveisDaListaDeCores {
  const VariaveisDaListaDeCores(this.cor, this.nomeDaCor);

  final Color cor;
  final String nomeDaCor;
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  final List<VariaveisDaListaDeCores> cores = const [
    VariaveisDaListaDeCores(Colors.red, 'Vermelho'),
    VariaveisDaListaDeCores(Colors.blue, 'Azul'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(
        itemCount: cores.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: cores[index].cor,
            title: Text(
              cores[index].nomeDaCor,
              style: const TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/cor', arguments: cores[index].cor);
            },
          );
        },
      ),
    );
  }
}

class TelaDaCor extends StatelessWidget {
  final Color cor;

  const TelaDaCor({super.key, required this.cor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cor selecionada'),
        backgroundColor: cor,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar'),
        ),
      ),
    );
  }
}