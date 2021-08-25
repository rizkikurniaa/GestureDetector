import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture Detector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int numTaps = 0;
  int numDoubleTaps = 0;
  int numLongPress = 0;
  final double boxSize = 150.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              numTaps++;
            });
          },
          onDoubleTap: () {
            setState(() {
              numDoubleTaps++;
            });
          },
          onLongPress: () {
            setState(() {
              numLongPress++;
            });
          },
          child: Container(
            width: boxSize,
            height: boxSize,
            decoration: BoxDecoration(color: Colors.red),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Taps: $numTaps - Double Taps: $numDoubleTaps - Long Press: $numLongPress',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
