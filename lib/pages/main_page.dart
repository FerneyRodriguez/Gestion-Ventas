import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Manejo del minimercado'),
      ),
      body: const Center(
        child: Text('Empezar con el manejo de los sistemas'),
      ),
    );
  }
}