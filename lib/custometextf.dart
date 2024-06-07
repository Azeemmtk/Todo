import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  Customtextfield(
      {super.key,
      required this.hint,
      required this.controler,
      required this.warning});
  String hint;
  String warning;
  TextEditingController controler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controler,
      decoration: InputDecoration(hintText: hint),
      validator: (value) {
        return value == null || value.isEmpty ? warning : null;
      },
    );
  }
}
