import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MyAppState(),
    );
  }
}

class _MyAppState extends StatefulWidget {
  @override
  _AlterarFormaState createState() => _AlterarFormaState();
}

class _AlterarFormaState extends State<_MyAppState> {
  bool circulo = true;
  Color corDaForma = Colors.blue;

  void alternarFormato() {
    setState(() {
      circulo = !circulo;
    });
  }

  void mudarCor() {
    setState(() {
      corDaForma = Color(Random().nextInt(0xFFFFFFFF));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formatos dinâmicos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: corDaForma,
                shape: circulo ? BoxShape.circle : BoxShape.rectangle,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: alternarFormato,
              child: Text(circulo ? 'Alterar para quadrado' : 'Alterar para círculo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: mudarCor,
              child: const Text('Cor Aleatória'),
            ),
          ],
        ),
      ),
    );
  }
}