import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulário Básico'),
        ),
        body: const FormularioBasico(),
      ),
    );
  }
}

class FormularioBasico extends StatefulWidget {
  const FormularioBasico({super.key});

  @override
  FormularioBasicoState createState() => FormularioBasicoState();
}

class FormularioBasicoState extends State<FormularioBasico> {
  final formularioKey = GlobalKey<FormState>();
  String nome = '';
  String idade = '';
  bool inativo = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: formularioKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Nome'),
              validator: (value) {
                if (value!.isEmpty || value.length < 3 || !value.trim().startsWith(RegExp(r'[A-Z]'))) {
                  return 'Por favor, insira um nome válido';
                }
                return null;
              },
              onSaved: (value) {
                nome = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Idade'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty || int.tryParse(value) == null || int.parse(value) < 18) {
                  return 'Por favor, insira uma idade válida';
                }
                return null;
              },
              onSaved: (value) {
                idade = value!;
              },
            ),
            Row(
              children: [
                const Text('Inativo: '),
                Checkbox(
                  value: inativo,
                  onChanged: (value) {
                    setState(() {
                      inativo = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _salvarFormulario,
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }

  void _salvarFormulario() {
    if (formularioKey.currentState!.validate()) {
      formularioKey.currentState!.save();
      _exibirDialogo();
    }
  }

  void _exibirDialogo() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Dados Salvos'),
        content: Text('Nome: $nome\nIdade: $idade\nInativo: ${inativo ? 'Sim' : 'Não'}'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}