import 'package:flutter/material.dart';
import 'package:ordenado/components/input_user.dart';
import 'package:ordenado/components/principal_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controladorProducto = TextEditingController();

  final controladorCantidad = TextEditingController();

  final controladorPrecioV = TextEditingController();

  String controlValorP = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Venta", style: TextStyle(fontSize: 40)),
              const SizedBox(height: 50),
              InputUser(
                controller: controladorProducto,
                textoAyuda: 'Producto id',
                textoOscuro: false,
              ),
              const SizedBox(height: 10),
              InputUser(
                controller: controladorCantidad,
                textoAyuda: 'Cantidad',
                textoOscuro: false,
              ),
              const SizedBox(height: 10),
              InputUser(
                controller: controladorPrecioV,
                textoAyuda: 'Precio venta',
                textoOscuro: false,
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PrincipalButton(
                    widgetDentro: Text("Siguiente"),
                    colorBoton: Colors.yellow,
                    dimesiones: Size(150, 50),
                    oprimir: () {
                      setState(() {
                        controlValorP = controladorProducto.text;
                      });
                    },
                  ),
                  PrincipalButton(
                    widgetDentro: Text("Calcular"),
                    colorBoton: Colors.yellow,
                    dimesiones: Size(150, 50),
                    oprimir: () {},
                  ),
                ],
              ),
              // Evaluar sí, existe valor mostrar sino esperar
              controlValorP.isEmpty
                  ? Text('Esperando un valor...')
                  : Text('Producto id: $controlValorP'),
            ],
          ),
        ),
      ),
    );
  }
}
