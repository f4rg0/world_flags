// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'styles.dart';

class lobby extends StatelessWidget {
  const lobby({super.key});

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
                  
                 Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: Image.asset('assets/images/TM.png',width: 400, )),
                      
                    ],
                  ),
                  
                
                   SizedBox(
                    width: double.infinity,
                     child: ElevatedButton(
                      style: Styles.button_style,
                      onPressed: () {
                        Navigator.of(context).pushNamed('Menu');
                      },
                      child: Lottie.asset('assets/lotties/mundo.json',
                      
                      ),
                                     ),
                   ),
                  
                 
                   
                    
                ],
              ),
            ),
          ),
        ));
  }}