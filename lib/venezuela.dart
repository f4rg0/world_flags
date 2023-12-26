import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_flags/styles.dart';
class Venezuela extends StatefulWidget {
  const Venezuela({super.key});
  @override
  State<Venezuela> createState() => _VenezuelaState();
}

class _VenezuelaState extends State<Venezuela> {
  List<String> mapPiece = [
    "w.png",
    "g.png",
    "r.png"
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Texto('World Flags'),),
               Image.asset('assets/flags/m.png',width: 200, ),
            const Text('Ordena la bandera en el orden correcto:'),
            const Text('Arrange the flag in the correct order:'),
            const Gap(40),
            Container(
              color:Colors.amberAccent,
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
            )
          ],
      
        ),
      ),
    );
  }
}