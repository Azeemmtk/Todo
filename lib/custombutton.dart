import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  custombutton({super.key, required this.text, required this.ontap});

  String text;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(147, 149, 211, 1)),
        onPressed: ontap,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ));
  }
}
