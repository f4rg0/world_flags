import 'package:flutter/material.dart';



class DragAndDropScreen extends StatefulWidget {
  @override
  _DragAndDropScreenState createState() => _DragAndDropScreenState();
}

class _DragAndDropScreenState extends State<DragAndDropScreen> {
  List<String> images = ['assets/flags/r.png', 'assets/flags/w.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag and Drop'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Draggable<String>(
              data: 'r',
              child: Image.asset(images[0], height: 100, width: 100),
              feedback: Image.asset(images[0], height: 100, width: 100),
              childWhenDragging: Container(),
            ),
            Draggable<String>(
              data: 'w',
              child: Image.asset(images[1], height: 100, width: 100),
              feedback: Image.asset(images[1], height: 100, width: 100),
              childWhenDragging: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
