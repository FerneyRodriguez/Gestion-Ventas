import 'package:flutter/material.dart';

class PrincipalButton extends StatelessWidget {

  final String textoDentro;
  final Color colorBoton;
  final Size dimesiones;
  final Function()? oprimir;


  const PrincipalButton({
    super.key,
    required this.textoDentro,
    required this.colorBoton,
    required this.dimesiones,
    required this.oprimir
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: oprimir,
      style: ElevatedButton.styleFrom(
        minimumSize: dimesiones,
        backgroundColor: colorBoton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))
        )
      ),
      child: Text(textoDentro, style: TextStyle(fontSize: 20, color: Colors.white),)
    );
  }
}