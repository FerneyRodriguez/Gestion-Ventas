import 'package:flutter/material.dart';
import 'package:ordenado/pages/login.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  final valorEnv = const String.fromEnvironment('API_KEY');

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),)), // Con esta propiedad permite ir hacia atrás sin que se cierre la aplicación
      child: Scaffold(
        appBar: AppBar(
          title: Text('Manejo de inventario'),
          centerTitle: true,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: Center(
          child: Text('Valor variable de entorno: $valorEnv'),
        ),
      ),
    );
  }
}