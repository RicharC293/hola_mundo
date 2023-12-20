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

// Scaffold
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('El numero es:'),
            Text('5'),
          ],
        ),
      ),
      // bottomNavigationBar: ,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print("SUMA 1");
        },
      ),
      const SizedBox(width: 10,),
      FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print("SUMA 1");
        },
      ),
      ],)
    );
  }
}
