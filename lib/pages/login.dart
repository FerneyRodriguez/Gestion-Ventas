import 'package:flutter/material.dart';
import 'package:ordenado/components/input_user.dart';
import 'package:ordenado/components/principal_button.dart';

class Login extends StatelessWidget {
  Login({super.key});

  // ? Controlador del texto input.
  final controladorUsuario = TextEditingController();
  final controladorContrasena = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade200,
        body: SingleChildScrollView( // ! Con el scrollview no aparece el overflow
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 150,),
                const Icon(Icons.shield, size: 100,),
                const SizedBox(height: 50,),
                const Text('Inicio de sesión', style: TextStyle(fontSize: 24)),
                const SizedBox(height: 50,),
                InputUser(
                  controller: controladorUsuario,
                  textoAyuda: 'Usuario',
                  textoOscuro: false,
                ),
                const SizedBox(height: 20,),
                InputUser(
                  controller: controladorContrasena,
                  textoAyuda: 'Contraseña',
                  textoOscuro: true,
                ),
                const SizedBox(height: 20,),
                const Text('¿Olvidaste la contraseña?', style: TextStyle(fontSize: 18),),
                const SizedBox(height: 20,),
                PrincipalButton(
                  oprimir: () => debugPrint('Oprimiendo boton'),
                  textoDentro: 'Ingresar',
                  colorBoton: Colors.black,
                  dimesiones: Size(250, 50),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text('¿No tienes cuenta?'),
                    Padding( // * Puse el padding para ayudar a que se vea un poco más centrado
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: () => debugPrint('Ingresando para crear cuenta'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey.shade200,
                          elevation: 0
                        ),
                        child: Text('Ingresa aquí', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black), textAlign: TextAlign.center,)
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}