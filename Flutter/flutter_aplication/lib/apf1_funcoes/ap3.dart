

import 'package:flutter/material.dart';
import 'dart:math';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MyApp());
}

enum SituacaoDoJogo {
  jogando,
  venceu,
  perdeu,
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final random = Random();

  var botaoCorreto = 0;
  var clicks = 0;
  var ganhou = 0;
  var perdeu = 0;
  var situacaoDoJogo = SituacaoDoJogo.jogando;

  @override
  void initState() {
    super.initState();
    botaoCorreto = random.nextInt(3);
  }

  void tentativa(int opcao) {
    setState(() {
      if (situacaoDoJogo case SituacaoDoJogo.jogando) {
        if (opcao == botaoCorreto) {
          situacaoDoJogo = SituacaoDoJogo.venceu;
          ganhou++;
        } else {
          clicks++;
          if (clicks >= 2) {
            situacaoDoJogo = SituacaoDoJogo.perdeu;
            perdeu++;
          }
        }
      }
    });
  }

  void reiniciarJogo() {
    setState(() {
      botaoCorreto = random.nextInt(3);
      clicks = 0;
      situacaoDoJogo = SituacaoDoJogo.jogando;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget botaoCerto() {
      return ElevatedButton(
        onPressed: null,
        child: Text(String.fromCharCode(botaoCorreto + 65)),
      );
    }

    Widget mensagemDeVitoria() {
      return Container(
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Você ganhou'),
            ElevatedButton(
              onPressed: reiniciarJogo,
              child: const Text('Reiniciar'),
            ),
          ],
        ),
      );
    }

    Widget mensagemDeDerrota() {
      return Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Você perdeu'),
            ElevatedButton(
              onPressed: reiniciarJogo,
              child: const Text('Reiniciar'),
            ),
          ],
        ),
      );
    }

    Widget botoes() {
      return Column(
        children: [
          ElevatedButton(
            onPressed: () {
              tentativa(0);
            },
            child: const Text('A'),
          ),
          ElevatedButton(
            onPressed: () {
              tentativa(1);
            },
            child: const Text('B'),
          ),
          ElevatedButton(
            onPressed: () {
              tentativa(2);
            },
            child: const Text('C'),
          ),
        ],
      );
    }

    Widget estadoDoJogo;
    switch (situacaoDoJogo) {
      case SituacaoDoJogo.jogando:
        estadoDoJogo = botoes();
        break;
      case SituacaoDoJogo.venceu:
        situacaoDoJogo = SituacaoDoJogo.venceu;
        estadoDoJogo = mensagemDeVitoria();
        break;
      case SituacaoDoJogo.perdeu:
        situacaoDoJogo = SituacaoDoJogo.perdeu;
        estadoDoJogo = mensagemDeDerrota();
        break;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        botaoCerto(),
        const SizedBox(height: 20),
        estadoDoJogo,
        const SizedBox(height: 20),
        Text('Vitórias: $ganhou, Derrotas: $perdeu'),
      ],
    );
  }
}