import 'package:flutter/material.dart';
import 'package:internship01/Home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Home(),
    ),
  );
}
