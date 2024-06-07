import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship01/add.dart';
import 'package:internship01/edit.dart';
import 'package:internship01/services/service.dart';

class homeee extends StatefulWidget {
  homeee({
    super.key,
  });

  @override
  State<homeee> createState() => _homeeeState();
}

class _homeeeState extends State<homeee> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: Data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 360,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              Data[index]['title'],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(147, 149, 211, 1)),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Text(Data[index]['subtitle'])
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => edit(
                                          indux: index,
                                          title: Data[index]['title'],
                                          details: Data[index]['subtitle'],
                                        ),
                                      ));
                                },
                                icon: const Icon(
                                  Icons.edit_outlined,
                                  color: Color.fromRGBO(147, 149, 211, 1),
                                )),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    deletedata(indux: index);
                                  });
                                },
                                icon: const Icon(CupertinoIcons.delete_solid,
                                    color: Color.fromRGBO(147, 149, 211, 1))),
                            IconButton(
                                onPressed: () {
                                  Data[index] = {
                                    'title': Data[index]['title'],
                                    'subtitle': Data[index]['subtitle'],
                                    'iscompete': true
                                  };
                                  Trueind.add(Data[index]);
                                  setState(() {
                                    deletedata(indux: index);
                                  });
                                },
                                icon: const Icon(
                                    CupertinoIcons.check_mark_circled,
                                    color: Color.fromRGBO(147, 149, 211, 1)))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            );
          },
        )),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => add(),
                    )).then((value) => setState(() {
                      print(value);
                    }));
              },
              child: Icon(Icons.add_circle),
            ),
          ),
        ),
      ],
    );
  }
}
