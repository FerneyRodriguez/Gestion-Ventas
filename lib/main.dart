import 'package:flutter/material.dart';
import 'package:ordenado/pages/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// * Extrayendo llaves
  
  final valorUrl = const String.fromEnvironment('URL_PROYECT');
  final valorAnon = const String.fromEnvironment('ANON');

//  * Conectar con supabase
void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: valorUrl,
    anonKey: valorAnon
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login()
    );
  }
}