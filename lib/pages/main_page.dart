import 'package:flutter/material.dart';
import 'package:ordenado/pages/login.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  final valorEnv = const String.fromEnvironment('API_KEY');


  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),)),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Manejo del minimercado'),
        ),
        body: Center(
          child: Text('Valor variable de entorno: $valorEnv'),
        ),
      ),
    );
  }
}