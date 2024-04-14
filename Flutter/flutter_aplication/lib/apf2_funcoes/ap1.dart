import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Retângulos coloridos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _fazerQuadrados(Colors.red),
                  const SizedBox(width: 8),
                  _fazerQuadrados(Colors.green),
                  const SizedBox(width: 8),
                  _fazerQuadrados(Colors.blue),
                  const SizedBox(width: 8),
                  _fazerQuadrados(Colors.purple),
                  const SizedBox(width: 8),
                  _fazerQuadrados(Colors.cyan),
                  const SizedBox(width: 8),
                  _fazerQuadrados(Colors.black),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _fazerRetangulos(Colors.purple),
                  const SizedBox(width: 8),
                  _fazerRetangulos(Colors.cyan),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _fazerQuadrados(Color cor) {
    return Container(
      width: 50,
      height: 50,
      color: cor,
    );
  }

  Widget _fazerRetangulos(Color cor) {
    return Container(
      width: 50,
      height: 100,
      color: cor,
    );
  }
}