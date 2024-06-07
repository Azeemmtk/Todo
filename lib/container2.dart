import 'package:flutter/material.dart';
import 'package:internship01/services/service.dart';

class ncontainer extends StatelessWidget {
  const ncontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print(Trueind);
    return ListView.builder(
      itemCount: Trueind.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              width: 360,
              height: 90,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      Trueind[index]['title'],
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(147, 149, 211, 1)),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Text(Trueind[index]['subtitle']),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            )
          ],
        );
      },
    );
  }
}
