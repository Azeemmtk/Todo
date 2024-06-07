import 'package:flutter/material.dart';
import 'package:internship01/Home.dart';
import 'package:internship01/custombutton.dart';
import 'package:internship01/custometextf.dart';
import 'package:internship01/services/service.dart';

class edit extends StatefulWidget {
  edit({super.key, this.title, this.details, this.indux});

  String? title;
  String? details;
  int? indux;

  @override
  State<edit> createState() => _addState();
}

class _addState extends State<edit> {
  TextEditingController _titlecontroler = TextEditingController();
  TextEditingController _subtitlecontroler = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  void initState() {
    if (widget.title == null) {
      _titlecontroler.text = 'No data';
    }
    if (widget.details == null) {
      _subtitlecontroler.text = 'No data';
    }

    _titlecontroler.text = widget.title.toString();
    _subtitlecontroler.text = widget.details.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(147, 149, 211, 1),
          title: const Text(
            "Edit Task",
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
                controler: _titlecontroler,
                warning: 'Enter title',
              ),
              const SizedBox(
                height: 30,
              ),
              Customtextfield(
                hint: 'Details',
                controler: _subtitlecontroler,
                warning: 'Enter Details',
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                      width: 150,
                      height: 45,
                      child: custombutton(
                        text: 'update',
                        ontap: () {
                          if (_formkey.currentState?.validate() ?? false) {
                            editdata(
                                title: _titlecontroler.text,
                                subtitle: _subtitlecontroler.text,
                                indux: widget.indux!);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ));
                          }
                        },
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: 150,
                      height: 45,
                      child: custombutton(
                        text: 'Cancel',
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ));
                        },
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
