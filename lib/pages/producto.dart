//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Extracción de los datos desde la base
  final valorStreams = Supabase.instance.client
      .from('producto')
      .stream(primaryKey: ['id_producto']);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: valorStreams,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                // Extrayendo los datos
                final producto = snapshot.data!;

                return ListView.builder(
                  itemCount: producto.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Valor: $producto[$index]['categoria']"),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/* 

Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Text(
                            'text $i',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        )


PrincipalButton(
                            widgetDentro: Text("Categoria: $categoriaBase"),
                            colorBoton: Colors.yellow,
                            dimesiones: Size(200, 30),
                            oprimir: () => debugPrint('Funcionando'),
                          ),

CarouselSlider(
              options: CarouselOptions(height: 180.0, enlargeCenterPage: true),
              items:
                  [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return ;
                      },
                    );
                  }).toList(),
            ),




*/
