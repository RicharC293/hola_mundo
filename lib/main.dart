import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// Refercia al widget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      // theme: ThemeData.dark(useMaterial3: true).copyWith(
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Colors.red,
      //   ),
      // ),
      home: const Home(),
    );
  }
}

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
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              const Text('El numero es:', style: TextStyle(fontSize: 22)),
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
              onPressed: () {
                print("RESTA 1");
                _contador = _contador - 1;
                setState(() {});
              },
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                print("SUMA 1");
                _contador = _contador + 1;
                setState(() {});
              },
            ),
          ],
        ));
  }
}
