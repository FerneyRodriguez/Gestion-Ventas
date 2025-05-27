import 'package:flutter/material.dart';
import 'package:ordenado/components/principal_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrincipalButton(
                  widgetDentro: Text('Venta', style: TextStyle(fontSize: 22.0)),
                  colorBoton: Colors.yellow,
                  dimesiones: Size(150, 100),
                  oprimir: () {},
                ),
                PrincipalButton(
                  widgetDentro: Text(
                    'Producto',
                    style: TextStyle(fontSize: 22.0),
                  ),
                  colorBoton: Colors.yellow,
                  dimesiones: Size(150, 100),
                  oprimir: () {},
                ),
              ],
            ),
            const SizedBox(height: 55),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrincipalButton(
                  widgetDentro: Text(
                    'Finanzas',
                    style: TextStyle(fontSize: 22.0),
                  ),
                  colorBoton: Colors.yellow,
                  dimesiones: Size(150, 100),
                  oprimir: () {},
                ),
                PrincipalButton(
                  widgetDentro: Text(
                    'Registro',
                    style: TextStyle(fontSize: 22.0),
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
