import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({super.key, this.fontSize = 30});

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text('El numero es:', style: TextStyle(fontSize: fontSize));
  }
}
