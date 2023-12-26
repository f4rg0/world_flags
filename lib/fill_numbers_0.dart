import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:world_flags/styles.dart';




class Fill extends StatefulWidget {
  @override
  _FillState createState() => _FillState();
}

class _FillState extends State<Fill> {
  TextEditingController _textController = TextEditingController();
List<String> mapPiece = [
    "w.png",
    "g.png",
    "r.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
          Image.asset('assets/images/TM.png'),
          Container(
              color:Colors.orange,
              width: MediaQuery.of(context).size.width * 0.7,
              height: 150,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: mapPiece.map(
                (e) => Draggable<String>(
                  data: e,
                  feedback: Material(
                    child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                        child: Image.asset(
                          'assets/flags/$e',
                        width: 50,
                        ),
                      )
                  ),
                  childWhenDragging: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue.withOpacity(0.2),
                  ),
                  child: DragTarget<String>(
                    builder: (BuildContext context, List<String?> candidateData, List<dynamic> rejectedData) {
                      return Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                        child: Image.asset(
                          'assets/flags/$e',
                        width: 50,
                        ),
                      );
                    },
                    onWillAccept: (data) => true,
                    onAccept: (data) {
                      setState(() {
                        int currentIndex = mapPiece.indexOf(e);
                        int newIndex = mapPiece.indexOf(data);
                        mapPiece[currentIndex] = data;
                        mapPiece[newIndex] = e;
                      });
                    },
                  ),
                ),
              )
              .toList(),
              )
            ),



           const Gap(30),
            Texto('Escribe Mexico'),
            const Gap(30),
            
               
                const Gap(30),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: TextField(
                    controller: _textController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(contentPadding: 
                      EdgeInsets.symmetric(vertical: 
                                10.0, horizontal: 10.0),
                      hintText: '"México"',
                      border: OutlineInputBorder(),
                    ),
                    style: const TextStyle(fontSize: 20.0,),
                    onChanged: (text) {
                      if (text.toLowerCase() == 'mexico') {
                        // La palabra es correcta, muestra el AlertDialog
                        _showAlertDialog();
                      }
                    },
                  ),
                ),
              
       
            // ElevatedButton(
            //         style: Styles.button_style,
            //         onPressed: () {
            //           Navigator.of(context).pushNamed('Contenido');
            //         },
            //         child: Lottie.asset('assets/lotties/homered.json',
            //           width: 10,
            //           height: 10,
            //         ),
            //       ),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logrado'),
          content: const Text('¡Felicidades!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('lobby');
              },
              child: const Text('Vamos por el siguiente'),
            ),
          ],
        );
      },
    );
  }
}



