// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_flags/styles.dart';

class Mexico extends StatelessWidget {
  const Mexico({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(60),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
               
                  Texto('World Flags'),
                  
                 
                 Image.asset('assets/flags/m.png',width: 200, ),
                 Texto('Bandera de México'),
                   //  Arrange the Mexican flag correctly, when ordering it correctly send a "well done" message
                 const Text('Ordena la bandera en el orden correcto:'),
                 const Text('Arrange the flag in the correct order:'),
                  const Gap(40),
                  Container(
                    color: Colors.amberAccent,
                          width: double.infinity,
                          height: 100,
                          child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Draggable( feedback: Image.asset('assets/flags/w.png',width: 50, ),
                        childWhenDragging: Container(
                          width: 50,
                          height: 50,
                          color: Colors.blueGrey,
                        ), 
                        child: Image.asset('assets/flags/w.png',width: 50, ),),
                         const Gap(20),
                        Draggable( feedback: Image.asset('assets/flags/g.png',width: 50, ),
                        childWhenDragging: Container(
                          width: 50,
                          height: 50,
                          color: Colors.blueGrey,
                        ), 
                        child: Image.asset('assets/flags/g.png',width: 50, ),),
                         const Gap(20),
                        Draggable( feedback: Image.asset('assets/flags/r.png',width: 50, ), 
                        childWhenDragging: Container(
                          width: 50,
                          height: 50,
                          color: Colors.blueGrey,
                        ), 
                        child: Image.asset('assets/flags/r.png',width: 50, ),),

                        
                          const Gap(20),
                       
                      ],
                    ),),
                 
                  const Gap(20),
                //  Arrange the Mexican flag correctly, when ordering it correctly send a "well done" message
                  
                 
               
                  //  SizedBox(
                  //   width: double.infinity,
                  //    child: ElevatedButton(
                  //     style: Styles.button_style,
                  //     onPressed: () {
                  //       Navigator.of(context).pushNamed('MenuWeb');
                  //     },
                  //     child: Lottie.asset('assets/images/lotties/homered.json', width: 50,
                      
                  //     ),
                  //                    ),
                  //  ),
                  
                 
                   
                    
                ],
              ),
            ),
          ),
        ));
  }}
