import 'package:flutter/material.dart';
import 'package:ordenado/components/principal_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 400,
              color: Colors.amber,
              child: Text("La facturación esta aqui"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrincipalButton(
                  widgetDentro: Text("Venta", style: TextStyle(fontSize: 20.0)),
                  colorBoton: Colors.yellow,
                  dimesiones: Size(150, 100),
                  oprimir: () {},
                ),
                PrincipalButton(
                  widgetDentro: Text(
                    "Producto",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  colorBoton: Colors.yellow,
                  dimesiones: Size(150, 100),
                  oprimir: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
