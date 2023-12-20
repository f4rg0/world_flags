


import 'package:flutter/material.dart';
import 'package:world_flags/mexico.dart';
import 'package:world_flags/lobby.dart';
import 'package:world_flags/menu.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.orange),
      initialRoute: 'lobby',
      routes: {
        // test pages
        'lobby': (context) => const lobby(),
        'Menu': (context) => const Menu(),
        'mex': (context) => const Mexico(),
      
        
      },
    );
  }
}