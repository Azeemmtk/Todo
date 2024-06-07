import 'package:flutter/material.dart';
import 'package:internship01/Homesub.dart';
import 'package:internship01/complete.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedindex = 0;

  List<Widget> pages = [homeee(), completed()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(214, 215, 239, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(147, 149, 211, 1),
        title: const Text(
          "TODO APP",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_today),
          )
        ],
      ),
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "All",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: "Completed",
          ),
        ],
      ),
    );
  }
}
