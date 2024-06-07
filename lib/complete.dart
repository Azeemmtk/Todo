import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship01/container2.dart';

class completed extends StatefulWidget {
  const completed({super.key});

  @override
  State<completed> createState() => _addState();
}

class _addState extends State<completed> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(child: ncontainer()),
          // SizedBox(
          //   height: 10,
          // ),
          // ncontainer(),
          // SizedBox(
          //   height: 10,
          // ),
          // ncontainer(),
        ],
      ),
    );
  }
}
