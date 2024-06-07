import 'package:flutter/material.dart';
import 'package:internship01/Home.dart';
import 'package:internship01/custombutton.dart';
import 'package:internship01/custometextf.dart';
import 'package:internship01/services/service.dart';

class add extends StatefulWidget {
  add({
    super.key,
  });

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  TextEditingController _titlecontrol = TextEditingController();
  TextEditingController _detailscontroller = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool IsCheched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(147, 149, 211, 1),
          title: const Text(
            "Add Task",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          )),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Customtextfield(
                hint: 'Title',
                controler: _titlecontrol,
                warning: 'Enter the title',
              ),
              const SizedBox(
                height: 30,
              ),
              Customtextfield(
                hint: 'Details',
                controler: _detailscontroller,
                warning: 'Enter the details',
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                width: 300,
                height: 45,
                child: custombutton(
                    text: 'Add',
                    ontap: () {
                      if (_formkey.currentState?.validate() ?? false) {
                        adddata(
                            a: _titlecontrol.text, b: _detailscontroller.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
