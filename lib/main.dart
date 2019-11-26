import 'package:flutter/material.dart';

int counter = 0;

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[50],
        appBar: AppBar(
          title: Center(
            child: Text(
              "Are You Rich ?",
              style: TextStyle(fontSize: 25),
            ),
          ),
          backgroundColor: Colors.red[700],
        ),
        body: Center(
          child: ResizableImage(h: 300, w: 300),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[500],
          onPressed: button,
          child: Icon(Icons.add),
        ),
      ),
    ),
  );
} // main

void button() {
  counter++;
  print("Button Presses ! $counter times");
} // button

class ResizableImage extends StatelessWidget {
  final double h;
  final double w;
  ResizableImage({this.h, this.w});

  @override
  Widget build(BuildContext context) {
    String path = 'images/gem.png';
    return Image(
      image: AssetImage(path),
      width: w,
      height: h,
    );
  }
}
