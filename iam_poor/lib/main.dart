import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber[400],
      appBar: AppBar(
        title: Center(
          child: Text("I am Poor"),
        ),
        backgroundColor: Colors.amber[600],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/poor2.png'),
        ),
      ),
    ),
  ));
}
