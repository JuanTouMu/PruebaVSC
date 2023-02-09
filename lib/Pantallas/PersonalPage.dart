// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:tourino_muxi_juan_pmdm02_tarea/Pantallas/HomePage.dart';

class PersonalPage extends StatelessWidget {
  final nom = TextEditingController();
  final cogn = TextEditingController();
  final correo = TextEditingController();
  final contra = TextEditingController();

  final Persona? persona;
  PersonalPage({super.key, this.persona});
  @override
  Widget build(BuildContext context) {
    final ButtonStyle estiloBoton =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30));
    const TextStyle estiloTexto =
        TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(title: const Text('Touriño'), titleTextStyle: estiloTexto),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //campos de inputs de texto que por defecto muestran una instancia de Persona
            // y al mismo tiempo recogen datos para una nueva instancia
            TextField(
              style: estiloTexto,
              controller: nom,
              decoration: InputDecoration(
                  hintText: 'Nom: ${persona?.nom}', hintStyle: estiloTexto),
            ),
            TextField(
              style: estiloTexto,
              controller: cogn,
              decoration: InputDecoration(
                  hintText: 'Cognome: ${persona?.cognome}',
                  hintStyle: estiloTexto),
            ),
            TextField(
              style: estiloTexto,
              controller: correo,
              decoration: InputDecoration(
                  hintText: 'Mail: ${persona?.mail}', hintStyle: estiloTexto),
            ),
            TextField(
              style: estiloTexto,
              controller: contra,
              decoration: InputDecoration(
                  hintText: 'Contrasenya: ${persona?.contrasenya}',
                  hintStyle: estiloTexto),
            ),
            ElevatedButton(
              style: estiloBoton,
              child: const Text('A HomePage'),
              onPressed: () {
                //nueva instancia de persona
                final Persona persona2 =
                    Persona(nom.text, cogn.text, correo.text, contra.text);
                // impresión de prueba
                print(persona2.toString());
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => HomePage(
                            persona2: persona2,
                          )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Persona {
  String? nom;
  String? cognome;
  String? mail;
  String? contrasenya;
//constructor
  Persona(this.nom, this.cognome, this.mail, this.contrasenya);
// toString para pruebas
  @override
  String toString() {
    return 'Su nombre es $nom $cognome y su correo electrónico es $mail, con la contraseña $contrasenya';
  }
}
