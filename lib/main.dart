// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, unnecessary_new, camel_case_types

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BG Changer',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Random Background'),
          ),
          body: HomePage(),
        ));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.blue,
    Colors.black,
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.orange,
    Color.fromARGB(255, 255, 230, 155),
  ];

  var currentColor = Colors.white;

  setRandomColor() {
    var random = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[random];
    });
  }

  var currentColorButton = Colors.black;

  setRandomButtonColor() {
    var random = Random().nextInt(colors.length);
    setState(() {
      currentColorButton = colors[random];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            //increease the button size

            backgroundColor: currentColorButton,
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            'Change Color',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            setRandomColor();
            setRandomButtonColor();
          },
        ),
      ),
    );
  }
}
