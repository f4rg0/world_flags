


import 'package:flutter/material.dart';
import 'package:world_flags/1.dart';
import 'package:world_flags/2.dart';
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
      initialRoute: '1',
      routes: {
        // test pages
        'lobby': (context) => const lobby(),
        'Menu': (context) => const Menu(),
        'mex': (context) => const Mexico(),
         '1': (context) =>  MyHomePage(),
      '2': (context) =>  DragAndDropScreen(),
        
      },
    );
  }
}