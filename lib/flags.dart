import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FlagData {
  final String imagePath;
  final String name;

  FlagData({required this.imagePath, required this.name});
}

class Flags extends StatefulWidget {
  const Flags({Key? key}) : super(key: key);

  @override
  State<Flags> createState() => _FlagsState();
}

class _FlagsState extends State<Flags> {
  List<FlagData> acceptedImages = [];
  static double sides = 50;

  // Lista del orden correcto de las imágenes
  final List<String> correctOrder = [
    'assets/flags/g.png',
    'assets/flags/w.png',
    'assets/flags/r.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Banderas del mundo'),
              const Text('World Flags'),
              Image.asset(
                'assets/flags/m.png',
                width: 200,
              ),
              const Text('Bandera de México'),
              const Text('Ordena la bandera en el orden correcto:'),
              const Text('Arrange the flag in the correct order:'),
              const Gap(40),
              Container(
                width: double.infinity,
                color: Colors.grey,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            acceptedImages.removeLast();
                          });
                        },
                        icon: const Icon(Icons.undo),
                      ),
                    ),
                    const Gap(20),
                    Chip(
                      color: MaterialStateProperty.all(Colors.blueGrey),
                      label: DragTarget<FlagData>(
                        builder: (context, candidateData, rejectedData) =>
                            acceptedImages.isEmpty
                                ? const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: SizedBox(
                                        height: 50,
                                        child: Text(
                                            'Form a flag here by dragging and dropping.'),
                                      ),
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: acceptedImages
                                          .map<Widget>(
                                            (data) => Image.asset(
                                              data.imagePath,
                                              width: 50,
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                        onAccept: (data) {
                          if (acceptedImages.length < 3) {
                            setState(() {
                              acceptedImages.add(data);
                              // Verificar si el orden es correcto
                              if (acceptedImages.length == 3 &&
                                  acceptedImages.every((image) =>
                                      image.imagePath ==
                                      correctOrder[acceptedImages.indexOf(image)])) {
                                // Mostrar el pop-up si el orden es correcto
                                _showSuccessPopup(context);
                              } else if (acceptedImages.length == 3) {
                                // Mostrar el pop-up para volver a intentar
                                _showRetryPopup(context);
                              }
                            });
                          }
                        },
                      ),
                    ),
                    const Gap(40),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Draggable<FlagData>(
                              data: FlagData(
                                imagePath: 'assets/flags/w.png',
                                name: 'White',
                              ),
                              feedback: Image.asset(
                                'assets/flags/w.png',
                                width: sides,
                              ),
                              childWhenDragging: Container(
                                width: sides,
                                height: sides,
                                color: Colors.blueGrey,
                              ),
                              child: Image.asset(
                                'assets/flags/w.png',
                                width: sides,
                              ),
                            ),
                            const Gap(20),
                            Draggable<FlagData>(
                              data: FlagData(
                                imagePath: 'assets/flags/r.png',
                                name: 'Red',
                              ),
                              feedback: Image.asset(
                                'assets/flags/r.png',
                                width: sides,
                              ),
                              childWhenDragging: Container(
                                width: sides,
                                height: sides,
                                color: Colors.blueGrey,
                              ),
                              child: Image.asset(
                                'assets/flags/r.png',
                                width: sides,
                              ),
                            ),
                            const Gap(20),
                            Draggable<FlagData>(
                              data: FlagData(
                                imagePath: 'assets/flags/g.png',
                                name: 'Green',
                              ),
                              feedback: Image.asset(
                                'assets/flags/g.png',
                                width: sides,
                              ),
                              childWhenDragging: Container(
                                width: sides,
                                height: sides,
                                color: Colors.blueGrey,
                              ),
                              child: Image.asset(
                                'assets/flags/g.png',
                                width: sides,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }

  // Método para mostrar el pop-up de éxito
  void _showSuccessPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('¡Bien hecho!'),
          content: const Text('Has ordenado las banderas correctamente.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('lobby');
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  // Método para mostrar el pop-up de volver a intentar
  void _showRetryPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('¡Error!'),
          content: const Text('Las banderas no están en el orden correcto. Vuelve a intentarlo.'),
          actions: [
            TextButton(
              onPressed: () {
               // Navigator.of(context).pop();
                Navigator.of(context).pushNamed('ban');
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// class FlagData {
//   final String imagePath;
//   final String name;

//   FlagData({required this.imagePath, required this.name});
// }

// class Flags extends StatefulWidget {
//   const Flags({Key? key}) : super(key: key);

//   @override
//   State<Flags> createState() => _FlagsState();
// }

// class _FlagsState extends State<Flags> {
//   List<FlagData> acceptedImages = [];
//   static double sides = 50;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const Text('Banderas del mundo'),
//               const Text('World Flags'),
//               Image.asset(
//                 'assets/flags/m.png',
//                 width: 200,
//               ),
//               const Text('Bandera de México'),
//               const Text('Ordena la bandera en el orden correcto:'),
//               const Text('Arrange the flag in the correct order:'),
//               const Gap(40),
//               Container(
//                 width: double.infinity,
//                 color: Colors.grey,
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Align(
//                       alignment: Alignment.topRight,
//                       child: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               acceptedImages.removeLast();
//                             });
//                           },
//                           icon: const Icon(Icons.undo)),
//                     ),
//                     const Gap(20),
//                     Chip(
//                       color: MaterialStateProperty.all(Colors.blueGrey),
//                       label: DragTarget<FlagData>(
//                         builder: (context, candidateData, rejectedData) =>
//                             acceptedImages.isEmpty
//                                 ? const Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Center(
//                                       child: SizedBox(
//                                         height: 50,
//                                         child: Text(
//                                             'Form a flag here by dragging and dropping.'),
//                                       ),
//                                     ),
//                                   )
//                                 : Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: acceptedImages
//                                           .map<Widget>(
//                                             (data) => Image.asset(
//                                               data.imagePath,
//                                               width: 50,
//                                             ),
//                                           )
//                                           .toList(),
//                                     ),
//                                   ),
//                         onAccept: (data) {
//                            if (acceptedImages.length < 3) {
//                           setState(() {
//                             acceptedImages.add(data);
//                           });
//                            }
//                         },
//                       ),
//                     ),
//                     const Gap(40),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Center(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Draggable<FlagData>(
//                               data: FlagData(
//                                 imagePath: 'assets/flags/w.png',
//                                 name: 'White',
//                               ),
//                               feedback: Image.asset(
//                                 'assets/flags/w.png',
//                                 width: sides,
//                               ),
//                               childWhenDragging: Container(
//                                 width: sides,
//                                 height: sides,
//                                 color: Colors.blueGrey,
//                               ),
//                               child: Image.asset(
//                                 'assets/flags/w.png',
//                                 width: sides,
//                               ),
//                             ),
//                             const Gap(20),
//                             Draggable<FlagData>(
//                               data: FlagData(
//                                 imagePath: 'assets/flags/r.png',
//                                 name: 'Red',
//                               ),
//                               feedback: Image.asset(
//                                 'assets/flags/r.png',
//                                 width: sides,
//                               ),
//                               childWhenDragging: Container(
//                                 width: sides,
//                                 height: sides,
//                                 color: Colors.blueGrey,
//                               ),
//                               child: Image.asset(
//                                 'assets/flags/r.png',
//                                 width: sides,
//                               ),
//                             ),
//                             const Gap(20),
//                             Draggable<FlagData>(
//                               data: FlagData(
//                                 imagePath: 'assets/flags/g.png',
//                                 name: 'Green',
//                               ),
//                               feedback: Image.asset(
//                                 'assets/flags/g.png',
//                                 width: sides,
//                               ),
//                               childWhenDragging: Container(
//                                 width: sides,
//                                 height: sides,
//                                 color: Colors.blueGrey,
//                               ),
//                               child: Image.asset(
//                                 'assets/flags/g.png',
//                                 width: sides,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const Gap(20),
              
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

