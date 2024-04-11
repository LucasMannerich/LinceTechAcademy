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
      title: 'Cores Aleatórias',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Cores Aleatórias'),
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
  Color _cor = Colors.black;

  void _mudarCor() {
    setState(() {
      _cor = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _mudarCor,
            child: Text(
              'Toque para alterar a cor',
              style: TextStyle(
                fontSize: 20.0,
                color: _cor,
              ),
            ),
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.center,
        width: 200.0,
        height: 50.0,
        child: ElevatedButton(
          onPressed: _mudarCor,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(16.0),
            textStyle: const TextStyle(fontSize: 20.0),
          ),
          child: const Text('Sortear cor'),
        ),
      ),
    );
  }
}
