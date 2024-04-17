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
      routes:{
        '/' : (context) => const TelaHome(),
        '/telaVermelha' : (context) => const TelaVermelha(),
        '/telaAzul' : (context) => const TelaAzul()
      },
    );
  }
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text( 'Home'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text( 'Vermelho',
              style: TextStyle(
                  color: Colors.white),
            ),
            onPressed:() {
    
              Navigator.pushNamed(context, '/telaVermelha');
              },
            ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text( 'Azul',
                    style: TextStyle(
                        color: Colors.black),
                  ),
                  onPressed:() {
    
                    Navigator.pushNamed(context, '/telaAzul');
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class TelaVermelha extends StatelessWidget {
  const TelaVermelha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text( 'Tela Vermelha'),
            backgroundColor: Colors.red,
          ),
    
          body: Center(
            child: ElevatedButton(
              child: const Text( 'Retornar para Home'),
              onPressed:() {
    
                Navigator.pop(context, '/');
              },
            ),
          ),
        ),
    );
  }
}

class TelaAzul extends StatelessWidget {
  const TelaAzul({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text( 'Tela Azul'),
          backgroundColor: Colors.blue,
        ),
    
        body: Center(
          child: ElevatedButton(
            child: const Text( 'Retornar para tela Home'),
            onPressed:() {
              Navigator.pop(context, '/');
            },
          ),
        ),
      ),
    );
  }
}