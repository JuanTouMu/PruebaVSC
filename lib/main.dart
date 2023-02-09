import 'package:flutter/material.dart';
import 'package:tourino_muxi_juan_pmdm02_tarea/Pantallas/HomePage.dart';

void main() {
  runApp(const RutesApp());
}

class RutesApp extends StatelessWidget {
  const RutesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
