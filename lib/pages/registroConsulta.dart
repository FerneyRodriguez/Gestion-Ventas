import 'package:flutter/material.dart';
import 'package:ordenado/components/input_user.dart';
import 'package:ordenado/components/principal_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controladorNombre = TextEditingController();
    final controladorRol = TextEditingController();
    final controladorContrasena = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [
            Container(
              width: 200,
              height: 350,
              color: Colors.amber,
              child: Text("La facturación esta aqui"),
            ),
            Text("Registro nuevo", style: TextStyle(fontSize: 24.0)),
            const SizedBox(height: 10),
            InputUser(
              controller: controladorNombre,
              textoAyuda: "Nombre",
              textoOscuro: false,
            ),
            const SizedBox(height: 10),
            InputUser(
              controller: controladorRol,
              textoAyuda: "Rol",
              textoOscuro: false,
            ),
            const SizedBox(height: 10),
            InputUser(
              controller: controladorContrasena,
              textoAyuda: "Contraseña",
              textoOscuro: false,
            ),
            const SizedBox(height: 10),
            PrincipalButton(
              widgetDentro: Text("Registrar"),
              colorBoton: Colors.yellow,
              dimesiones: Size(150, 80),
              oprimir: () {},
            ),
          ],
        ),
      ),
    );
  }
}
