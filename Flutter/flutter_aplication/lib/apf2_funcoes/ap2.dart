import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> coresDeRetangulos = [
    Colors.red, Colors.green, Colors.blue,
    Colors.cyan, Colors.purple, Colors.yellow,
    Colors.red, Colors.yellow, Colors.blue,
    Colors.deepPurple, Colors.orange, Colors.lightGreen,
  ];

  final List<Color> coresDeBackground = [
    Colors.grey, Colors.black, Colors.transparent,
    Colors.grey, Colors.black, Colors.transparent,
    Colors.grey, Colors.black, Colors.transparent,
    Colors.grey, Colors.transparent, Colors.white,
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quadrados empilhados'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: List.generate(coresDeRetangulos.length, (index) {
              return Positioned(
                left: 25.0 * index,
                top: 25.0 * index,
                child: Container(
                  width: 100,
                  height: 100,
                  color: coresDeBackground[index],
                  child: Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      color: coresDeRetangulos[index],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}