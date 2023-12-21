// StatelessWidget -> Solo quiero mostrar un texto
// StatefullWidget -> Estado -> cambiar todo lo que ve en ese widget

//
// Widget 1 -> Stateless
// Widget 2 -> Stateless
// Widget 3 -> Statefull  setState
// Widget 4 -> Stateless |
// Widget 4 -> Stateless |
// Widget 4 -> Stateless |
// Widget 4 -> Stateless |
// Widget 4 -> Stateless |

// Scaffold

import 'package:flutter/material.dart';
import 'package:hola_mundo/widgets/label.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _contador;

  // Ejecutar un método antes de la construcción es decir antes del build
  @override
  void initState() {
    super.initState();
    _contador = 0;
  }

  /// Metodo que se ejecuta despues del ciclo de vida del widget
  /// Puden cerrar controladores, poner en 0 variables todo lo que no dependa del contexto
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    print("BUILD");
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contador'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Label(fontSize: 36),
              Text(
                '$_contador',
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: ,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () => setState(() => _contador = _contador - 1),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => setState(() => _contador = _contador + 1),
            ),
          ],
        ));
  }
}
