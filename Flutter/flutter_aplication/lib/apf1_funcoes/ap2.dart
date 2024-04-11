import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Botão Aleatório',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Botão Aleatório'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String _botaoCerto;
  int _tentativas = 0;
  bool _fimDeJogo = false;
  Color _corDoFundo = Colors.white;

  @override
  void initState() {
    super.initState();
      _escolherBotaoCerto();
  }

  void _escolherBotaoCerto() {
    final List<String> botoes = ['A', 'B', 'C'];
    _botaoCerto = botoes[Random().nextInt(botoes.length)];
  }

  void _checagemDoBotaoCerto(String botaoEscolhido) {
    if(!_fimDeJogo) {
      setState(() {
        _tentativas++;
        if(botaoEscolhido == _botaoCerto) {
          _fimDeJogo = true;
          if (_corDoFundo != Colors.red) {
            _corDoFundo = Colors.green;
          }
        }
        if (_tentativas == 2) {
          _fimDeJogo = true;
            _corDoFundo = Colors.red;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: _corDoFundo,
        child: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _checagemDoBotaoCerto('A');
              },
              child: const Text('A'),
            ),
            ElevatedButton(
              onPressed: () {
                _checagemDoBotaoCerto('B');
              },
              child: const Text('B'),
            ),
            ElevatedButton(
              onPressed: () {
                _checagemDoBotaoCerto('C');
              },
              child: const Text('C'),
            ),
            const SizedBox(height: 20),
            if (_fimDeJogo)
              Container(
                padding: const EdgeInsets.all(16),
                child: Text(
                  _tentativas == 2 ? 'Você perdeu' : 'Você acertou',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ),
      ),
    );
  }
}