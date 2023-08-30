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
      title: 'Primeiro App DIO',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 26, 46, 18)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Página Principal'),
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
  int _counter = 0;
  String _frutaEscolhida = "";
  final List<String> _frutas = [
    "Banana",
    "Maçã",
    "Pera",
    "Abacaxi",
    "Uva",
    "Morango",
    "Limão",
    "Caju",
    "Melancia",
    "Laranja",
    "Abacate",
    "Coco",
    "Amora",
    "Ameixa"
  ];

  void _escolheFruta() {
    final int _numeroDeFrutas = _frutas.length;
    setState(() {
      _frutaEscolhida = _frutas[Random().nextInt(_numeroDeFrutas)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Sua fruta favorita agora é:',
            ),
            Text(
              '$_frutaEscolhida',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _escolheFruta,
        tooltip: 'Increment',
        child: const Icon(Icons.fastfood_outlined),
      ),
    );
  }
}
