import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


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
      home: const HomeScreen(),
    );
  }
}
