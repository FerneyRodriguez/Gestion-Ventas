import 'package:flutter/material.dart';

class InputUser extends StatelessWidget {
  
  final TextEditingController controller;
  final String textoAyuda;
  final bool textoOscuro;
  
  const InputUser({
    super.key,
    required this.controller,
    required this.textoAyuda,
    required this.textoOscuro,
  });  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: controller,
        obscureText: textoOscuro,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black)
          ),
          hintText: textoAyuda
        ),
      ),
    );
  }
}