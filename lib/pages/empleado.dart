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
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PrincipalButton(
                widgetDentro: Text('Venta'),
                colorBoton: Colors.yellow,
                dimesiones: Size(150, 100),
                oprimir: () {},
              ),
              PrincipalButton(
                widgetDentro: Text('Producto'),
                colorBoton: Colors.yellow,
                dimesiones: Size(150, 100),
                oprimir: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
