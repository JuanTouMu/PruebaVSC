import 'package:flutter/material.dart';
import 'package:tourino_muxi_juan_pmdm02_tarea/Pantallas/PersonalPage.dart';
import 'package:tourino_muxi_juan_pmdm02_tarea/Pantallas/WidgetPage.dart';

class HomePage extends StatelessWidget {
  //controlador del campo de texto
  final nomCognome = TextEditingController();
  final Persona? persona2;
  HomePage({super.key, this.persona2});
  //instancia de Persona
  final persona = Persona('Juan', 'Touriño', 'mail@mail.com', '1234');
  @override
  Widget build(BuildContext context) {
    //estilos para los botones y para los campos de texto
    final ButtonStyle estiloBoton = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 30),
        backgroundColor: Colors.lightGreen);
    const TextStyle estiloTexto =
        TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          'SPPMMD',
          style: estiloTexto,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, //centrar botones
          children: <Widget>[
            if (persona2?.nom != null &&
                persona2?.cognome != null) //condicional para evitar 'null null'
              TextField(
                controller: nomCognome,
                decoration: InputDecoration(
                    hintText: '${persona2?.nom} ${persona2?.cognome}',
                    hintStyle: estiloTexto),
              ),
            ElevatedButton(
              style: estiloBoton,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PersonalPage(
                    persona: persona,
                  ),
                ));
              },
              child: const Text('A PersonalPage'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: estiloBoton,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const WidgetPage(),
                ));
              },
              child: const Text('A WidgetPage'),
            ),
          ],
        ),
      ),
    );
  }
}
