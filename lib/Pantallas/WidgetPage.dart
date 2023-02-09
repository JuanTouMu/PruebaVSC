import 'package:flutter/material.dart';

class WidgetPage extends StatelessWidget {
  const WidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle estilo = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 30),
        backgroundColor: Colors.redAccent);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text(
            'Widget Principal',
            style: TextStyle(fontSize: 30),
          )),
      body: Center(
        child: ElevatedButton(
          style: estilo,
          child: const Text('A HomePage'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
