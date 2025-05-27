import 'package:flutter/material.dart';

class PrincipalButton extends StatelessWidget {
  final Widget widgetDentro;
  final Color colorBoton;
  final Size dimesiones;
  final Function()? oprimir;

  const PrincipalButton({
    super.key,
    required this.widgetDentro,
    required this.colorBoton,
    required this.dimesiones,
    required this.oprimir,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: oprimir,
      style: ElevatedButton.styleFrom(
        minimumSize: dimesiones,
        backgroundColor: colorBoton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      child: widgetDentro,
    );
  }
}
