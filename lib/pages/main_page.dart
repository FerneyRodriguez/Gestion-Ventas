import 'package:flutter/material.dart';
import 'package:ordenado/pages/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  // * Consulta principal
  final valorStreams = Supabase.instance.client
      .from('usuario')
      .stream(primaryKey: ['rol_usuario']);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult:
          (didPop, result) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          ), // Con esta propiedad permite ir hacia atrás sin que se cierre la aplicación
      child: Scaffold(
        appBar: AppBar(title: Text('Manejo de inventario'), centerTitle: true),
        body: Column(
          children: [
            ConstruirDatos(
              valorStreams: valorStreams,
              runtimeType: runtimeType,
            ),
          ],
        ),
      ),
    );
  }
}

// * La construcción de los datos obtenidos
class ConstruirDatos extends StatelessWidget {
  const ConstruirDatos({
    super.key,
    required this.valorStreams,
    required this.runtimeType,
  });

  final SupabaseStreamFilterBuilder valorStreams;
  @override
  final Type runtimeType;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: valorStreams,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Text('No hay valor de momento');
        }

        final productos = snapshot.data!;

        return Center(
          child: Container(
            color: Colors.amber,
            width: 550,
            height: 500,
            child: ListView.builder(
              itemCount: productos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                    child: Container(
                      color: Colors.blueAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Nombre: ${productos[index]['nombre']}"),
                          Text("Contraseña: ${productos[index]['contraseña']}"),
                          Text("Rol: ${productos[index]['rol_usuario']}"),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
