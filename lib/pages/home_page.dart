import 'package:dioproject/services/gerador_numero_aleatorio_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numeroGerado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meu App',
        ),
      ),
      body: Center(
        child: Text(numeroGerado.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          setState(() {
            numeroGerado =
                GeradorNumeroAleatorioService.gerarNumeroAleatorio(10000);
          });
        },
        child: const Icon(
          Icons.question_mark_rounded,
          size: 40.0,
          color: Colors.purple,
        ),
      ),
    );
  }
}
