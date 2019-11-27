import 'package:flutter/material.dart';

double h = 200;
double w = 200;

void main() {
  runApp(
    MyApp(),
  );
} // main

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ResizeImage(height: h, width: w),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.minimize),
                  color: Colors.redAccent,
                  onPressed: () {
                    setState(() {
                      w = w - 20;
                      h = h - 20;
                    });
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.redAccent,
                  onPressed: () {
                    setState(() {
                      w = w + 20;
                      h = h + 20;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ResizeImage extends StatelessWidget {
  final double height;
  final double width;
  ResizeImage({this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return Image.asset('images/gem.png', height: height, width: width);
  }
}
