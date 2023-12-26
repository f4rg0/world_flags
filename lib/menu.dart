// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:gap/gap.dart';

import 'styles.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(60),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset('assets/lotties/flags.json', width: 100),
                      Lottie.asset('assets/lotties/mundo.json', width: 100),
                      Lottie.asset('assets/lotties/flags.json', width: 100),
                    ],
                  ),
                Gap(20),

                   SizedBox(
                    width: double.infinity,
                     child: ElevatedButton(
                      style: Styles.button_style,
                      onPressed: () {
                        Navigator.of(context).pushNamed('mexi');
                      },
                      child: Image.asset('assets/images/america.png', width: 120,
                      
                      ),
                                     ),
                   ),
                  
                 
                   
                    
                ],
              ),
            ),
          ),
        ));
  }}