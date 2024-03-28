


import 'package:flutter/material.dart';
import 'package:world_flags/1.dart';
import 'package:world_flags/2.dart';
import 'package:world_flags/america_mexico.dart';
import 'package:world_flags/fill_numbers_0.dart';
import 'package:world_flags/flags.dart';
import 'package:world_flags/mexico.dart';
import 'package:world_flags/lobby.dart';
import 'package:world_flags/menu.dart';
import 'package:world_flags/venezuela.dart';




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
      initialRoute: 'ban',
      routes: {
        // test pages
        'lobby': (context) => const lobby(),
        'Menu': (context) => const Menu(),
        // continentes America
        'mex': (context) => const Mexico(),
        '4': (context) =>  const Venezuela(),
         //'5': (context) =>  Argentina(),
         '1': (context) =>  MyHomePage(),
      '2': (context) =>  DragAndDropScreen(),
      'mexico': (context) =>   America_Mexico(),
      'mexi': (context) =>   Fill(),
      'ban': (context) =>   Flags(),
      
     
      //'6': (context) =>  Egipto(),
      //'7': (context) =>  Nigeria(),
        
      },
    );
  }
}