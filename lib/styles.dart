import 'package:flutter/material.dart';

Color primary = const Color(0xFF904CCF);
Color secondary = const Color.fromARGB(255, 178, 97, 212);

class Styles {
  static Color primaryColor = primary;
  static Color secondaryColor = secondary;

  // ignore: non_constant_identifier_names
  static var color_transparente =
      MaterialStateProperty.all<Color>(Colors.transparent);

  // ignore: non_constant_identifier_names
  static var color_blanco = MaterialStateProperty.all<Color>(Colors.white);

  // ignore: non_constant_identifier_names
  static var button_style = ButtonStyle(
      elevation: MaterialStateProperty.all<double>(0),
      shadowColor: Styles.color_transparente,
      backgroundColor: Styles.color_transparente);

  static var buttonStyle = ElevatedButton.styleFrom(
    elevation: 0,
    shadowColor: Colors.transparent,
    // backgroundColor: Colors.transparent,
  );
}

// ignore: non_constant_identifier_names
Widget Texto(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
  );
}
