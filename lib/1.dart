import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = ["Image 1", "Image 2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drag and Drop Images"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Draggable<String>(
            data: images[0],
            child: ImageWidget(image: images[0]),
            feedback: ImageWidget(image: images[0], isDragging: true),
            childWhenDragging: Container(), // You can customize the appearance when dragging
          ),
          Draggable<String>(
            data: images[1],
            child: ImageWidget(image: images[1]),
            feedback: ImageWidget(image: images[1], isDragging: true),
            childWhenDragging: Container(),
          ),
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  final String image;
  final bool isDragging;

  ImageWidget({required this.image, this.isDragging = false});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isDragging ? 0.5 : 1.0,
      child: Image.asset(
        // Replace this with your image source
        "assets/flags/w.png",
        width: 100.0,
        height: 100.0,
        fit: BoxFit.cover,
      ),
    );
  }
}

